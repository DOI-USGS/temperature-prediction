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
            The USGS and
            state and local agencies monitor stream temperature across the Delaware
            River Basin, collecting continuous and discrete measurements of water temperature.
            In the past 40 years, stream temperature has been measured at more than
            1,300 sites throughout the basin. Expansion to the monitoring network since 2018
            is rapidly increasing the volume of available data.
          </p>
          <br>
          <p class="narrative_text">
            This certainly seems like a lot of information, and it does
            represent a large investment of resources on the part of the USGS and stakeholders
            throughout the basin. However, in order to evaluate trends, predict water temperatures,
            or forecast future water temperatures, we must consider how much information is
            available to provide as input to a model at any given point in time, and at any
            given location within the basin.
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
                stdDeviation="1.5"
                flood-color="#303030"
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
          timestep_c2p3: 'date',
          chart_margin: {top: 30, right: 60, bottom: 45, left: 5},
          chart_width: null, // this will get a value in the mounted hook
          chart_height: null, // this will get a value in the mounted hook
          matrix_margin: {top: 15, right: 15, bottom: 15, left: 35},
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
          map_projection: null,
          loc_matrix_c2p2: null,
          loc_map_c2p3: null
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
          this.map_height = window.innerHeight * 0.8;
          this.map_margin = {top: 5, right: 5, bottom: 5, left: 5};

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
              .left(.3) // .15 centered, .45 far right
              .top(.94)
              .units(self.d3.geoScaleKilometers)
              .distance(50)
              .label("50 kilometers")
              .labelAnchor("middle")
              .tickSize(null)
              .tickValues(null);

          this.scaleBarBottom_c2p1 = self.d3.geoScaleBar()
              .orient(self.d3.geoScaleTop)
              .projection(map_projection_c2p1)
              .size([this.map_width, this.map_height])
              .left(.3) // .15 centered, .45 far right
              .top(.95)
              .units(self.d3.geoScaleMiles)
              .distance(25)
              .label("25 miles")
              .labelAnchor("middle")
              .tickSize(null)
              .tickValues(null);

          //create Albers equal area conic projection centered on DRB for ch2 panel 2 and 3 maps
          this.map_projection = self.d3.geoAlbers()
              .center([0, 40.658894445])
              .rotate([74.6, 0, 0]) //75.363333335 centered, 76.2 far right, 74.6 far left
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
              .left(.1) // .15 centered, .45 far right
              .top(.94)
              .units(self.d3.geoScaleKilometers)
              .distance(50)
              .label("50 kilometers")
              .labelAnchor("middle")
              .tickSize(null)
              .tickValues(null);

          this.scaleBarBottom = self.d3.geoScaleBar()
              .orient(self.d3.geoScaleTop)
              .projection(this.map_projection)
              .size([this.map_width, this.map_height])
              .left(.1) // .15 centered, .45 far right
              .top(.95)
              .units(self.d3.geoScaleMiles)
              .distance(25)
              .label("25 miles")
              .labelAnchor("middle")
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
            self.d3.json(self.publicPath + "data/segment_geojson.json"),
            self.d3.json(self.publicPath + "data/observed_site_locations.json"),
            self.d3.json(self.publicPath + "data/NHDWaterbody_DelawareBay_pt6per_smooth.json"),
            self.d3.json(self.publicPath + "data/reservoirs.json"),
            self.d3.json(self.publicPath + "data/dams.json"),
            self.d3.json(self.publicPath + "data/Segments_subset_4per_smooth_10miBuffer_diss.json")
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
          let json_basin_buffered = data[11];

          // translate topojsons
          let segments = json_segments.features;
          let stations = json_obs_stations.features;
          let bay = topojson.feature(json_bay, json_bay.objects.NHDWaterbody_DelawareBay_pt6per_smooth);
          let reservoirs = json_reservoirs.features;
          let dams = json_dams.features;
          let basin_buffered = topojson.feature(json_basin_buffered, json_basin_buffered.objects.Segments_subset_4per_smooth_10miBuffer_diss);
          
          // join csv flow data to geojson segments
          // ch 2 map segments
          segments = this.joinData(segments, csv_flow);

          // set stroke width scale
          // for ch 2 map segments
          let widthScale_c2 = this.makeWidthScale_c2(csv_flow);

          // Set up Ch 2 panel 1 -
          // add DRB segments to the panel 1 map
          this.setMap_c2p1(segments, stations, bay, this.map_c2p1, this.map_path_c2p1, this.scaleBarTop_c2p1, this.scaleBarBottom_c2p1, widthScale_c2);
          // add bar chart to panel 1
          this.setBarChart_c2p1(csv_agency_count);

          // Set up Ch 2 panel 2 -
          // add DRB segments to the panel 2 map
          this.setMap_c2p2(this.map_width, this.map_height, segments, bay, reservoirs, basin_buffered, this.map_c2p2, this.map_path, this.scaleBarTop, this.scaleBarBottom, widthScale_c2);
          // create panel 2 matrix
          this.createMatrix_c2p2(csv_matrix_annual, csv_annual_count, segments);

          // Set up Ch 2 panel 3 -
          // add DRB segments to the panel 3 map
          this.setMap_c2p3(this.map_width, this.map_height, segments, bay, reservoirs, basin_buffered, this.map_c2p3, this.map_path, this.scaleBarTop, this.scaleBarBottom, widthScale_c2);
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
              let geojsonKey = segments[a].seg_id_nat;
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
        setMap_c2p1(segments, stations, bay, map, map_path, scaleBarTop, scaleBarBottom, widthScale_c2) {
          // add delaware bay to map
          var drb_bay = map.append("path")
              .datum(bay)
              .attr("class", "c2p1 delaware_bay")
              .attr("d", map_path)

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
                return 'c2p1 river_segments seg' + d.seg_id_nat
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
            map.append("g").call(this.scaleBarTop);
            map.append("g").call(this.scaleBarBottom);
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
            .padding(0.3)


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
            .style("text-anchor", "start")


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
            .attr("x", -this.chart_height / 1.15)
            .attr("text-anchor", "starts")
            .attr("class", "c2p1 chartAxisText")
            .text("# of Measurements")
            .attr("transform", "rotate(-90)")

        // set the tick mark lines to background color
        svgChart.selectAll(".tick line").attr("stroke", "#000000")

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
        setMap_c2p2(map_width, map_height, segments, bay, reservoirs, basin_buffered, map, map_path, scaleBarTop, scaleBarBottom, widthScale_c2){
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
          var loc_map_c2p2
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
              .attr("x", map_width*0.6)
              .attr("y", 25)
              .attr("width", map_width*0.4)
              .attr("height", map_height)
              .append("xhtml:body")
              .attr("class", "c2p2 narrative")
              .html('<p id="insert-text">The reality is that we cannot measure water temperature everywhere at all times.\
                Therefore, records of stream temperature have gaps in space and time. In the matrix chart,\
                right, the columns represent years, and each row represents a stream reach within the\
                 basin. If every stream reach had at least <span id="c2p2_matrix_bold">one measurement of \
                 water temperature</span> at a representative monitoring station <span id="c2p2_matrix_bold">each year</span>, the chart \
                  would be entirely <span id="c2p2_matrix_min"><b>blue</b></span>. If every reach \
                  had at least <span id="c2p2_matrix_bold">one measurement of water temperature</span>  on \
                  <span id="c2p2_matrix_bold">each day of each \
                  year</span>, the chart would be entirely <span id="c2p2_matrix_max"><b>\
                  yellow</b></span>. Current monitoring efforts cannot reach either of these baselines. Black \
                  sections in the chart therefore represent where and when we are "in the dark" about stream \
                  temperature </p><p id="tip_text"><i>Hover over the stream network, left, and the matrix chart, right, to\
                  explore the availability of data in space in time.</i></p>')


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
                self.mousemoveSeg_c2p2(d, tooltip, mouse_x, mouse_y); // position
              })
              .on("mouseout", function(d) {
                self.mouseoutSeg_c2p2(d, tooltip);
              });

          // add basin_buffered basin to map - for selection only
          var drb_basin_buffered = map.append("path")
              // bind data to element
              .datum(basin_buffered)
              // set class for styling
              .attr("class", "c2p2 basin_buffered")
              // project element
              .attr("d", map_path)
              // style for selection only
              .style("fill", "#000000")
              .style("opacity", 0)
              // trigger dimming
              .on("mouseover", function(d) {
                self.mouseoverDimSegs_c2p2(d)
              })
              .on("mouseout", function(d) {
                self.mouseoutDimSegs_c2p2(d)
              });

          // add delaware bay to map
          var drb_bay = map.append("path")
              // bind data to element
              .datum(bay)
              // assign class for styling
              .attr("class", "c2p2 delaware_bay")
              // project element
              .attr("d", map_path)
              // trigger dimming
              .on("mouseover", function(d) {
                self.mouseoverDimSegs_c2p2(d)
              })
              .on("mouseout", function(d) {
                self.mouseoutDimSegs_c2p2(d)
              });

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
              .style("stroke-width", 1)

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
                seg_class += d.seg_id_nat
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

          // append tooltip for matrix to the matrix svg
          var tooltip = svgMatrix.append("text")
              .attr("class", "c2p2 tooltip matrix")

          // append the body of the matrix (transformed by margins)
          svgMatrix.append("g")
              .attr("class", "c2p2 transformedMatrix")
              .attr("transform",
                  "translate(" + self.matrix_margin.left + "," + self.matrix_margin.top + ")")

          // read in data for matrix
          var myGroups = self.d3.map(csv_matrix_annual, function(d){return d[self.timestep_c2p2];}).keys()
          var myVars = self.d3.map(csv_matrix_annual, function(d){return d.seg_id_nat;}).keys()

          // build x scale
          var x = self.d3.scaleBand()
              .range([0, self.matrix_width_c2p2])
              .domain(myGroups)
              .padding(0.1);

          // build y scale
          var y = self.d3.scaleBand()
              .range([self.matrix_height_c2p2, 0])
              .domain(myVars)
              .padding(0.1);

          // build array of all values of observation counts
          var domainArrayTemporalCounts = [];
          for (var i=0; i<csv_matrix_annual.length; i++){
            var val = parseFloat(csv_matrix_annual[i]['obs_count']);
            domainArrayTemporalCounts.push(val);
          };

          // Find maximum count of observations to use in color scale
          var temporalCountMax = Math.round(Math.max(...domainArrayTemporalCounts));

          // build color scale
          var myColor = self.d3.scaleSequential()
              .interpolator(self.d3.interpolatePlasma) /* interpolatePlasma */
              // .domain([temporalCountMax,1]) // if INVERTING color scale
              .domain([1, temporalCountMax]) // if NOT INVERTING color scale

          // add the cells to the matrix
          // select transformed matrix
          var transformedMatrix = self.d3.select(".c2p2.transformedMatrix")
          // append rectangles to the matrix
          var matrixCells = transformedMatrix.selectAll('matrixCells')
              // bind data to rectangles
              .data(csv_matrix_annual, function(d) {
                if (d.total_obs > 0) {
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

          // add the overlaid rectangles (temporal and spatial) that will be used for selection
          self.createMatrixRectangles_c2p2(csv_matrix_annual, csv_annual_count, segments, tooltip);

          // draw x axes
          transformedMatrix.append("g")
              .style("font-size", 10)
              .attr("transform", "translate(" + 0 + "," + self.matrix_height_c2p2 + ")")
              .attr("class", "c2p2 matrixAxis bottom")
              .call(self.d3.axisBottom(x).tickSize(0).tickValues(['1980', '1990', '2000', '2010', '2019']).tickPadding(4)) /* '1980-01', '1990-01', '2000-01', '2010-01', '2019-01' */
          transformedMatrix.append("g")
              .style("font-size", 0)
              .attr("transform", "translate(" + 0 + "," + 0 + ")")
              .attr("class", "c2p2 matrixAxis top")
              .call(self.d3.axisTop(x).tickSize(0))

          // draw y axes
          transformedMatrix.append("g")
              .style("font-size", 0)
              .attr("class", "c2p2 matrixAxis left")
              .call(self.d3.axisLeft(y).tickSize(0))
          transformedMatrix.append("g")
              .style("font-size", 0)
              .attr("transform", "translate(" + self.matrix_width_c2p2 + "," + 0 + ")")
              .attr("class", "c2p2 matrixAxis right")
              .call(self.d3.axisRight(y).tickSize(0))
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

          // // reset coordinates when mousemoves over matrix svg
          svg_matrix_c2p2.addEventListener('mousemove', function(evt){
            self.loc_matrix_c2p2 = cursorPoint_matrix_c2p2(evt);
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
              .attr("y", function(d) { return yscale(d.seg_id_nat) })
              // set width to width of matrix
              .attr("width", self.matrix_width_c2p2)
              // set height based on yscale bandwidth
              .attr("height", yscale.bandwidth())
              // set class based on segment id
              .attr("class", function(d) {
                return 'c2p2 matrixSpatialRect seg' + d.seg_id_nat;
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
                let mouse_x = self.loc_matrix_c2p2.x
                let mouse_y = self.loc_matrix_c2p2.y
                self.mousemoveRect_c2p2(d, tooltip, mouse_x, mouse_y);
              })
              .on("mouseout", function(d) {
                self.mouseoutRect_c2p2(d, tooltip);
              })
        },
        setMap_c2p3(map_width, map_height, segments, bay, reservoirs, basin_buffered, map, map_path, scaleBarTop, scaleBarBottom, widthScale_c2){
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

          // reset coordinates when mousemoves over map svg
          svg_map_c2p3.addEventListener('mousemove', function(evt){
            self.loc_map_c2p3 = cursorPoint_c2p3(evt);
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
              .attr("x", map_width*0.6)
              .attr("y", 25)
              .attr("width", map_width*0.4)
              .attr("height", map_height)
              .append("xhtml:body")
              .attr("class", "c2p3 narrative")
              .html('<p>If we look more closely at a single year, we can \
            see the dynamics of stream temperature itself. \
            Streams are <span id="c2p3_min_t">\
            cooler</span> in the winter and <span id="c2p3_max_t">warmer</span> in the summer, and\
            the warm periods are longer in the southern portion of the basin.</p><p>But the dynamics of \
            stream temperature are not identical in all stream reaches. Reach-level temperatures are \
            influenced by many factors, such as surrounding land use, the orientation and size of the stream, \
            and inflow from upstream reaches. For example, reaches within or immediately below reservoirs remained \
            cool throughout the 2019 summer period.</p>\
            <p>Through modeling, we can explore reach-level patterns and improve our understanding of \
            stream temperature dynamics. Models allow us to \
            estimate temperatures in unobserved reaches and predict how stream \
            temperatures may respond as the climate changes.</p>\
            <p id="tip_text"><i>Hover over the stream network, left, and the matrix chart, right, to\
            explore the availability of data in space in time.</i></p>')

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
                let mouse_x = self.loc_map_c2p3.x
                let mouse_y = self.loc_map_c2p3.y
                self.mousemoveSeg_c2p3(d, tooltip, mouse_x, mouse_y);
              })
              .on("mouseout", function(d) {
                self.mouseoutSeg_c2p3(d, tooltip);
              });

          // add basin_buffered basin to map
          var drb_basin_buffered = map.append("path")
              // bind data to element
              .datum(basin_buffered)
              // set class for styling
              .attr("class", "c2p3 basin_buffered")
              // project element
              .attr("d", map_path)
              // style for selection only
              .style("fill", "#000000")
              .style("opacity", 0)
              // trigger dimming
              .on("mouseover", function(d) {
                self.mouseoverDimSegs_c2p3(d)
              })
              .on("mouseout", function(d) {
                self.mouseoutDimSegs_c2p3(d)
              });

          // add delaware bay to map
          var drb_bay = map.append("path")
              // bind data to element
              .datum(bay)
              // add class for styling
              .attr("class", "c2p3 delaware_bay")
              // project
              .attr("d", map_path)
              // trigger dimming
              .on("mouseover", function(d) {
                self.mouseoverDimSegs_c2p3(d)
              })
              .on("mouseout", function(d) {
                self.mouseoutDimSegs_c2p3(d)
              });

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
              .style("stroke-width", 1)

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
                seg_class += d.seg_id_nat
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
                let mouse_x = self.loc_map_c2p3.x
                let mouse_y = self.loc_map_c2p3.y
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
              .padding(0.1);

          // build y scale
          var y = self.d3.scaleBand()
              .range([self.matrix_height_c2p3, 0])
              .domain(myVars)
              .padding(0.1);

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

          // // add the cells to the matrix
          // select transformed matrix
          var transformedMatrix = self.d3.select(".c2p3.transformedMatrix")
          // append rectangles to the matrix
          var matrixCells = transformedMatrix.selectAll('matrixCells')
              // bind data to rectangles
              .data(csv_matrix_daily_2019, function(d) {
                if (d.total_obs > 0) {
                  return d[self.timestep_c2p3] +':'+ d.seg_id_nat; /* d.seg_id_nat */
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
              .call(self.d3.axisBottom(x).tickSize(0).tickValues(['2019-01-01', '2019-03-01', '2019-05-01', '2019-07-01', '2019-09-01', '2019-11-01']).tickPadding(4)) //.tickFormat(formatTime(parseTime()))
          transformedMatrix.append("g")
              .style("font-size", 0)
              .attr("transform", "translate(" + 0 + "," + 0 + ")")
              .attr("class", "c2p3 matrixAxis top")
              .call(self.d3.axisTop(x).tickSize(0))

          // draw y axes
          transformedMatrix.append("g")
              .style("font-size", 0)
              .attr("class", "c2p3 matrixAxis left")
              .call(self.d3.axisLeft(y).tickSize(0))
          transformedMatrix.append("g")
              .style("font-size", 0)
              .attr("transform", "translate(" + self.matrix_width_c2p3 + "," + 0 + ")")
              .attr("class", "c2p3 matrixAxis right")
              .call(self.d3.axisRight(y).tickSize(0))

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
          var loc_matrix_c2p3
          // reset coordinates when mousemoves over matrix svg
          svg_matrix_c2p3.addEventListener('mousemove', function(evt){
            loc_matrix_c2p3 = cursorPoint_matrix_c2p3(evt);
            // console.log('x:')
            // console.log(loc_matrix_c2p3.x)
            // console.log('y:')
            // console.log(loc_matrix_c2p3.y)
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
              .padding(0.1);

          // build y scale
          var yscale = self.d3.scaleBand()
              .range([self.matrix_height_c2p3, 0])
              .domain(myVars)
              .padding(0.1);

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
              .attr("y", function(d) { return yscale(d.seg_id_nat) })
              // set width to width of matrix
              .attr("width", self.matrix_width_c2p3)
              // set height based on yscale bandwidth
              .attr("height", yscale.bandwidth() )
              // set class based on segment id
              .attr("class", function(d) {
                return 'c2p3 matrixSpatialRect seg' + d.seg_id_nat;
              })
              // style rectangles to be transparent but available for selection
              .style("fill", "#000000")
              .style("stroke-width", 2)
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
        mouseoverDimSegs_c2p2(data) {
          // dim reservoirs, bay, and river segments
          this.d3.selectAll(".c2p2.reservoirs")
              .style("fill", "#172c4f")
              .style("stroke", "#172c4f")
          this.d3.selectAll(".c2p2.delaware_bay")
              .style("fill", "#172c4f")
          this.d3.selectAll(".c2p2.river_segments")
              .style("stroke", "#172c4f")
        },
        mouseoutDimSegs_c2p2(data) {
        // un-dim reservoirs, bay, and river segments
          this.d3.selectAll(".c2p2.reservoirs")
            .style("fill", "#6079a3")
            .style("stroke", "#6079a3")
          this.d3.selectAll(".c2p2.delaware_bay")
            .style("fill", "#6079a3")
          this.d3.selectAll(".c2p2.river_segments")
          .style("stroke", "#6079a3")
        },
        mousemoveSeg_c2p2(data, tooltip, mouse_x, mouse_y) {
          // find # of observations for selected reach
          var num_obs = data.properties.total_count;

          // bind mouse coordinates and # of obs to tooltip
          tooltip
              .attr("y", mouse_y - 15)
              .attr("x", mouse_x + 15)
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

          // make tooltip visible
          tooltip
              .style("opacity", 1);
          // select all spatial rectangles and make mostly opaque to dim matrix
          this.d3.selectAll(".c2p2.matrixSpatialRect")
              .style("opacity", 0.7)
              .style("stroke-width", 1);
          // select matrix cells for highlighted segment and raise
          this.d3.selectAll(".c2p2.cell.segment" + data.seg_id_nat)
              .raise()
          // select the spatial rectangle corresponding to the hightlighted segment
          this.d3.selectAll(".c2p2.matrixSpatialRect.seg" + data.seg_id_nat)
              // set stroke width, opacity, and stroke color
              // based on whether segment has any observations in record
              .style("stroke-width", function(data) {
                if (data.properties.total_count > 0) {
                  return 0;
                } else {
                  return 0.5;
                }
              })
              .style("opacity", function(data) {
                if (data.properties.total_count > 0) {
                  return 0;
                } else {
                  return 1;
                }
              })
              .style("stroke", function(data) {
                if (data.properties.total_count > 0) {
                  return "None";
                } else {
                  return "#ffffff";
                }
              })
              // raise the spatial rectangle
              .raise();
          // dim reservoirs, bay, and river segments
          this.d3.selectAll(".c2p2.reservoirs")
              .style("fill", "#172c4f")
              .style("stroke", "#172c4f")
          this.d3.selectAll(".c2p2.delaware_bay")
              .style("fill", "#172c4f")
          this.d3.selectAll(".c2p2.river_segments")
              .style("stroke", "#172c4f")
          // select mouseovered segment and set to white with a shadow
          // and raise segment
          this.d3.selectAll(".c2p2.river_segments.seg" + data.seg_id_nat)
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
              .style("stroke-width", 2)

          // hide tooltip
          tooltip
              .style("opacity", 0)
          // select all spatial rectangles and set opacity back to zero
          // with black fill and stroke
          this.d3.selectAll(".c2p2.matrixSpatialRect")
              .style("stroke", "None")
              .style("stroke", "#000000")
              .style("fill", "#000000")
              .style("stroke-width", 2)
              .style("opacity", 0)
          // select spatial rectangle corresponding to segment and lower
          this.d3.selectAll(".c2p2.matrixSpatialRect" + data.seg_id_nat)
              .lower()
          // lower spatial cells associated with segment
          this.d3.selectAll(".c2p2.cell.segment" + data.seg_id_nat)
              .lower()
          // un-dim riversegments, reservoirs, and bay
          // and reset to default styling
          this.d3.selectAll(".c2p2.river_segments")
              .style("stroke", "#6079a3")
          this.d3.selectAll(".c2p2.river_segments.seg" + data.seg_id_nat)
              .style("stroke", "#6079a3")
              .attr("opacity", 1)
              .attr("filter","None")
              .lower()
          this.d3.selectAll(".c2p2.reservoirs")
              .style("fill", "#6079a3")
              .style("stroke", "#6079a3")
              .lower()
          this.d3.selectAll(".c2p2.delaware_bay")
              .style("fill", "#6079a3")
              .lower()
          this.d3.selectAll(".c2p2.basin_buffered")
              .lower()
          // raise matrix axes
          this.d3.selectAll("g")
              .raise()
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
              .style("fill", "#172c4f")
              .style("stroke", "#172c4f")
          this.d3.selectAll(".c2p2.delaware_bay")
              .style("fill", "#172c4f")
          this.d3.selectAll(".c2p2.river_segments")
              .style("stroke", "#172c4f")
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
              .style("stroke-width", 2)

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
              .style("stroke", "#6079a3")
              .attr("opacity", 1)
          this.d3.selectAll(".c2p2.river_segments." + self.timestep_c2p2 + data[self.timestep_c2p2])
              .lower()
          this.d3.selectAll(".c2p2.reservoirs")
              .style("fill", "#6079a3")
              .style("stroke", "#6079a3")
              .lower()
          this.d3.selectAll(".c2p2.delaware_bay")
              .style("fill", "#6079a3")
              .lower()
          this.d3.selectAll(".c2p2.basin_buffered")
              .lower()
        },
        mouseoverDimSegs_c2p3(data) {
          // dim reservoirs, bay, and river segments
          this.d3.selectAll(".c2p3.reservoirs")
              .style("fill", "#172c4f")
              .style("stroke", "#172c4f")
          this.d3.selectAll(".c2p3.delaware_bay")
              .style("fill", "#172c4f")
          this.d3.selectAll(".c2p3.river_segments")
              .style("stroke", "#172c4f")
        },
        mouseoutDimSegs_c2p3(data) {
          // un-dim reservoirs, bay, and river segments
          this.d3.selectAll(".c2p3.reservoirs")
              .style("fill", "#6079a3")
              .style("stroke", "#6079a3")
          this.d3.selectAll(".c2p3.delaware_bay")
              .style("fill", "#6079a3")
          this.d3.selectAll(".c2p3.river_segments")
              .style("stroke", "#6079a3")
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
          // select matrix cells for highlighted segment and raise
          this.d3.selectAll(".c2p3.cell.segment" + data.seg_id_nat)
              .raise()
          // select the spatial rectangle corresponding to the hightlighted segment
          this.d3.selectAll(".c2p3.matrixSpatialRect.seg" + data.seg_id_nat)
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
              .style("fill", "#172c4f")
              .style("stroke", "#172c4f")
          this.d3.selectAll(".c2p3.delaware_bay")
              .style("fill", "#172c4f")
          this.d3.selectAll(".c2p3.river_segments")
              .style("stroke", "#172c4f")
          // select mouseovered segment and set to white with a shadow
          // and raise segment
          this.d3.selectAll(".c2p3.river_segments.seg" + data.seg_id_nat)
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
          this.d3.selectAll(".c2p3.matrixSpatialRect" + data.seg_id_nat)
              .lower()
          // lower matrix cells associated with segment
          this.d3.selectAll(".c2p3.cell.segment" + data.seg_id_nat)
              .lower()
          // un-dim riversegments, reservoirs, and bay
          // and reset to default styling
          this.d3.selectAll(".c2p3.river_segments")
              .style("stroke", "#6079a3")
          this.d3.selectAll(".c2p3.river_segments.seg" + data.seg_id_nat)
              .style("stroke", "#6079a3")
              .attr("opacity", 1)
              .attr("filter","None")
              .lower()
          this.d3.selectAll(".c2p3.reservoirs")
              .style("fill", "#6079a3")
              .style("stroke", "#6079a3")
              .lower()
          this.d3.selectAll(".c2p3.delaware_bay")
              .style("fill", "#6079a3")
              .lower()
          this.d3.selectAll(".c2p3.basin_buffered")
              .lower()
          // raise matrix axes
          this.d3.selectAll("g")
              .raise()
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
          // select all temporal rectangles and make mostly opaque
          this.d3.selectAll(".c2p3.matrixTemporalRect")
              .style("opacity", 0.85)
              .style("stroke-width", 0.6)
          // select mouseovered rectangle and set opacity to zero
          this.d3.selectAll(".c2p3.matrixTemporalRect.time" + data[self.timestep_c2p3])
              .style("opacity", 0)
          // dim reservoirs, bay, and river segments
          this.d3.selectAll(".c2p3.reservoirs")
              .style("fill", "#172c4f")
              .style("stroke", "#172c4f")
          this.d3.selectAll(".c2p3.delaware_bay")
              .style("fill", "#172c4f")
          this.d3.selectAll(".c2p3.river_segments")
              .style("stroke", "#172c4f")
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
              .style("stroke", "#000000")
              .style("fill", "#000000")
              .style("stroke-width", 0.6)
              .style("stroke-opacity", 0)
              .style("opacity", 0)
          // un-dim river segments, reservoirs, and bay
          // lower elements as needed
          this.d3.selectAll(".c2p3.river_segments")
              .style("stroke", "#6079a3")
              .attr("opacity", 1)
          this.d3.selectAll(".c2p3.river_segments." + self.timestep_c2p3 + data[self.timestep_c2p3])
              .style("stroke", "#6079a3")
              .attr("opacity", 1)
              .lower()
          this.d3.selectAll(".c2p3.reservoirs")
              .style("fill", "#6079a3")
              .style("stroke", "#6079a3")
              .lower()
          this.d3.selectAll(".c2p3.delaware_bay")
              .style("fill", "#6079a3")
              .lower()
          this.d3.selectAll(".c2p3.basin_buffered")
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
    font-size: 1.02vw;
  }

  .narrative {
    color: #cecece;
    font-size: 0.9em;
    text-align: right;
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
  fill: #6079a3;
}

.river_segments {
  stroke: #6079a3;
  stroke-linecap: round;
  stroke-width: 0.5px;
}

.reservoirs {
  fill:  #6079a3;
  stroke: #6079a3;
}

.matrixAxis {
  color: #7a7a7a;
}

.chartAxis {
  color: #999999;
  font-size: .60em;
}

.legend {
  font-family: 'Open Sans', arial, sans-serif;
  font-size: 0.6em;
  fill: #999999;
}

.chartAxisText {
  fill: #999999;
  font-size: 1.2em;
}

.tooltip {
  fill: #ffffff;
  font-family: sans-serif;
  font-size: 0.7em;
  font-weight: bold;
  line-height: 1em;
}
</style>
