<template>
  <section id="section_2">
    <div class="container-fluid">
      <div class="row">
        <div
          id="DRB_map_c2p1"
          class="col-xl-6 col-md-6 col-xs-12"
        />
        <!-- <div class="col-md-1"></div> -->
        <div
          id="barChart_c2p1"
          class="col-xl-6 col-md-6 col-xs-12"
        >
          <br>
          <p class="narrative_text">
            At first glance, it appears we have a lot of temperature information in the basin. 
            The USGS has been monitoring temperature in the DRB since XXXX, and since then has 
            amassed over XXXXX site-days of temperature measurements.
          </p>
          <p class="narrative_text">
            Since 2017, an uptick in temperature monitoring can be attributed to the USGS’s Next Generation Water 
            Observing Systems (NGWOS); NGWOS is a targeted effort in the basin to develop and 
            apply new monitoring techniques for a wide range of water characteristics. Temperature 
            is one of the most widely measured water characteristics in the U.S. – temperature 
            can now be monitored by boat, by camera, by drone, by cable, by satellite, by sensor, 
            or by the tried and true method of a human sticking a thermometer in the water.
          </p>
          <p class="narrative_text">
            But don’t let first impressions fool you. Most temperature records are concentrated at a few sites across the basin.
          </p>
        </div>
      </div>
      <div class="row">
        <div
          id="DRB_map_c2p2"
          class="col-xl-6 col-md-6 col-xs-12"
        />
        <div
          id="matrixChart_c2p2"
          class="col-xl-6 col-md-6 col-xs-12"
        />
      </div>
      <div class="row">
        <div
          id="DRB_map_c2p3"
          class="col-xl-6 col-md-6 col-xs-12"
        />
        <div
          id="matrixChart_c2p3"
          class="col-xl-6 col-md-6 col-xs-12"
        />
      </div>
      <div class="row">
        <div class="col-xl-1 col-md-1 col-xs-0" />
        <div class="col-xl-10 col-md-10 col-xs-12">
          <p class="narrative_text">
            Data sparsity and the variability in stream temperature across the network limits our ability 
            to answer questions like: How far downstream will this cold water release affect temperature? 
            How has fish habitat changed through time? Will we have enough cold water in the reservoir in 
            50 years? 
          </p>
        </div>
        <div class="col-xl-1 col-md-1 col-xs-0" />
      </div>
      <div
        id="filter_row"
        class="row"
      >
        <div>
          <svg>
            <filter
              id="shadow1"
              style="width: 0px; height:0px"
            >
              <feDropShadow
                dx="0"
                dy="0"
                stdDeviation="1.5"
                flood-color="#ffffff"
              />
            </filter>
          </svg>
        </div>
        <div>
          <svg>
            <filter
              id="shadow2"
              style="width: 0px; height:0px"
            >
              <feDropShadow
                dx="0"
                dy="0"
                stdDeviation="5"
                flood-color="#c9c9c9"
              />
            </filter>
          </svg>
        </div>
        <div>
          <svg>
            <filter
              id="shadow3"
              style="width: 0px; height:0px"
            >
              <feDropShadow
                dx="0"
                dy="0"
                stdDeviation="5"
                flood-color="#5c5c5c"
              />
            </filter>
          </svg>
        </div>
      </div>
    </div>
  </section>
</template>

<script>
  import * as d3Base from "d3";
  import {geoScaleBar, geoScaleBottom, geoScaleTop, geoScaleKilometers, geoScaleMiles} from "d3-geo-scale-bar";
  import * as topojson from "topojson-client";
  import * as ss from 'simple-statistics';

  export default {
      name: 'Set2',
      data() {
        return {
          publicPath: process.env.BASE_URL, // this is need for the data files in the public folder, this allows the application to find the files when on different deployment roots
          d3: null, // this is used so that we can assign d3 plugins to the d3 instance
          // global variables instantiated in next section
          timestep_c2p2: 'year',
          myGroups_c2p2: null,
          myVars_c2p2: null,
          temporalCountMax_c2p2: null,
          timestep_c2p3: 'date',
          chart_margin: {top: 30, right: 60, bottom: 45, left: 5},
          chart_width: null, // this will get a value in the mounted hook
          chart_height: null, // this will get a value in the mounted hook
          matrix_margin: {top: 50, right: 15, bottom: 15, left: 35},
          matrix_width_c2p2: null, // this will get a value in the mounted hook
          matrix_width_c2p3: null, // this will get a value in the mounted hook
          matrix_height_c2p2: null, // this will get a value in the mounted hook
          matrix_height_c2p3: null, // this will get a value in the mounted hook
          scaleBarTop: null,
          scaleBarBottom: null,
          scaleBarTop_c2p1: null,
          scaleBarBottom_c2p1: null,
          map_c2p1: null,
          map_c2p2: null,
          map_c2p3: null,
          map_path_c2p1: null,
          map_width: null,
          map_height: null,
          map_margin: null,
          map_path: null,
          map_projection: null
        }
      },
      mounted() {
        this.d3 = Object.assign(d3Base, { geoScaleBar, geoScaleBottom, geoScaleTop, geoScaleKilometers, geoScaleMiles }); // this loads d3 plugins with webpack

        this.chart_width = 500 - this.chart_margin.left - this.chart_margin.right;
        this.chart_height = window.innerHeight * 0.30 - this.chart_margin.top - this.chart_margin.bottom;
        this.matrix_width_c2p2 = 700 - this.matrix_margin.left - this.matrix_margin.right;
        this.matrix_height_c2p2 = window.innerHeight * 0.9 - this.matrix_margin.top - this.matrix_margin.bottom;
        this.matrix_width_c2p3 = 700 - this.matrix_margin.left - this.matrix_margin.right;
        this.matrix_height_c2p3 = window.innerHeight * 0.9 - this.matrix_margin.top - this.matrix_margin.bottom;

        this.setPanels();  // begin script when window loads
      },
      methods: {
        setPanels() {
          const self = this;

          // // CHAPTER 2 BAR CHART
          // write function to process data for stacked bar chart in chapter 2 panel 1
          function type(d, i, columns) {
            for (i=1, t=0; i < columns.length; ++i)
                // for each row, which is d, cycle through the columns
              t += d[columns[i]] = +d[columns[i]];
            // create a new column in the data titled "total"
            d.total = t;
            return d;
          }

          // // CHAPTER 2 MAPS
          // set universal map frame dimensions for Ch 2 panel maps
          this.map_width = 600;
          this.map_height = window.innerHeight * 0.79;
          this.map_margin = {top: 15, right: 5, bottom: 5, left: 5};

          //create Albers equal area conic projection centered on DRB for ch2 panel 1 map
          let map_projection_c2p1 = self.d3.geoAlbers()
              .center([0, 40.658894445])
              .rotate([75.533333335, 0, 0]) //75.363333335 centered, 76.2 far right, 74.6 far left
              .parallels([39.9352537033, 41.1825351867])
              .scale(this.map_height * 15)
              .translate([this.map_width / 2, this.map_height / 2]);

          this.map_path_c2p1 = self.d3.geoPath()
              .projection(map_projection_c2p1);

          // create scale bar for ch 2 panel 1 map
          this.scaleBarTop_c2p1 = self.d3.geoScaleBar()
              .orient(self.d3.geoScaleBottom)
              .projection(map_projection_c2p1)
              .size([this.map_width, this.map_height])
              .left(.25) // .15 centered, .45 far right
              .top(.96)
              .units(self.d3.geoScaleKilometers)
              .distance(50)
              .label("50 kilometers")
              .labelAnchor("start")
              .tickSize(null)
              .tickValues(null);

          this.scaleBarBottom_c2p1 = self.d3.geoScaleBar()
              .orient(self.d3.geoScaleTop)
              .projection(map_projection_c2p1)
              .size([this.map_width, this.map_height])
              .left(.25) // .15 centered, .45 far right
              .top(.97)
              .units(self.d3.geoScaleMiles)
              .distance(25)
              .label("25 miles")
              .labelAnchor("start")
              .tickSize(null)
              .tickValues(null);

          //create Albers equal area conic projection centered on DRB for ch2 panel 2 and 3 maps
          this.map_projection = self.d3.geoAlbers()
              .center([0, 40.658894445])
              .rotate([74.9, 0, 0]) //75.363333335 centered, 76.2 far right, 74.6 far left
              .parallels([39.9352537033, 41.1825351867])
              .scale(this.map_height * 15)
              .translate([this.map_width / 2, this.map_height / 2]);

          this.map_path = self.d3.geoPath()
              .projection(this.map_projection);

          // create scale bar for ch 2 panel 2 and 3 maps
          this.scaleBarTop = self.d3.geoScaleBar()
              .orient(self.d3.geoScaleBottom)
              .projection(this.map_projection)
              .size([this.map_width, this.map_height])
              .left(.03) // .15 centered, .45 far right
              .top(.96)
              .units(self.d3.geoScaleKilometers)
              .distance(50)
              .label("50 kilometers")
              .labelAnchor("start")
              .tickSize(null)
              .tickValues(null);

          this.scaleBarBottom = self.d3.geoScaleBar()
              .orient(self.d3.geoScaleTop)
              .projection(this.map_projection)
              .size([this.map_width, this.map_height])
              .left(.03) // .15 centered, .45 far right
              .top(.97)
              .units(self.d3.geoScaleMiles)
              .distance(25)
              .label("25 miles")
              .labelAnchor("start")
              .tickSize(null)
              .tickValues(null);

          //create new svg container for the ch 2 panel 1 map
          this.map_c2p1 = self.d3.select("#DRB_map_c2p1")
              .append("svg")
              .attr("class", "map_c2p1")
              .attr("viewBox", [0, 0, (this.map_width + this.map_margin.right + this.map_margin.left),
                (this.map_height + this.map_margin.top + this.map_margin.bottom)].join(' '));

          //create new svg container for the ch 2 panel 2 map
          this.map_c2p2 = self.d3.select("#DRB_map_c2p2")
              .append("svg")
              .attr("class", "map_c2p2")
              .attr("viewBox", [0, 0, (this.map_width + this.map_margin.right + this.map_margin.left),
                (this.map_height + this.map_margin.top + this.map_margin.bottom)].join(' '));

          // create new svg container for the ch 2 panel 3 map
          this.map_c2p3 = self.d3.select("#DRB_map_c2p3")
              .append("svg")
              .attr("class", "map_c2p3")
              .attr("viewBox", [0, 0, (this.map_width + this.map_margin.right + this.map_margin.left),
                (this.map_height + this.map_margin.top + this.map_margin.bottom)].join(' '));
          
          // add variables to component data

          let promises = [self.d3.csv("data/segment_maflow.csv"),
            self.d3.csv(self.publicPath + "data/matrix_annual_obs.csv"),
            self.d3.csv(self.publicPath + "data/obs_annual_count.csv"),
            self.d3.csv(self.publicPath + "data/matrix_daily_2019_obs.csv"),
            self.d3.csv(self.publicPath + "data/obs_daily_count_2019.csv"),
            self.d3.csv(self.publicPath + "data/agency_annual_count.csv", self.type), // process data for stacked bar chart as it is loaded
            self.d3.json(self.publicPath + "data/topojson/segment_data.json"),
            self.d3.json(self.publicPath + "data/topojson/observed_site_locations.json"),
            self.d3.json(self.publicPath + "data/topojson/DelawareBay.json"),
            self.d3.json(self.publicPath + "data/topojson/reservoirs.json"),
            self.d3.json(self.publicPath + "data/topojson/dams.json")
          ];
          Promise.all(promises).then(self.callback);
        },
        type(d, i, columns) {
          let t = 0;
          for (i = 1, t; i < columns.length; ++i)
              // for each row, which is d, cycle through the columns
            t += d[columns[i]] = +d[columns[i]];
          // create a new column in the data titled "total"
          d.total = t;
          return d;
        },
        callback(data) {
          let csv_flow = data[0];
          let csv_matrix_annual = data[1];
          let csv_annual_count = data[2];
          let csv_matrix_daily_2019 = data[3];
          let csv_daily_count_2019 = data[4];
          let csv_agency_count = data[5];
          let json_segments = data[6];
          let json_obs_stations = data[7];
          let json_bay = data[8];
          let json_reservoirs = data[9];
          let json_dams = data[10];

          // translate topojsons
          let segments = topojson.feature(json_segments, json_segments.objects.segment_data).features; 
          let stations = topojson.feature(json_obs_stations, json_obs_stations.objects.observed_site_locations).features; 
          let bay = topojson.feature(json_bay, json_bay.objects.NHDWaterbody_DelawareBay_pt6per_smooth);
          let reservoirs = topojson.feature(json_reservoirs, json_reservoirs.objects.reservoirs).features; 
          let dams = topojson.feature(json_dams, json_dams.objects.dams).features; 

          // join csv flow data to geojson segments
          // ch 2 map segments
          segments = this.joinData(segments, csv_flow);

          // set stroke width scale
          // for ch 2 map segments
          let widthScale_c2 = this.makeWidthScale_c2(csv_flow);

          // Set up Ch 2 panel 1 -
          // add DRB segments to the panel 1 map
          this.setMap_c2p1(segments, stations, bay, reservoirs, this.map_c2p1, this.map_path_c2p1, this.scaleBarTop_c2p1, this.scaleBarBottom_c2p1, widthScale_c2);
          // add bar chart to panel 1
          this.setBarChart_c2p1(csv_agency_count);

          // Set up Ch 2 panel 2 -
          // add DRB segments to the panel 2 map
          this.setMap_c2p2(this.map_width, this.map_height, segments, bay, reservoirs, this.map_c2p2, this.map_path, this.scaleBarTop, this.scaleBarBottom, widthScale_c2);
          // create panel 2 matrix
          this.createMatrix_c2p2(csv_matrix_annual, csv_annual_count, segments);

          // Set up Ch 2 panel 3 -
          // add DRB segments to the panel 3 map
          this.setMap_c2p3(this.map_width, this.map_height, segments, bay, reservoirs, this.map_c2p3, this.map_path, this.scaleBarTop, this.scaleBarBottom, widthScale_c2);
          // create panel 3 matrix
          this.createMatrix_c2p3(csv_matrix_daily_2019, csv_daily_count_2019, segments);
        },
        joinData(segments, csv_flow) {
          // loop through csv to assign each set of csv attribute values to a geojson polyline
          for (let i=0; i<csv_flow.length; i++){
            // define the current segment
            let csvSegment = csv_flow[i];
            // define the csv attribute field to use as the key
            let csvKey = csvSegment.seg_id_nat;
            // Loop through the geojson segments
            for (let a=0; a<segments.length; a++){
              // Pull the properties for the current geojson segment
              let geojsonProps = segments[a].properties;
              // set the geojson properties field to use as the key
              let geojsonKey = segments[a].properties.seg_id_nat;
              // where primary keys match, transfer csv data to geojson properties object
              if (geojsonKey == csvKey){
                // assign all attributes and values
                let val = parseFloat(csvSegment['avg_ann_flow'])
                geojsonProps['avg_ann_flow'] = val;
              };
            };

          };
          return segments;
        },
        makeWidthScale_c2(data) {
          const self = this;
          // // graduated scale
          // set width classes
          let widthClasses = [
            0.6,
            0.9,
            1.2,
            1.4,
            1.7,
            2,
            2.3,
            2.6,
            3,
            3.5,
          ];

          // // graduated scale
          // create width scale generator for natural breaks classification
          let widthScale = this.d3.scaleThreshold()
              .range(widthClasses);

          // // BOTH METHODS
          // build array of all values of flow
          let domainArrayFlow = [];
          for (let i = 0; i < data.length; i++) {
            let val = parseFloat(data[i]['avg_ann_flow']);
            domainArrayFlow.push(val);
          }

          // graduated scale
          // cluster data using ckmeans clustering algoritm to create natural breaks
          let clusters = ss.ckmeans(domainArrayFlow, 10);

          // graduated scale
          // reset domain array to cluster minimumns
          domainArrayFlow = clusters.map(function(d){
            return self.d3.min(d);
          });

          // // graduated scale
          // remove first value from domain array to create class breakpoints
          domainArrayFlow.shift();

          // // graduated scale
          // assign array of last 9 cluster minimums as domain
          widthScale.domain(domainArrayFlow);

          // // BOTH METHODS
          return widthScale;
        },
        setMap_c2p1(segments, stations, bay, reservoirs, map, map_path, scaleBarTop, scaleBarBottom, widthScale_c2) {
          // add delaware bay to map
          var drb_bay = map.append("path")
              .datum(bay)
              .attr("class", "c2p1 delaware_bay")
              .attr("d", map_path)

          // add drb reservoirs to map
          var drb_reservoirs = map.selectAll(".reservoirs")
              // bind polygons to each element to be created
              .data(reservoirs)
              // create an element for each datum
              .enter()
              // append each element to the svg as a path element
              .append("path")
              // project polygons
              .attr("d", map_path)
              // assign class for styling
              .attr("class", function(d){
                return "c2p1 reservoirs res_id" + d.properties.GRAND_ID
              })
              // set stroke width so that polygons appear larger
              .style("stroke-width", 0.75)

          // add drb segments to map
          var drb_segments = map.selectAll(".river_segments")
              // bind segments to each element to be created
              .data(segments)
              // create an element for each datum
              .enter()
              // append each element to the svg as a path element
              .append("path")
              // assign class for styling
              .attr("class", function(d){
                return 'c2p1 river_segments seg' + d.properties.seg_id_nat
              })
              // project segments
              .attr("d", map_path)
              // add stroke width based on widthScale function
              .style("stroke-width", function(d){
                var value = d.properties['avg_ann_flow'];
                if (value){
                  return widthScale_c2(value);
                } else {
                  return "#ccc";
                }
              })
              // set fill to none
              .style("fill", "None")

            // add drb stations to map
            var drb_stations = map.selectAll(".obs_stations")
                // bind points to each element to be created
                .data(stations)
                // create an element for each datum
                .enter()
                // append each element to the svg as a circle element
                .append("path")
                // project points and SET SIZE
                .attr("d", map_path.pointRadius(2))
                // assign class for styling
                .attr("class", function(d){
                  return "c2p2 obs_stations station" + d.id
                })
                // assign fill color based on agency
                .style("fill", function(d){
                  if (d.properties.site_agency === 'USGS'){
                    return "#edb932"
                  } else {
                    return "#eb4444"
                  }
                })
                // assign stroke in background color
                .style("stroke", "#000000")
                .style("stroke-width", 0.4)
                // assign opacity
                .style("opacity", 1)

            // add scale bar
            map.append("g").call(scaleBarTop);
            map.append("g").call(scaleBarBottom);
          },
        setBarChart_c2p1(csv_agency_count) {
        // append svg to div
        var svgChart = this.d3.select("#barChart_c2p1")
            .append("svg")
            .attr("viewBox", [0, 0, (this.chart_width +  this.chart_margin.right + this.chart_margin.left),
              (this.chart_height + this.chart_margin.top + this.chart_margin.bottom)].join(' '))

            .attr("class", "c2p1 barChart")
        let g = svgChart.append("g")
            .attr("class", "c2p1 transformedBarChart")
            .attr("transform", "translate(" + this.chart_margin.left + "," + this.chart_margin.top + ")");

        // define x
        var x = this.d3.scaleBand()
            .rangeRound([0, this.chart_width])
            // set padding between bars
            .padding(0.1)


        // make y scale
        var y = this.d3.scaleLinear()
            .range([this.chart_height, 0]);

        // set colors
        var z = this.d3.scaleOrdinal()
            .range(["#edb932", "#eb4444"]);

        // stack to create an array for each of the series in the data
        var stack = this.d3.stack();

        // load processed data
        let data = csv_agency_count

        // set x domain - create an array of the two site agency categories
        x.domain(data.map(function(d) { return d.year; }));

        // set y domain
        y.domain([0, this.d3.max(data, function(d) { return d.total })]).nice();

        // remove the year column from the data
        z.domain(data.columns.slice(1));

        // set up the series
        g.selectAll(".series")
            // keys for the stack are all but the first column
            .data(stack.keys(data.columns.slice(1))(data))
            // each agency series is given its own g
            .enter().append("g")
            .attr("class", "series")
            // keys passed to the z domain to be assigned a color
            .attr("fill", function(d) { return z(d.key); })
            .selectAll("rect")
            .data(function(d) { return d;})
            .enter().append("rect")
            // set x attribute based on year
            .attr("x", function(d) { return x(d.data.year); })
            // from the slice method d is a pair of coordinates, the upper and lower
            // bounds of the area to be displayed. This sets the upper y value
            .attr("y", function(d) { return y(d[1]); })
            // this calculates the height down from the starting point
            .attr("height", function(d) { return y(d[0]) - y(d[1]); })
            // calculate width for each band
            .attr("width", x.bandwidth())

        // place the x axis
        g.append("g")
            .attr("class", "c2p1 chartAxis bottom")
            .attr("transform", "translate(0," + this.chart_height + ")")
            .call(this.d3.axisBottom(x).tickValues(['1980', '1985', '1990', '1995', '2000', '2005', '2010', '2015', '2019' ]).tickSize(0))
            .select(".domain").remove()

        // place and rotate x axis labels
        g.selectAll('text')
            .attr("y", 5)
            .attr("x", -28)
            .attr("dy", ".35em")
            .attr("transform", "rotate(-45)")
            .attr("text-anchor", "start")


        // place the y axis and format tick labels
        g.append("g")
            .attr("class", "c2p1 chartAxis right")
            // offset axis slightly to align closer to last bar
            .attr("transform", "translate(" + this.chart_width * 0.96 + "," + 0 + ")")
            // give ticks k number format and set their size to cover the width of the chart
            .call(this.d3.axisRight(y).ticks(10, "s").tickSize(- this.chart_width))
            .select(".domain").remove()

        // place and rotate the y axis label
        svgChart.selectAll(".chartAxis.right")
            .append("text")
            .attr("y", 35)
            // offset to (roughly) center on y axis
            .attr("x", -this.chart_height / 2)
            .attr("text-anchor", "middle")
            .attr("class", "c2p1 chartAxisText")
            .text("# of unique temperature measurements")
            //.attr("transform", "translate(25, 0)")
            .attr("transform", "rotate(-90)")
            

        // set the tick mark lines to background color
        svgChart.selectAll(".tick line").attr("stroke", "#000000").attr("stroke-width", 1).attr("stroke-dasharray", ("1, 1"))

        //  make the legend
        var legend = g.selectAll(".legend")
            // include all but the first column in the legend
            .data(data.columns.slice(1).reverse())
            // append an item for each series
            .enter().append("g")
            .attr("class", "c2p1 barChart legend")
            .attr("transform", function(d, i) {
              return "translate(" + 0 + "," + i * 17 + ")";
            })

        // append a rectangle for each series
        legend.append("rect")
            .attr("x", 14)
            .attr("width", 8)
            .attr("height", 8)
            // set color based on z attribute
            .attr("fill", z);

        // append a label for each rectangle
        legend.append("text")
            .attr("x", 30)
            .attr("y", 4)
            .attr("dy", ".35em")
            .attr("text-anchor", "start")
            // set text as column name
            .text(function(d) { return d; });

      },
        setMap_c2p2(map_width, map_height, segments, bay, reservoirs, map, map_path, scaleBarTop, scaleBarBottom, widthScale_c2){
          const self = this;
          // // Set up necessary elements for mousemove event within svg with viewBox
          // find root svg element
          var svg_map_c2p2 = document.querySelector('.map_c2p2');
          // create a SVGPoint for future math
          var pt_map_c2p2 = svg_map_c2p2.createSVGPoint();
          // function to get point in global SVG space
          function cursorPoint_c2p2(evt){
            pt_map_c2p2.x = evt.clientX; pt_map_c2p2.y = evt.clientY;
            return pt_map_c2p2.matrixTransform(svg_map_c2p2.getScreenCTM().inverse());
          }
          // create local variable to store point coordinates
          let loc_map_c2p2;
          // reset coordinates when mousemoves over map svg
          svg_map_c2p2.addEventListener('mousemove', function(evt){
            loc_map_c2p2 = cursorPoint_c2p2(evt);
          }, false);

          // // Add tooltip as text element appended to map svg, without coordinates
          // add tooltip to map svg
          var tooltip = map.append("text")
              .attr("class", "c2p2 tooltip map")

          // // Add in narrative text as text element appended to map svg
          // add c2p2 narrative text
          var narrative = map.append("foreignObject")
              .attr("class", "c2p2 narrative")
              .attr("text-align", "left")
              .attr("x", map_width*0.7)
              .attr("y", 25)
              .attr("width", map_width*0.3)
              .attr("height", map_height)
              .append("xhtml:body")
              .attr("class", "c2p2 narrative")
              .html('<p id="insert-text">Most data in the basin come from a small number of \
              sites. The top 1% of river reaches (5 sites) makes up nearly 20% of all data. \
              And there are whole chunks of time and space where we’re in the dark.</p> <p id="insert-text"> Explore \
              the availability of temperature observations across the Delaware River Basin \
              by selecting a year (on the right) or a river segment (on the left) to explore \
              when and where we have the most information.</p>')


          // // Build Map
          // add drb segments to map BACKGROUND - for selection only
          var drb_segments_transparent = map.selectAll(".river_segments")
              // bind segments to each element to be created
              .data(segments)
              // create an element for each datum
              .enter()
              // append each element to the svg as a path element
              .append("path")
              // assign class for styling
              .attr("class", "c2p2 segs_transparent")
              // project each element
              .attr("d", map_path)
              // set stroke width to be large for selection
              .style("stroke-width", 6)
              // set stroke to background color
              .style("stroke", "#000000")
              // no fill
              .style("fill", "None")
              // set opacity to 0 so segments aren't visible but can be selected
              .style("opacity", 0)
              // trigger interactions
              .on("mouseover", function(d) {
                self.mouseoverSeg_c2p2(d, tooltip);
              })
              .on("mousemove", function(d) {
                // pass mouse coordinates
                let mouse_x = loc_map_c2p2.x
                let mouse_y = loc_map_c2p2.y
                self.mousemoveSeg_c2p2(d, tooltip, mouse_x, mouse_y); 
              })
              .on("mouseout", function(d) {
                self.mouseoutSeg_c2p2(d, tooltip);
              });

          // add delaware bay to map
          var drb_bay = map.append("path")
              // bind data to element
              .datum(bay)
              // assign class for styling
              .attr("class", "c2p2 delaware_bay")
              // project element
              .attr("d", map_path);

          // add drb reservoirs to map
          var drb_reservoirs = map.selectAll(".reservoirs")
              // bind polygons to each element to be created
              .data(reservoirs)
              // create an element for each datum
              .enter()
              // append each element to the svg as a path element
              .append("path")
              // project polygons
              .attr("d", map_path)
              // assign class for styling
              .attr("class", function(d){
                return "c2p2 reservoirs res_id" + d.properties.GRAND_ID
              })
              // set stroke width so that polygons appear larger
              .style("stroke-width", 0.75)

          // add drb segments to map
          var drb_segments = map.selectAll(".river_segments")
              // bind segments to each element to be created
              .data(segments)
              // create an element for each datum
              .enter()
              // append each element to the svg as a path element
              .append("path")
              // assign class for styling - based on segment id
              // and based on years in which each segment has data
              .attr("class", function(d) {
                let seg_class = 'c2p2 river_segments seg'
                seg_class += d.properties.seg_id_nat
                let key = null;
                for (key in d.properties.year_count) {
                  if (d.properties.year_count[key] > 0) {
                    seg_class += " " + self.timestep_c2p2 + key
                  }
                }
                return seg_class
              })
              // project segments
              .attr("d", map_path)
              // add stroke width based on widthScale function
              .style("stroke-width", function(d){
                var value = d.properties['avg_ann_flow'];
                if (value){
                  return widthScale_c2(value);
                } else {
                  return "#ccc";
                }
              })
              // set fill to none
              .style("fill", "None")
              // trigger interactions
              .on("mouseover", function(d) {
                self.mouseoverSeg_c2p2(d, tooltip);
              })
              .on("mousemove", function(d) {
                // pass mouse coordinates
                let mouse_x = loc_map_c2p2.x
                let mouse_y = loc_map_c2p2.y
                self.mousemoveSeg_c2p2(d, tooltip, mouse_x, mouse_y);
              })
              .on("mouseout", function(d) {
                self.mouseoutSeg_c2p2(d, tooltip);
              });

          // add scale bar
          map.append("g").call(scaleBarTop)
          map.append("g").call(scaleBarBottom)
        },
        createMatrix_c2p2(csv_matrix_annual, csv_annual_count, segments){
          const self = this;

          // append the svg object to the body of the page
          var svgMatrix = self.d3.select("#matrixChart_c2p2")
              .append("svg")
              .attr("viewBox", [0, 0, (self.matrix_width_c2p2 + self.matrix_margin.left + self.matrix_margin.right),
                (self.matrix_height_c2p2 + self.matrix_margin.top + self.matrix_margin.bottom)].join(' '))
              .attr("class", "c2p2 matrix_c2p2")

          // build array of all values of observation counts
          var domainArrayTemporalCounts = [];
          for (var i=0; i<csv_matrix_annual.length; i++){
            var val = parseFloat(csv_matrix_annual[i]['obs_count']);
            domainArrayTemporalCounts.push(val);
          };

          // Find maximum count of observations to use in color scale
          self.temporalCountMax_c2p2 = Math.round(Math.max(...domainArrayTemporalCounts));

          // build color scale
          var myColor = self.d3.scaleSequential()
              .interpolator(self.d3.interpolatePlasma) /* interpolatePlasma */
              // .domain([self.temporalCountMax_c2p2,1]) // if INVERTING color scale
              .domain([1, self.temporalCountMax_c2p2]) // if NOT INVERTING color scale

          // build list of posible counts (0 to 366)
          var count_list = [];
          for (var i = 1; i <= self.temporalCountMax_c2p2; i++) {
            count_list.push(i);
          } 

          // define gradient for legend
          var defs = svgMatrix.append("defs")
              .append("linearGradient")
              .attr("id", "gradient-plasma")
              .attr("x1", "0%").attr("y1", "0%")
              .attr("x2", "100%").attr("y2", "0%")
              .selectAll("stop")
              .data(count_list)
              .enter().append("stop")
              .attr("offset", function(d,i) {
                return i/(count_list.length-1);
              })
              .attr("stop-color", function(d) {
                return myColor(d)
              })

          // append legend container
          var legendsvg = svgMatrix.append("g")
              .attr("class", "c2p2 legendWrapper")
              .attr("width", self.matrix_width_c2p2)
              .attr("transform", "translate(" + (self.matrix_margin.left) + "," + 0 + ")")

          // append legend text
          legendsvg.append("text")
              .attr("class", "c2p2 legendAxis")
              .attr("text-anchor", "end")
              .attr("x", self.matrix_width_c2p2*1/4 - 10)
              .attr("y", 17)
              .attr("fill", "#ffffff")
              .text("1 daily value")

          // append legend rectangle
          legendsvg.append("rect")
              .attr("class", "c2p2 matrixLegend")
              .attr("width", self.matrix_width_c2p2/2)
              .attr("height", 20)
              .attr("fill", "url(#gradient-plasma)")
              .attr("x", self.matrix_width_c2p2/4)

          // append legend text
          legendsvg.append("text")
              .attr("class", "c2p2 legendAxis")
              .attr("text-anchor", "start")
              .attr("x", self.matrix_width_c2p2*3/4 + 10)
              .attr("y", 17)
              .attr("fill", "#ffffff")
              .text("365 daily values")

          // append background rectangle for matrix
          svgMatrix.append("rect")
                  .attr("class", "c2p2 matrixBkgdRect")
                  .attr("width", self.matrix_width_c2p2)
                  .attr("height", self.matrix_height_c2p2)
                  .attr("fill", "#000000")
                  .attr("filter", "url(#shadow2)")
                  .attr("transform",
                      "translate(" + self.matrix_margin.left + "," + self.matrix_margin.top + ")")

          // append tooltip for matrix to the matrix svg
          var tooltip = svgMatrix.append("text")
              .attr("class", "c2p2 tooltip matrix")

          // append the body of the matrix (transformed by margins)
          svgMatrix.append("g")
              .attr("class", "c2p2 transformedMatrix")
              .attr("transform",
                  "translate(" + self.matrix_margin.left + "," + self.matrix_margin.top + ")")

          // read in data for matrix
          self.myGroups_c2p2 = self.d3.map(csv_matrix_annual, function(d){return d[self.timestep_c2p2];}).keys()
          self.myVars_c2p2 = self.d3.map(csv_matrix_annual, function(d){return d.seg_id_nat;}).keys()

          // build x scale for matrix cells
          var x = self.d3.scaleBand()
              .range([0, self.matrix_width_c2p2])
              .domain(self.myGroups_c2p2)
              .padding(0.1);

          // build y scale for matrix cells
          var y = self.d3.scaleBand()
              .range([self.matrix_height_c2p2, 0])
              .domain(self.myVars_c2p2)
              .padding(0.1);

          // add the cells to the matrix
          // select transformed matrix
          var transformedMatrix = self.d3.select(".c2p2.transformedMatrix")
          // append rectangles to the matrix
          var matrixCells = transformedMatrix.selectAll('matrixCells')
              // bind data to rectangles
              .data(csv_matrix_annual, function(d) {
                if (d.total_count > 0) { /* d.total_obs */
                  return d[self.timestep_c2p2] +':'+ d.seg_id_nat;
                }
              })
              // create element for each data item
              .enter()
              // filter data to only include sites and times
              // with more than 0 observations (to limit # rectangles)
              .filter(function (d){
                return d.obs_count > 0
              })
              // append rectangles for each element in filtered data
              .append("rect")
              // set x position based on year
              .attr("x", function (d){
                return x(d[self.timestep_c2p2])
              })
              // set y position based on segment id
              .attr("y", function(d) {
                return y(d.seg_id_nat)
              })
              // set width and height based on bandwidth of axes
              .attr("width", x.bandwidth())
              .attr("height", y.bandwidth())
              // assign class with segment id AND year for styling
              .attr("class", function(d) {
                return 'c2p2 cell segment' + d.seg_id_nat + ' timestep' + d[self.timestep_c2p2]
              })
              // style based on # of observations for that segment in that year
              .style("fill", function(d) {
                return myColor(d.obs_count);
              })
              .style("stroke-width", 0.5)
              .style("stroke", function(d){
                return myColor(d.obs_count);
              })
              .style("opacity", 1);

          // add text labels for each cell
          let cellText = transformedMatrix.selectAll(".text")
              .data(csv_matrix_annual, function(d) {
                if (d.total_count > 0) { 
                  return d[self.timestep_c2p2] + ':' + d.seg_id_nat;
                }
              })
              // create an element for each data item
              .enter()
              // filter data to only include sites and times
              // with more than 0 observations (to limit # rectangles)
              .filter(function (d){
                return d.obs_count > 0
              })
              // append text for each element in filtered data
              .append("text")
              .attr("class", function(d) {
                return "c2p2 cellText seg" + d.seg_id_nat + " year" + d.year;
              })
              .attr("x", function(d) {
                  if (d.obs_count > 99) {
                      return x(d[self.timestep_c2p2]);
                  } else if (d.obs_count < 10) {
                      return x(d[self.timestep_c2p2]) + x.bandwidth()/3;
                  } else {
                      return x(d[self.timestep_c2p2]) + x.bandwidth()/6;
                  }
              })
              .attr("y", function(d) {
                  return y(d.seg_id_nat) - 5;
              })
              // .attr("dy", ".75em")
              .attr("fill", "None")
              .text(function(d) {
                return parseInt(d.obs_count);
              })

          // add the overlaid rectangles (temporal and spatial) that will be used for selection
          self.createMatrixRectangles_c2p2(csv_matrix_annual, csv_annual_count, segments, tooltip);

          // draw x axes
          transformedMatrix.append("g")
              .style("font-size", 10)
              .attr("transform", "translate(" + 0 + "," + self.matrix_height_c2p2 + ")")
              .attr("class", "c2p2 matrixAxis bottom")
              .call(self.d3.axisBottom(x).tickSize(0).tickValues(['1980', '1990', '2000', '2010', '2019']).tickPadding(7)) /* '1980-01', '1990-01', '2000-01', '2010-01', '2019-01' */
              .select(".domain").remove()
          transformedMatrix.append("g")
              .style("font-size", 0)
              .attr("transform", "translate(" + 0 + "," + 0 + ")")
              .attr("class", "c2p2 matrixAxis top")
              .call(self.d3.axisTop(x).tickSize(0))
              .select(".domain").remove()

          // draw y axes
          transformedMatrix.append("g")
              .style("font-size", 0)
              .attr("class", "c2p2 matrixAxis left")
              //.call(self.d3.axisLeft(y).tickSize(0))
              .call(self.d3.axisLeft(y).tickSize(0))
              .select(".domain").remove()
          transformedMatrix.append("g")
              .style("font-size", 0)
              .attr("transform", "translate(" + self.matrix_width_c2p2 + "," + 0 + ")")
              .attr("class", "c2p2 matrixAxis right")
              // .call(self.d3.axisRight(y).tickSize(0))
              .call(self.d3.axisRight(y).tickSize(0))
              .select(".domain").remove()
        },
        createMatrixRectangles_c2p2(csv_matrix_annual, csv_annual_count, segments, tooltip) {
          const self = this;
          
          // // Set up necessary elements for mousemove event within svg with viewBox
          // find root svg element
          var svg_matrix_c2p2 = document.querySelector('.matrix_c2p2');
          // create a SVGPoint for future math
          var pt_matrix_c2p2 = svg_matrix_c2p2.createSVGPoint();
          // function to get point in global SVG space
          function cursorPoint_matrix_c2p2(evt){
            pt_matrix_c2p2.x = evt.clientX; pt_matrix_c2p2.y = evt.clientY;
            return pt_matrix_c2p2.matrixTransform(svg_matrix_c2p2.getScreenCTM().inverse());
          }
          // create local variable to store point coordinates
          let loc_matrix_c2p2 = null;
          // // reset coordinates when mousemoves over matrix svg
          svg_matrix_c2p2.addEventListener('mousemove', function(evt){
            loc_matrix_c2p2 = cursorPoint_matrix_c2p2(evt);
          }, false);

          // Build matrix
          // create transformed matrix variable
          var transformedMatrix = self.d3.select(".c2p2.transformedMatrix")

          // read in data for matrix
          var myGroups = self.d3.map(csv_matrix_annual, function(d){return d[self.timestep_c2p2];}).keys()
          var myVars = self.d3.map(csv_matrix_annual, function(d){return d.seg_id_nat;}).keys()

          // build x scale
          var xscale = self.d3.scaleBand()
              .range([0,self.matrix_width_c2p2])
              .domain(myGroups)
              .padding(0.1);

          // build y scale
          var yscale = self.d3.scaleBand()
              .range([self.matrix_height_c2p2, 0])
              .domain(myVars)
              .padding(0.1);

          // //  build spatial rectangles
          // append to transformed matrix
          var SpatialRectangles = transformedMatrix.selectAll('.c2p2.matrixSpatialRect')
              // bind data to each element
              .data(segments)
              // create element for each datum
              .enter()
              // append rectangle for each element
              .append("rect")
              // set x value based on minimum year (1980)
              .attr("x", xscale("1980"))
              // set y value based on segment id
              .attr("y", function(d) { return yscale(d.properties.seg_id_nat) })
              // set width to width of matrix
              .attr("width", self.matrix_width_c2p2)
              // set height based on yscale bandwidth
              .attr("height", yscale.bandwidth())
              // set class based on segment id
              .attr("class", function(d) {
                return 'c2p2 matrixSpatialRect seg' + d.properties.seg_id_nat;
              })
              // style rectangles to be transparent but available for selection
              .style("fill", "#000000")
              .style("stroke-width", 2)
              .style("stroke", "#000000")
              .style("opacity", 0)

          // // build temporal rectangles
          // append to transformed matrix
          var TemporalRectangles = transformedMatrix.selectAll('.c2p2.matrixTemporalRect')
              // bind data (count of observations in each year) to each element
              .data(csv_annual_count)
              // create element for each datum
              .enter()
              // append rectangle for each element
              .append("rect")
              // set x value based on year and xscale
              .attr("x", function(d){
                return xscale(d[self.timestep_c2p2])
              })
              // set y value to 0
              .attr("y", 0)
              // set width based on bandwidth of x scale
              .attr("width", xscale.bandwidth())
              // set height to height of matrix
              .attr("height", self.matrix_height_c2p2)
              // set class based on year
              .attr("class", function(d) {
                return 'c2p2 matrixTemporalRect time' + d[self.timestep_c2p2];
              })
              // style rectangles to be transparent but available for selection
              .style("fill", "#000000")
              .style("stroke-width", 2)
              .style("stroke", "#000000")
              .style("opacity", 0)
              // trigger interactions and coordination with map on mouseover
              .on("mouseover", function(d) {
                self.mouseoverRect_c2p2(d, tooltip);
              })
              .on("mousemove", function(d) {
                let mouse_x = loc_matrix_c2p2.x
                let mouse_y = loc_matrix_c2p2.y
                self.mousemoveRect_c2p2(d, tooltip, mouse_x, mouse_y);
              })
              .on("mouseout", function(d) {
                self.mouseoutRect_c2p2(d, tooltip);
              })
        },
        setMap_c2p3(map_width, map_height, segments, bay, reservoirs, map, map_path, scaleBarTop, scaleBarBottom, widthScale_c2){
          const self = this;
          // // Set up necessary elements for mousemove event within svg with viewBox
          // find root svg element
          var svg_map_c2p3 = document.querySelector('.map_c2p3');
          // create a SVGPoint for future math
          var pt_map_c2p3 = svg_map_c2p3.createSVGPoint();
          // function to get point in global SVG space
          function cursorPoint_c2p3(evt){
            pt_map_c2p3.x = evt.clientX; pt_map_c2p3.y = evt.clientY;
            return pt_map_c2p3.matrixTransform(svg_map_c2p3.getScreenCTM().inverse());
          }

          // create local variable to store point coordinates
          let loc_map_c2p3 = null;
          // reset coordinates when mousemoves over map svg
          svg_map_c2p3.addEventListener('mousemove', function(evt){
            loc_map_c2p3 = cursorPoint_c2p3(evt);
          }, false);

          // // Add tooltip as text appended to map svg
          // add tooltip to map svg
          var tooltip = map.append("text")
              .attr("class", "c2p3 tooltip map")

          // // Add narrative text as html apppended to  map svg
          // add c2p3 narrative text
          var narrative = map.append("foreignObject")
              .attr("class", "c2p3 narrative")
              .attr("text-align", "left")
              .attr("x", map_width*0.7)
              .attr("y", 25)
              .attr("width", map_width*0.3)
              .attr("height", map_height)
              .append("xhtml:body")
              .attr("class", "c2p2 narrative")
              .html('<p id="insert-text">Further complicating our understanding of temperature dynamics \
              in the DRB is the fact that all streams are not created equal. Features \
              of the landscape can have large effects on water temperature that create \
              differences in temperature dynamics  -- things like groundwater inputs, \
              reservoirs, and urban areas have distinct temperature signatures.</p>\
              <p id="insert-text">Explore a year of temperature data across all monitored sites in \
              the Delaware River Basin.</p>')

          // add drb segments to map BACKGROUND
          var drb_segments = map.selectAll(".river_segments")
              // bind segments to each element to be created
              .data(segments)
              // create an element for each datum
              .enter()
              // append each element to the svg as a path element
              .append("path")
              // assign class for styling
              .attr("class", "c2p3 segs_transparent")
              .attr("d", map_path)
              .style("stroke-width", 6)
              .style("stroke", "#000000")
              .style("fill", "None")
              .style("opacity", 0)
              .on("mouseover", function(d) {
                self.mouseoverSeg_c2p3(d, tooltip);
              })
              .on("mousemove", function(d) {
                let mouse_x = loc_map_c2p3.x
                let mouse_y = loc_map_c2p3.y
                self.mousemoveSeg_c2p3(d, tooltip, mouse_x, mouse_y);
              })
              .on("mouseout", function(d) {
                self.mouseoutSeg_c2p3(d, tooltip);
              });

          // add delaware bay to map
          var drb_bay = map.append("path")
              // bind data to element
              .datum(bay)
              // add class for styling
              .attr("class", "c2p3 delaware_bay")
              // project
              .attr("d", map_path);

          // add drb reservoirs to map
          var drb_reservoirs = map.selectAll(".reservoirs")
              // bind polygons to each element to be created
              .data(reservoirs)
              // create an element for each datum
              .enter()
              // append each element to the svg as a path element
              .append("path")
              // project polygons
              .attr("d", map_path)
              // assign class for styling
              .attr("class", function(d){
                return "c2p3 reservoirs res_id" + d.properties.GRAND_ID
              })
              .style("stroke-width", 0.75)

          // add drb segments to map
          let key = null;
          var drb_segments = map.selectAll("river_segments")
              // bind segments to each element to be created
              .data(segments)
              // create an element for each datum
              .enter()
              // append each element to the svg as a path element
              .append("path")
              // assign class for styling based on segment id
              // and each date for which segment has data
              .attr("class", function(d){
                var seg_class = 'c2p3 river_segments seg'
                seg_class += d.properties.seg_id_nat
                for (key in d.properties.day_count) {
                  if (d.properties.day_count[key]) {
                    seg_class += " " + self.timestep_c2p3 + key
                  }
                }
                return seg_class
              })
              // project segments
              .attr("d", map_path)
              // add stroke width based on widthScale function
              .style("stroke-width", function(d){
                var value = d.properties['avg_ann_flow'];
                if (value){
                  return widthScale_c2(value);
                } else {
                  return "#ccc";
                }
              })
              .style("fill", "None")
              .on("mouseover", function(d) {
                self.mouseoverSeg_c2p3(d, tooltip);
              })
              .on("mousemove", function(d) {
                let mouse_x = loc_map_c2p3.x
                let mouse_y = loc_map_c2p3.y
                self.mousemoveSeg_c2p3(d, tooltip, mouse_x, mouse_y);
              })
              .on("mouseout", function(d) {
                self.mouseoutSeg_c2p3(d, tooltip);
              });
          // add scale bar
          map.append("g").call(scaleBarTop)
          map.append("g").call(scaleBarBottom)

        },
        createMatrix_c2p3(csv_matrix_daily_2019, csv_daily_count_2019, segments){
          const self = this;
          // append the svg object to the body of the page
          var svgMatrix = self.d3.select("#matrixChart_c2p3")
              .append("svg")
              // set viewbox
              .attr("viewBox", [0, 0, (self.matrix_width_c2p3 + self.matrix_margin.left + self.matrix_margin.right),
                (self.matrix_height_c2p3 + self.matrix_margin.top + self.matrix_margin.bottom)].join(' '))
              .attr("class", "c2p3 matrix_c2p3")

          // build array of all values of observed temperature
          var arrayObsTemps = [];
          for (var i=0; i<csv_matrix_daily_2019.length; i++){
            var val = parseFloat(csv_matrix_daily_2019[i]['temp_c']);
            if (val){
              arrayObsTemps.push(val);
            } else {
              continue
            }
          };

          // Find maximum observed temperature to use in color scale
          var obsTempMax = Math.round(Math.max(...arrayObsTemps));

          // Find minimum observed temperature to use in color scale
          var obsTempMin = Math.round(Math.min(...arrayObsTemps));

          // build color scale
          var myColor = self.d3.scaleSequential()
              .interpolator(self.d3.interpolateRdYlBu) /* interpolatePlasma */
              .domain([obsTempMax,obsTempMin]) // if INVERTING color scale
          // .domain([obsTempMin, obsTempMax]) // if NOT INVERTING color scale

          // build list of posible counts (0 to 366)
          var temp_list = [];
          for (var i = obsTempMin; i <= obsTempMax; i++) {
            temp_list.push(i);
          } 

          // define gradient for legend
          var defs = svgMatrix.append("defs")
              .append("linearGradient")
              .attr("id", "gradient-RYB")
              .attr("x1", "0%").attr("y1", "0%")
              .attr("x2", "100%").attr("y2", "0%")
              .selectAll("stop")
              .data(temp_list)
              .enter().append("stop")
              .attr("offset", function(d,i) {
                return i/(temp_list.length-1);
              })
              .attr("stop-color", function(d) {
                return myColor(d)
              })

          // append legend container
          var legendsvg = svgMatrix.append("g")
              .attr("class", "c2p3 legendWrapper")
              .attr("width", self.matrix_width_c2p3)
              .attr("transform", "translate(" + (self.matrix_margin.left) + "," + 0 + ")")

          // append legend text
          legendsvg.append("text")
              .attr("class", "c2p3 legendAxis")
              .attr("text-anchor", "end")
              .attr("x", self.matrix_width_c2p3*1/4 - 10)
              .attr("y", 17)
              .attr("fill", "#ffffff")
              .text(obsTempMin + " °C")

          // append legend rectangle
          legendsvg.append("rect")
              .attr("class", "c2p3 matrixLegend")
              .attr("width", self.matrix_width_c2p3/2)
              .attr("height", 20)
              .attr("fill", "url(#gradient-RYB)")
              .attr("x", self.matrix_width_c2p3/4)

          // append legend text
          legendsvg.append("text")
              .attr("class", "c2p3 legendAxis")
              .attr("text-anchor", "start")
              .attr("x", self.matrix_width_c2p3*3/4 + 10)
              .attr("y", 17)
              .attr("fill", "#ffffff")
              .text(obsTempMax + " °C")

          // append background rectangle for matrix
          svgMatrix.append("rect")
                  .attr("class", "c2p3 matrixBkgdRect")
                  .attr("width", self.matrix_width_c2p3)
                  .attr("height", self.matrix_height_c2p3)
                  .attr("fill", "#000000")
                  .attr("filter", "url(#shadow2)")
                  .attr("transform",
                      "translate(" + self.matrix_margin.left + "," + self.matrix_margin.top + ")")

          // append tooltip for matrix to the matrix svg
          var tooltip = svgMatrix.append("text")
              .attr("class", "c2p3 tooltip matrix")

          // append the body of the matrix (transformed by margins)
          svgMatrix.append("g")
              .attr("class", "c2p3 transformedMatrix")
              .attr("transform",
                  "translate(" + self.matrix_margin.left + "," + self.matrix_margin.top + ")");

          // read in data for matrix
          var myGroups = self.d3.map(csv_matrix_daily_2019, function(d){return d[self.timestep_c2p3];}).keys()
          var myVars = self.d3.map(csv_matrix_daily_2019, function(d){return d.seg_id_nat;}).keys()

          // build x scale
          var x = self.d3.scaleBand()
              .range([0, self.matrix_width_c2p3])
              .domain(myGroups)
              .padding(0);

          // build y scale
          var y = self.d3.scaleBand()
              .range([self.matrix_height_c2p3, 0])
              .domain(myVars)
              .padding(0);

          // // add the cells to the matrix
          // select transformed matrix
          var transformedMatrix = self.d3.select(".c2p3.transformedMatrix")
          // append rectangles to the matrix
          var matrixCells = transformedMatrix.selectAll('matrixCells')
              // bind data to rectangles
              .data(csv_matrix_daily_2019, function(d) {
                if (d.total_count > 0) {  
                  return d[self.timestep_c2p3] +':'+ d.seg_id_nat; 
                }
              })
              // create element for each data item
              .enter()
              // filter data to only include sites and times
              // with more than 0 observations (to limit # rectangles)
              .filter(function (d){
                return d.obs_count > 0
              })
              // append rectangles for each element in filtered data
              .append("rect")
              // set x position based on date
              .attr("x", function (d){
                return x(d[self.timestep_c2p3])
              })
              // set y position based on segment id
              .attr("y", function(d) {
                return y(d.seg_id_nat)
              })
              // set width and height based on bandwidth of axes
              .attr("width", x.bandwidth())
              .attr("height", y.bandwidth())
              // assign class with segment id AND date for styling
              .attr("class", function(d) {
                return 'c2p3 cell segment' + d.seg_id_nat + ' timestep' + d[self.timestep_c2p3]
              })
              // style based on # of observations for that segment in that year
              .style("fill", function(d) {
                return myColor(d.temp_c);
              })
              .style("stroke-width", 0.5)
              .style("stroke", function(d) {
                return myColor(d.temp_c);
              })
              .style("opacity", 1);

          // add the overlaid rectangles (temporal and spatial) that will be used for selection
          self.createMatrixRectangles_c2p3(csv_matrix_daily_2019, csv_daily_count_2019, segments, tooltip);

          transformedMatrix.append("g")
              .style("font-size", 10)
              .attr("transform", "translate(" + 0 + "," + self.matrix_height_c2p3 + ")")
              .attr("class", "c2p3 matrixAxis bottom")
              .call(self.d3.axisBottom(x).tickSize(0).tickValues(['2019-01-01', '2019-03-01', '2019-05-01', '2019-07-01', '2019-09-01', '2019-11-01']).tickPadding(7)) //.tickFormat(formatTime(parseTime()))
            .select(".domain").remove()
          transformedMatrix.append("g")
              .style("font-size", 0)
              .attr("transform", "translate(" + 0 + "," + 0 + ")")
              .attr("class", "c2p3 matrixAxis top")
              .call(self.d3.axisTop(x).tickSize(0))
              .select(".domain").remove()

          // draw y axes
          transformedMatrix.append("g")
              .style("font-size", 0)
              .attr("class", "c2p3 matrixAxis left")
              .call(self.d3.axisLeft(y).tickSize(0))
              .select(".domain").remove()
          transformedMatrix.append("g")
              .style("font-size", 0)
              .attr("transform", "translate(" + self.matrix_width_c2p3 + "," + 0 + ")")
              .attr("class", "c2p3 matrixAxis right")
              .call(self.d3.axisRight(y).tickSize(0))
              .select(".domain").remove()

        },
        createMatrixRectangles_c2p3(csv_matrix_daily_2019, csv_daily_count_2019, segments, tooltip) {
          const self = this;
          // // Set up necessary elements for mousemove event within svg with viewBox
          // find root svg element
          var svg_matrix_c2p3 = document.querySelector('.matrix_c2p3');
          // create a SVGPoint for future math
          var pt_matrix_c2p3 = svg_matrix_c2p3.createSVGPoint();
          // function to get point in global SVG space
          function cursorPoint_matrix_c2p3(evt){
            pt_matrix_c2p3.x = evt.clientX; pt_matrix_c2p3.y = evt.clientY;
            return pt_matrix_c2p3.matrixTransform(svg_matrix_c2p3.getScreenCTM().inverse());
          }
          // create local variable to store point coordinates
          let loc_matrix_c2p3;
          // reset coordinates when mousemoves over matrix svg
          svg_matrix_c2p3.addEventListener('mousemove', function(evt){
            loc_matrix_c2p3 = cursorPoint_matrix_c2p3(evt);
          }, false);

          // // Build matrix
          // create transformed matrix variable
          var transformedMatrix = self.d3.select(".c2p3.transformedMatrix")

          // read in data for matrix
          var myGroups = self.d3.map(csv_matrix_daily_2019, function(d){return d[self.timestep_c2p3];}).keys()
          var myVars = self.d3.map(csv_matrix_daily_2019, function(d){return d.seg_id_nat;}).keys()

          // build x scale
          var xscale = self.d3.scaleBand()
              .range([0, self.matrix_width_c2p3])
              .domain(myGroups)
              .padding(0);

          // build y scale
          var yscale = self.d3.scaleBand()
              .range([self.matrix_height_c2p3, 0])
              .domain(myVars)
              .padding(0);

          // // build spatial rectangles
          // append to transformed matrix
          var SpatialRectangles = transformedMatrix.selectAll('.c2p3.matrixSpatialRect')
              // bind data to each element
              .data(segments)
              // create element for each datum
              .enter()
              // append rectangle for each element
              .append("rect")
              // set x value based on minimum date (2019-01-01)
              .attr("x", xscale("2019-01-01"))
              // set y value based on segment id
              .attr("y", function(d) { return yscale(d.properties.seg_id_nat) })
              // set width to width of matrix
              .attr("width", self.matrix_width_c2p3)
              // set height based on yscale bandwidth
              .attr("height", yscale.bandwidth() )
              // set class based on segment id
              .attr("class", function(d) {
                return 'c2p3 matrixSpatialRect seg' + d.properties.seg_id_nat;
              })
              // style rectangles to be transparent but available for selection
              .style("fill", "#000000")
              .style("stroke-width", 1)
              .style("stroke", "#000000")
              .style("opacity", 0)

          // // build temporal rectangles
          // append to transformed matrix
          var TemporalRectangles = transformedMatrix.selectAll('.c2p3.matrixTemporalRect')
              // bind data (count of observations on each date) to each element
              .data(csv_daily_count_2019)
              // create element for each datum
              .enter()
              // append rectangle for each element
              .append("rect")
              // set x value based on date and xscale
              .attr("x", function(d){
                return xscale(d[self.timestep_c2p3])
              })
              // set y value to 0
              .attr("y", 0)
              // set width based on bandwidth of x scale
              .attr("width", xscale.bandwidth())
              // set height to height of matrix
              .attr("height", self.matrix_height_c2p3)
              // set class based on date
              .attr("class", function(d) {
                return 'c2p3 matrixTemporalRect time' + d[self.timestep_c2p3];
              })
              // style rectangles to be transparent but available for selection
              .style("fill", "#000000")
              .style("stroke-width", 0.6)
              .style("stroke", "#000000")
              .style("opacity", 0)
              // trigger interactions and coordination with map on mouseover
              .on("mouseover", function(d) {
                self.mouseoverRect_c2p3(d, tooltip);
              })
              .on("mousemove", function(d) {
                let mouse_x = loc_matrix_c2p3.x
                let mouse_y = loc_matrix_c2p3.y
                self.mousemoveRect_c2p3(d, tooltip, mouse_x, mouse_y);
              })
              .on("mouseout", function(d) {
                self.mouseoutRect_c2p3(d, tooltip);
              })
        },
        mousemoveSeg_c2p2(data, tooltip, mouse_x, mouse_y) {
          // find # of observations for selected reach
          var num_obs = data.properties.total_count;

          // bind mouse coordinates and # of obs to tooltip
          tooltip
              .attr("y", mouse_y - 10)
              .attr("x", mouse_x + 10)
              .attr("text-align", "left")
              .text(this.d3.format(',')(num_obs) + " obs.")
              .raise()
        },
        mouseoverSeg_c2p2(data, tooltip) {

          // select all *temporal* rectangles and set fill and stroke to none
          // so they can't be selected
          this.d3.selectAll(".c2p2.matrixTemporalRect")
              .style("fill", "None")
              .style("stroke", "None")

          // build y scale for hover bar chart
          let barMax = this.matrix_height_c2p2/16
          let yScale_barChart_c2p2 = this.d3.scaleLinear()
              // set range of possible output values 
              .range([barMax, 0])
              // define range of input values
              .domain([1, this.temporalCountMax_c2p2]);
          
          // re-build y scale for matrix
          let yScale_matrix_c2p2 = this.d3.scaleBand()
              .range([this.matrix_height_c2p2, 0])
              .domain(this.myVars_c2p2)
              .padding(0.1);

          // make tooltip visible
          tooltip
              .style("opacity", 1);
          // select all spatial rectangles and make mostly opaque to dim matrix
          this.d3.selectAll(".c2p2.matrixSpatialRect")
              .style("opacity", 0.8)
              .style("stroke-width", 1);
          // select background rectangle and remove filter
          this.d3.selectAll(".c2p2.matrixBkgdRect")
              .attr("filter", "url(#shadow3)")
          // select matrix cells for highlighted segment and raise
          for (let i = 0; i < this.myGroups_c2p2.length; i++) {
              let seg_year = this.myGroups_c2p2[i]
              let barHeight;
              this.d3.selectAll(".c2p2.cell.segment" + data.properties.seg_id_nat + ".timestep" + seg_year) 
                  .attr("height", function(i) {
                      if (data.properties.year_count[seg_year] > 0) {
                        barHeight = (barMax - yScale_barChart_c2p2(data.properties.year_count[seg_year]))+1;
                        return barHeight;
                      }
                  })
                  .attr("y", function(i){
                      if (data.properties.year_count[seg_year] > 0) {
                          return yScale_matrix_c2p2(data.properties.seg_id_nat) - barHeight; 
                      }
                  })
                  .raise()
              // turn on text for cells associated with segment
              this.d3.selectAll(".c2p2.cellText.seg" + data.properties.seg_id_nat + ".year" + seg_year) 
                  .attr("y", function(d) {
                      return yScale_matrix_c2p2(data.properties.seg_id_nat) - barHeight - 5; 
                  })
                  .attr("fill", "#ffffff")
                  .raise()   
          }
          // select the spatial rectangle corresponding to the hightlighted segment
          if (data.properties.total_count > 0) {
              // select the spatial rectangle corresponding to the hightlighted segment
              this.d3.selectAll(".c2p2.matrixSpatialRect.seg" + data.properties.seg_id_nat) 
                  // set stroke width, opacity, and stroke color
                  // based on whether segment has any observations in record
                  //.style("fill", "#e0e0e0")
                  .style("stroke-width", 0)
                  .style("opacity", 1)
                  .style("stroke", "None")
                  .attr("height", 0.5)
                  .raise()
          } else {
              // select the spatial rectangle corresponding to the hightlighted segment
              this.d3.selectAll(".c2p2.matrixSpatialRect.seg" + data.properties.seg_id_nat) 
                  // set stroke width, opacity, and stroke color
                  // based on whether segment has any observations in record
                  .style("fill", "#000000")
                  .style("stroke-width", 0.5)
                  //.style("stroke-dasharray", ("2,4"))
                  .style("opacity", 1)
                  .style("stroke", "#e0e0e0")
                  .attr("height", 3)
                  // raise the spatial rectangle
                  .raise();
          }
          // dim reservoirs, bay, and river segments
          this.d3.selectAll(".c2p2.reservoirs")
              .style("fill", "#164152")
              .style("stroke", "#164152")
          this.d3.selectAll(".c2p2.delaware_bay")
              .style("fill", "#164152")
          this.d3.selectAll(".c2p2.river_segments")
              .style("stroke", "#164152")
          // select mouseovered segment and set to white with a shadow
          // and raise segment
          this.d3.selectAll(".c2p2.river_segments.seg" + data.properties.seg_id_nat) 
              .style("stroke", "#ffffff")
              .attr("opacity", 1)
              .attr("filter", "url(#shadow1)")
              .raise()
        },
        mouseoutSeg_c2p2(data, tooltip) {

          // select all *temporal* rectangles and set fill and stroke back
          // to black so that they are selectable
          this.d3.selectAll(".c2p2.matrixTemporalRect")
              .style("fill", "#000000")
              .style("stroke", "#000000")

          // re-build y scale for matrix cells y placement
          let yScale_matrix_c2p2 = this.d3.scaleBand()
              .range([this.matrix_height_c2p2, 0])
              .domain(this.myVars_c2p2)
              .padding(0.1);

          // hide tooltip
          tooltip
              .style("opacity", 0)
          // select all spatial rectangles and set opacity back to zero
          // with black fill and stroke
          this.d3.selectAll(".c2p2.matrixSpatialRect")
              //.style("stroke", "None")
              .style("stroke", "#000000")
              .style("fill", "#000000")
              .style("stroke-width", 1)
              .style("opacity", 0)
              .attr("height", yScale_matrix_c2p2.bandwidth())
          // select spatial rectangle corresponding to segment and lower
          this.d3.selectAll(".c2p2.matrixSpatialRect" + data.properties.seg_id_nat) 
              .lower()
          // lower spatial cells associated with segment
          this.d3.selectAll(".c2p2.cell.segment" + data.properties.seg_id_nat) 
              .attr("height", yScale_matrix_c2p2.bandwidth())
              .attr("y", yScale_matrix_c2p2(data.properties.seg_id_nat)) 
              .lower()
          // turn off text for cells associated with segment
          this.d3.selectAll(".c2p2.cellText.seg" + data.properties.seg_id_nat) 
              .attr("y", function(d) {
                  return yScale_matrix_c2p2(data.properties.seg_id_nat) - 5; 
              })
              .attr("fill", "None")
              .lower()
          // un-dim riversegments, reservoirs, and bay
          // and reset to default styling
          this.d3.selectAll(".c2p2.river_segments")
              .style("stroke", "#6399ba")
          this.d3.selectAll(".c2p2.river_segments.seg" + data.properties.seg_id_nat) 
              .style("stroke", "#6399ba")
              .attr("opacity", 1)
              .attr("filter","None")
              .lower()
          this.d3.selectAll(".c2p2.reservoirs")
              .style("fill", "#6399ba")
              .style("stroke", "#6399ba")
              .lower()
          this.d3.selectAll(".c2p2.delaware_bay")
              .style("fill", "#6399ba")
              .lower()
          // reset filter on background rectangle and lower
          this.d3.selectAll(".c2p2.matrixBkgdRect")
              .attr("filter", "url(#shadow2)")
              .lower()
        },
        mousemoveRect_c2p2(data, tooltip, mouse_x, mouse_y) {
          // identify selected year
          var selected_year = data[this.timestep_c2p2];
          // bind mouse coordinates and year to tooltip
          tooltip
              .attr("y", mouse_y - 15)
              .attr("x", mouse_x - 39)
              .attr("text-align", "left")
              .text(selected_year)
              .raise()
        },
        mouseoverRect_c2p2(data, tooltip) {
          const  self = this;
          // select all the *spatial* rectangles and make them unselectable
          // by setting fill to none and stroke to none
          this.d3.selectAll(".c2p2.matrixSpatialRect")
              .style("fill", "None")
              .style("stroke", "None")

          // show tooltip
          tooltip
              .style("opacity", 1);
          // select background rectangle and remove filter
          this.d3.selectAll(".c2p2.matrixBkgdRect")
              .attr("filter", "url(#shadow3)")
          // select all temporal rectangles and make mostly opaque
          // with thick stroke for selection
          this.d3.selectAll(".c2p2.matrixTemporalRect")
              .style("opacity", 0.8)
              .style("stroke-width", 2);
          // select mouseovered rectangle and set opacity to zero
          this.d3.selectAll(".c2p2.matrixTemporalRect.time" + data[self.timestep_c2p2])
              .style("opacity", 0)
          // dim reservoirs, bay, and river segments
          this.d3.selectAll(".c2p2.reservoirs")
              .style("fill", "#164152")
              .style("stroke", "#164152")
          this.d3.selectAll(".c2p2.delaware_bay")
              .style("fill", "#164152")
          this.d3.selectAll(".c2p2.river_segments")
              .style("stroke", "#164152")
          // select all river segments that have data in highlighted year
          // and make white
          this.d3.selectAll(".c2p2.river_segments." + self.timestep_c2p2 + data[self.timestep_c2p2])
              .style("stroke", "#ffffff")
              .attr("opacity", 1)
              .raise()
        },
        mouseoutRect_c2p2(data, tooltip) {
          const self = this;
          // select all *spatial* rectangles and reset fill and stroke to black
          this.d3.selectAll(".c2p2.matrixSpatialRect")
              .style("fill", "#000000")
              .style("stroke", "#000000")

          // hide tooltip
          tooltip
              .style("opacity", 0)
          // select all temporal rectangles and set fill and stroke back to black
          // with no opacity (so available for selection but not visible)
          this.d3.selectAll(".c2p2.matrixTemporalRect")
              .style("stroke", "#000000")
              .style("fill", "#000000")
              .style("stroke-width", 2)
              .style("opacity", 0)
          // un-dim river segments, reservoirs, and bay
          // lower elements as needed
          this.d3.selectAll(".c2p2.river_segments")
              .style("stroke", "#6399ba")
              .attr("opacity", 1)
          this.d3.selectAll(".c2p2.river_segments." + self.timestep_c2p2 + data[self.timestep_c2p2])
              .lower()
          this.d3.selectAll(".c2p2.reservoirs")
              .style("fill", "#6399ba")
              .style("stroke", "#6399ba")
              .lower()
          this.d3.selectAll(".c2p2.delaware_bay")
              .style("fill", "#6399ba")
              .lower()
          // select background rectangle and replace filter
          this.d3.selectAll(".c2p2.matrixBkgdRect")
              .attr("filter", "url(#shadow2)")
              .lower()
        },
        mousemoveSeg_c2p3(data, tooltip, mouse_x, mouse_y) {
          // find # of obs in 2019 for selected segment
          var num_obs = data.properties.year_count['2019'];

          // bind mouse coordinates and # obs to tooltip
          tooltip
              .attr("y", mouse_y - 15)
              .attr("x", mouse_x + 15)
              .attr("text-align", "left")
              .text(this.d3.format(',')(num_obs) + " obs.")
              .raise()
        },
        mouseoverSeg_c2p3(data, tooltip) {

          // select all *temporal* rectangles and set fill and stroke to none
          // so they can't be selected
          this.d3.selectAll(".c2p3.matrixTemporalRect")
              .style("fill", "None")
              .style("stroke", "None")

          // make tooltip visible
          tooltip
              .style("opacity", 1);
          // select all spatial rectangles and make mostly opaque to dim matrix
          this.d3.selectAll(".c2p3.matrixSpatialRect")
              .style("opacity", 0.7)
              .style("stroke-width", 1);
          // select background rectangle and remove filter
          this.d3.selectAll(".c2p3.matrixBkgdRect")
              .attr("filter", "url(#shadow3)")
          // select matrix cells for highlighted segment and raise
          this.d3.selectAll(".c2p3.cell.segment" + data.properties.seg_id_nat) 
              .raise()
          // select the spatial rectangle corresponding to the hightlighted segment
          this.d3.selectAll(".c2p3.matrixSpatialRect.seg" + data.properties.seg_id_nat) 
              // set stroke width, opacity, and stroke color
              // based on whether segment has any observations in record
              .style("stroke-width", function(data) {
                if (data.properties.year_count['2019'] > 0) {
                  return 0;
                } else {
                  return 0.5;
                }
              })
              .style("opacity", function(data) {
                if (data.properties.year_count['2019'] > 0) {
                  return 0;
                } else {
                  return 1;
                }
              })
              .style("stroke", function(data) {
                if (data.properties.year_count['2019'] > 0) {
                  return "None";
                } else {
                  return "#ffffff";
                }
              })
              // raise the spatial rectangle
              .raise()
          // dim reservoirs, bay, and river segments
          this.d3.selectAll(".c2p3.reservoirs")
              .style("fill", "#164152")
              .style("stroke", "#164152")
          this.d3.selectAll(".c2p3.delaware_bay")
              .style("fill", "#164152")
          this.d3.selectAll(".c2p3.river_segments")
              .style("stroke", "#164152")
          // select mouseovered segment and set to white with a shadow
          // and raise segment
          this.d3.selectAll(".c2p3.river_segments.seg" + data.properties.seg_id_nat) 
              .style("stroke", "#ffffff")
              .attr("opacity", 1)
              .attr("filter", "url(#shadow1)")
              .raise()
        },
        mouseoutSeg_c2p3(data, tooltip) {

          // select all *temporal* rectangles and set fill and stroke back
          // to black so that they are selectable
          this.d3.selectAll(".c2p3.matrixTemporalRect")
              .style("fill", "#000000")
              .style("stroke", "#000000")
              .style("stroke-width", 2)

          // hide tooltip
          tooltip
              .style("opacity", 0)
          // select all spatial rectangles and set opacity back to zero
          // with black fill and stroke
          this.d3.selectAll(".c2p3.matrixSpatialRect")
              .style("stroke", "None")
              .style("stroke", "#000000")
              .style("fill", "#000000")
              .style("stroke-width", 2)
              .style("opacity", 0)
          // select spatial rectangle corresponding to segmend and lower
          this.d3.selectAll(".c2p3.matrixSpatialRect" + data.properties.seg_id_nat) 
              .lower()
          // lower matrix cells associated with segment
          this.d3.selectAll(".c2p3.cell.segment" + data.properties.seg_id_nat) 
              .lower()
          // un-dim riversegments, reservoirs, and bay
          // and reset to default styling
          this.d3.selectAll(".c2p3.river_segments")
              .style("stroke", "#6399ba")
          this.d3.selectAll(".c2p3.river_segments.seg" + data.properties.seg_id_nat) 
              .style("stroke", "#6399ba")
              .attr("opacity", 1)
              .attr("filter","None")
              .lower()
          this.d3.selectAll(".c2p3.reservoirs")
              .style("fill", "#6399ba")
              .style("stroke", "#6399ba")
              .lower()
          this.d3.selectAll(".c2p3.delaware_bay")
              .style("fill", "#6399ba")
              .lower()
          // reset filter on background rectangle and lower
          this.d3.selectAll(".c2p3.matrixBkgdRect")
              .attr("filter", "url(#shadow2)")
              .lower()
        },
        mousemoveRect_c2p3(data, tooltip, mouse_x, mouse_y) {
          // identify selected date
          var selected_year = data[this.timestep_c2p3];

          // set tooltip x coordinate based on mouse coordinates and position w/i matrix
          if (mouse_x > 70){
            var x_position = mouse_x - 60
          } else {
            var x_position = mouse_x + 20
          }

          // bind adjusted mouse coordinates and year to tooltip
          tooltip
              .attr("y", mouse_y - 20)
              .attr("x", x_position)
              .attr("text-align", "left")
              .text(selected_year)
              .raise()

        },
        mouseoverRect_c2p3(data, tooltip) {
          const self = this;
          // select all the *spatial* rectangles and make them unselectable
          // by setting fill to none and stroke to none
          this.d3.selectAll(".c2p3.matrixSpatialRect")
              .style("fill", "None")
              .style("stroke", "None")

          // show tooltip
          tooltip
              .style("opacity", 1)
          // select background rectangle and remove filter
          this.d3.selectAll(".c2p3.matrixBkgdRect")
              .attr("filter", "url(#shadow3)")
          // select all temporal rectangles and make mostly opaque
          this.d3.selectAll(".c2p3.matrixTemporalRect")
              .style("opacity", 0.85)
              .style("stroke-width", 0.6)
          // select mouseovered rectangle and set opacity to zero
          this.d3.selectAll(".c2p3.matrixTemporalRect.time" + data[self.timestep_c2p3])
              .style("opacity", 0)
          // dim reservoirs, bay, and river segments
          this.d3.selectAll(".c2p3.reservoirs")
              .style("fill", "#164152")
              .style("stroke", "#164152")
          this.d3.selectAll(".c2p3.delaware_bay")
              .style("fill", "#164152")
          this.d3.selectAll(".c2p3.river_segments")
              .style("stroke", "#164152")
          // select all river segments that have data on highlighted date
          // and make white
          this.d3.selectAll(".c2p3.river_segments." + self.timestep_c2p3 + data[self.timestep_c2p3])
              .style("stroke", "#ffffff")
              .attr("opacity", 1)
              .raise()
        },
        mouseoutRect_c2p3(data, tooltip) {
          const self = this;

          // select all *spatial* rectangles and reset fill and stroke to black
          this.d3.selectAll(".c2p3.matrixSpatialRect")
              .style("fill", "#000000")
              .style("stroke", "#000000")
              .style("stroke-width", 2)

          // hide tooltip
          tooltip
              .style("opacity", 0)
          // select all temporal rectangles and set fill and stroke back to black
          // with no opacity (so available for selection but not visible)
          this.d3.selectAll(".c2p3.matrixTemporalRect")
              .style("opacity", 0)
          // un-dim river segments, reservoirs, and bay
          // lower elements as needed
          this.d3.selectAll(".c2p3.river_segments")
              .style("stroke", "#6399ba")
              .attr("opacity", 1)
          this.d3.selectAll(".c2p3.river_segments." + self.timestep_c2p3 + data[self.timestep_c2p3])
              .style("stroke", "#6399ba")
              .attr("opacity", 1)
              .lower()
          this.d3.selectAll(".c2p3.reservoirs")
              .style("fill", "#6399ba")
              .style("stroke", "#6399ba")
              .lower()
          this.d3.selectAll(".c2p3.delaware_bay")
              .style("fill", "#6399ba")
              .lower()
          // select background rectangle and replace filter
          this.d3.selectAll(".c2p3.matrixBkgdRect")
              .attr("filter", "url(#shadow2)")
              .lower()
        }
      }
  }

</script>

<style scoped lang="scss">
#section_2 {
  margin-bottom: 0;
  font-family: 'Open Sans', arial, sans-serif;
  font-weight: 300;
  font-size: 1em;
  background-color: black;
  color: #525252;
  text-align: center;

  .row {
    margin-top: 10vh;
    margin-bottom: 10vh;
  }

  #filter_row {
    height: 1vh;
  }

  .narrative_text {
    text-align: left;
    color: #cecece;
    margin-right: 7vh;
    font-size: 1.2vw;
  }

  .narrative {
    background-color: black;
    font-size: 0.2em;
    margin-right: 0.2vh;
  }
}
</style>
<style lang="scss">
// this is a unscoped style tag, since the elements were added with d3 after Vue processed the template we to target the selectors we have to use an unscoped style block--that means these are global styles
.narrative {
  background-color: black;
  color: #cecece;
}

.c2p2.cellText {
  font-size: 0.45em;
  //text-anchor: middle;
}

#c2p2_matrix_min {
  font-weight: 700;
  color: #302D85;
}
#c2p2_matrix_max {
  font-weight: 700;
  color: #EBE72C;
}

#c2p2_matrix_bold {
  font-weight: 700;
  font-style: italic;
}

#c2p3_min_t {
  color: #354198;
}

#c2p3_max_t {
  color: #AD1F28;
}

#tip_text {
  font-size: 0.75em;
  color: #858585;
  margin-right: 0.5vh;
}

.delaware_bay {
  fill: #6399ba;
}

.river_segments {
  stroke: #6399ba;
  stroke-linecap: round;
  stroke-width: 0.5px;
}

.reservoirs {
  fill:  #6399ba;
  stroke: #6399ba;
}

//.matrixAxis {
//  color: #7a7a7a; /* #7a7a7a */
//}

.chartAxis {
  color: #999999;
  font-size: .60em;
}

.legend {
  font-family: 'Open Sans', arial, sans-serif;
  font-size: 0.6em;
  fill: #999999;
}
.legendAxis {
  color: #ffffff;
  font-size: 1em;;
}
.chartAxisText {
  fill: #999999;
  font-size: 1.1vh;
}

.tooltip {
  fill: #ffffff;
  font-family: sans-serif;
  font-size: 0.7em;
  font-weight: bold;
  line-height: 1em;
}
</style>
