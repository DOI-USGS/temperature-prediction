<template>
  <section id="section_2">
    <div class="text-content">
      <!--"section-title-wrapper"-->
      <div class="viz-title"> 
        <h3 v-html="text.title1" />
      </div>
      <br>
      <p v-html="text.paragraph1" />
      <p v-html="text.paragraph2" />
    </div>
    <div id="map-and-bar-chart">
      <!-- div class="text-content viz-title-wrapper">
        <h3 class="viz-title">
          Measuring Temperature in the Basin
        </h3>
      </div -->
      <p class="viz-subtitle">
        All Monitoring Sites in the Basin
      </p>  
      <div class="figure-content">
        <div class="figure map">
          <div id="DRB_map_c2p1" />
        </div>
      </div>
      <div class="text-content">
        <p v-html="text.paragraph3" />
      </div>
      <p class="viz-subtitle">
        Number of Temperature Measurements by year,<br>as measured by USGS or other state/local agencies
      </p>
      <div class="figure-content">
        <div class="figure chart">
          <div id="barChart_c2p1" />
        </div>
      </div>      
    </div>
    <div class="text-content">
      <p v-html="text.paragraph4" />
      <p v-html="text.paragraph5" />
      <Chapter2Icons1 />
      <br>
      <!--"section-title-wrapper"-->
      <div class="viz-title">
        <h3 v-html="text.title2" />
      </div>
      <br>
      <p v-html="text.subtitle2" />
      <p v-html="text.paragraph6" />
      <p v-html="text.paragraph8" />
      <p v-html="text.paragraph9" />
    </div>
    <!-- div class="text-content viz-title-wrapper">
      <h3 class="viz-title">
        How to Read the Matrices
      </h3>
      <p class="viz-subtitle">
        Visualizing data availability at temperature measuring sites across the basin
      </p>
    </div -->
    <div
      id="matrix-explainer-container"
      class="explainer-grid-container"
    >
      <div
        id="MatrixExplainerSpace"
        class="explainer-grid-item"
      >
        <MatrixExplainerSpace />
      </div>
      <div
        id="MatrixExplainerTime"
        class="explainer-grid-item"
      >
        <MatrixExplainerTime />
      </div>
      <div
        id="MatrixExplainerColor"
        class="explainer-grid-item"
      >
        <MatrixExplainerColor />
      </div>            
    </div>
    <div class="text-content">
      <p v-html="text.tiptextDesktop" />
    </div>
    <!-- div class="text-content viz-title-wrapper">
      <h3 class="viz-title">
        Temperature Data Availability
      </h3>
      <p class="viz-subtitle">
        Visualizing the count of temperature measurements at all monitoring sites across the basin.
      </p>
      <p class="viz-subtitle">
        Hover over a reach on the map, to see it's bar chart.  Or hover a matrix cell to see which reaches had temperature data collected for that year.
      </p>
    </div -->
    <div
      id="data-availability-container"
      class="map-matrix-grid-container"
    >
      <!-- class="figure-content" -->
      <div
        id="DRB_map_c2p2"
        class="map mm-grid-item"
      />
      <!-- class="figure" -->
      <div
        id="matrixChart_c2p2"
        class="matrix mm-grid-item"
      />
      <!-- class="figure" -->
    </div>
    <div class="text-content">
      <div class="viz-title">
        <h3 v-html="text.title3" />
      </div>
      <br>
      <p v-html="text.paragraph10" />
      <Chapter2Icons2 />
      <p v-html="text.paragraph11" />
    </div>
    <!-- div class="text-content viz-title-wrapper">
      <h3 class="viz-title">
        Daily Temperature readings in the Basin
      </h3>
    </div --> 
    <p class="viz-subtitle">
      Daily Temperature readings in the Basin in 2019
    </p>
    <div class="figure-content">
      <div
        id="timeseries"
        class="figure chart"
      >
        <MonitoringLineChart />
      </div>
    </div>
    <div class="text-content">
      <p v-html="text.paragraph12" />
      <p v-html="text.paragraph13" />
    </div>
    <!-- div class="text-content viz-title-wrapper">
      <h3 class="viz-title">
        Daily Temperature at each reach in the Basin
      </h3>
      <p class="viz-subtitle">
        Data for 2019 only. Hover over a reach on the map, or over a matrix cell to see more.
      </p>
    </div --> 
    <div class="map-matrix-grid-container">
      <div
        id="DRB_map_c2p3"
        class="map mm-grid-item"
      />
      <div
        id="matrixChart_c2p3"
        class="matrix mm-grid-item"
      />
    </div>
    <div class="text-content">
      <div class="viz-title">
        <h3 v-html="text.title4" />
      </div>
      <br>
      <p v-html="text.paragraph14" />
      <p v-html="text.paragraph15" />
    </div>
    <div
      id="map-container"
      class="figure-content"
    >
      <img
        id="hex-map"
        class="figure"
        src="@/assets/usa_hex_map_80-01.png"
      >
      <!-- need to add legend -->
    </div>
    <div class="container-fluid">
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
  import monitoringText from "./../../assets/text/monitoringText";
  import MonitoringLineChart from "./../../components/2-Monitoring-Mobile/MonitoringLineChart";
  import MatrixExplainerSpace from "./../../components/2-Monitoring-Mobile/MatrixExplainerSpace";
  import MatrixExplainerTime from "./../../components/2-Monitoring-Mobile/MatrixExplainerTime";
  import MatrixExplainerColor from "./../../components/2-Monitoring-Mobile/MatrixExplainerColor";

  export default {
      name: 'Set2',
      components: {
        MonitoringLineChart,
        MatrixExplainerSpace,
        MatrixExplainerTime,
        MatrixExplainerColor,
        Chapter2Icons1: () => import( /* webpackPreload: true */ /*webpackChunkName: "chapter2icons1"*/ "./../../components/2-Monitoring/Chapter2Icons1"),
        Chapter2Icons2: () => import( /* webpackPreload: true */ /*webpackChunkName: "chapter2icons2"*/ "./../../components/2-Monitoring/Chapter2Icons2")
      },
      data() {
        return {
          publicPath: process.env.BASE_URL, // this is need for the data files in the public folder, this allows the application to find the files when on different deployment roots
          d3: null, // this is used so that we can assign d3 plugins to the d3 instance
          // global variables instantiated in next section
          timestep_c2p2: 'year',
          myGroups_c2p2: null,
          myVars_c2p2: null,
          myGroups_c2p3: null,
          myVars_c2p3: null,
          temporalCountMax_c2p2: null,
          timestep_c2p3: 'date',
          chart_margin: {top: 30, right: 70, bottom: 45, left: 10},
          chart_width: null, // this will get a value in the mounted hook
          chart_height: null, // this will get a value in the mounted hook
          matrix_margin: {top: 50, right: 15, bottom: 20, left: 35},
          matrix_width_c2: null, // this will get a value in the mounted hook
          matrix_height_c2: null, // this will get a value in the mounted hook
          scaleBarTop_c2: null,
          scaleBarBottom_c2: null,
          map_c2p1: null,
          map_c2p2: null,
          map_c2p3: null,
          map_width: null,
          map_height: null,
          map_margin: null,
          map_path_c2: null,
          widthScale_c2: null,
          segments: null,
          bay: null,
          reservoirs: null,
          
          //import text
          text: monitoringText.textContents
        }
      },
      mounted() {
        this.d3 = Object.assign(d3Base, { geoScaleBar, geoScaleBottom, geoScaleTop, geoScaleKilometers, geoScaleMiles }); // this loads d3 plugins with webpack

        this.chart_width = 500 - this.chart_margin.left - this.chart_margin.right;
        this.chart_height = window.innerHeight * 0.25 - this.chart_margin.top - this.chart_margin.bottom;
        this.matrix_width_c2 = 700 - this.matrix_margin.left - this.matrix_margin.right;
        this.matrix_height_c2 = window.innerHeight * 0.9 - this.matrix_margin.top - this.matrix_margin.bottom;
      
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
          this.map_width = 400;
          this.map_height = window.innerHeight * 0.5;
          this.map_margin = {top: 15, right: 5, bottom: 5, left: 5};

          //create Albers equal area conic projection centered on DRB for ch2 maps
          let map_projection_c2 = self.d3.geoAlbers()
              .center([0, 40.688894445]) //40.658894445
              .rotate([75.533333335, 0, 0]) //75.363333335 centered, 76.2 far right, 74.6 far left
              .parallels([39.9352537033, 41.1825351867])
              .scale(this.map_height * 16)
              .translate([this.map_width / 2, this.map_height / 2]);

          this.map_path_c2 = self.d3.geoPath()
              .projection(map_projection_c2);

          // create scale bar for ch 2 maps
          this.scaleBarTop_c2 = self.d3.geoScaleBar()
              .orient(self.d3.geoScaleBottom)
              .projection(map_projection_c2)
              .size([this.map_width, this.map_height])
              .left(.25) // .15 centered, .45 far right
              .top(.96)
              .units(self.d3.geoScaleKilometers)
              .distance(50)
              .label("50 kilometers")
              .labelAnchor("start")
              .tickSize(null)
              .tickValues(null);

          this.scaleBarBottom_c2 = self.d3.geoScaleBar()
              .orient(self.d3.geoScaleTop)
              .projection(map_projection_c2)
              .size([this.map_width, this.map_height])
              .left(.25) // .15 centered, .45 far right
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
              .attr("class", "map_c2p1 map")
              .attr("viewBox", [0, 0, (this.map_width + this.map_margin.right + this.map_margin.left),
                (this.map_height + this.map_margin.top + this.map_margin.bottom)].join(' '));

          //create new svg container for the ch 2 panel 2 map
          this.map_c2p2 = self.d3.select("#DRB_map_c2p2")
              .append("svg")
              .attr("class", "map_c2p2 map")
              .attr("viewBox", [0, 0, (this.map_width + this.map_margin.right + this.map_margin.left),
                (this.map_height + this.map_margin.top + this.map_margin.bottom)].join(' '));

          // create new svg container for the ch 2 panel 3 map
          this.map_c2p3 = self.d3.select("#DRB_map_c2p3")
              .append("svg")
              .attr("class", "map_c2p3 map")
              .attr("viewBox", [0, 0, (this.map_width + this.map_margin.right + this.map_margin.left),
                (this.map_height + this.map_margin.top + this.map_margin.bottom)].join(' '));
          

          // // LOAD IN DATA AND CALL SCRIPTS IN STAGES
          self.loadData_1();
        },
        loadData_1() {
          const self = this;

          // First set of data and scripts to generate all Ch2 maps and Ch2 panel 1 bar chart
          let promises_1 = [self.d3.csv("data/segment_maflow.csv"),
            self.d3.csv(self.publicPath + "data/source_annual_count.csv", self.type), // process data for stacked bar chart as it is loaded
            self.d3.json(self.publicPath + "data/topojson/segment_data.json"),
            self.d3.json(self.publicPath + "data/topojson/unique_drb_sites.json"),
            self.d3.json(self.publicPath + "data/topojson/DelawareBay.json"),
            self.d3.json(self.publicPath + "data/topojson/reservoirs.json")
          ];
          Promise.all(promises_1).then(self.callback_1);
        },
        loadData_2() {
          const self = this;

          // Second set of data and scripts to generate Ch2 panel 2 matrix
          let promises_2 = [
            self.d3.csv(self.publicPath + "data/matrix_annual_obs.csv"),
            self.d3.csv(self.publicPath + "data/obs_annual_count.csv")
          ];

          Promise.all(promises_2).then(self.callback_2);
        },
        loadData_3() {
          const self = this;

          // Third set of data and scripts to generate Ch2 panel 3 matrix
          let promises_3 = [
            self.d3.csv(self.publicPath + "data/matrix_daily_2019_obs.csv"),
            self.d3.csv(self.publicPath + "data/obs_daily_count_2019.csv")
          ];
          Promise.all(promises_3).then(self.callback_3); 
        },
        // Function to process data for stacked bar chart
        type(d, i, columns) {
          let t = 0;
          for (i = 1, t; i < columns.length; ++i)
            // for each row, which is d, cycle through the columns
            t += d[columns[i]] = +d[columns[i]];
          // create a new column in the data titled "total"
          d.total = t;
          return d;
        },
        // set up Ch2 panel 1 map and Ch2 panel 1 bar chart
        callback_1(data) {
          let csv_flow = data[0];
          let csv_source_count = data[1];
          let json_segments = data[2];
          let json_unique_sites = data[3];
          let json_bay = data[4];
          let json_reservoirs = data[5];

          // translate topojsons
          this.segments = topojson.feature(json_segments, json_segments.objects.segment_data).features; 
          let sites = topojson.feature(json_unique_sites, json_unique_sites.objects.unique_drb_sites).features; 
          this.bay = topojson.feature(json_bay, json_bay.objects.NHDWaterbody_DelawareBay_pt6per_smooth);
          this.reservoirs = topojson.feature(json_reservoirs, json_reservoirs.objects.reservoirs).features; 

          // join csv flow data to geojson segments
          // ch 2 map segments
          this.segments = this.joinData(this.segments, csv_flow);

          // set stroke width scale
          // for ch 2 map segments
          this.widthScale_c2 = this.makeWidthScale_c2(csv_flow);

          // Set up Ch 2 panel 1 -
          // set up panel 1 map
          this.setMap_c2p1(sites);
          // add bar chart to panel 1
          this.setBarChart_c2p1(csv_source_count);

          // LOAD SECOND SET OF DATA
          this.loadData_2();
        },
        // Set up  Ch2 panel 2 map and Ch 2 panel 2 matrix
        callback_2(data) {
          let csv_matrix_annual = data[0];
          let csv_annual_count = data[1];

          // Set up Ch 2 panel 2 -
          // set up panel 2 map
          this.setMap_c2p2();
          // create panel 2 matrix
          this.createMatrix_c2p2(csv_matrix_annual, csv_annual_count);

          // LOAD THIRD AND FINAL SET OF DATA
          this.loadData_3();
        },
        // Set up  Ch2 panel 3 map and Ch 2 panel 3 matrix
        callback_3(data) {
          let csv_matrix_daily_2019 = data[0];
          let csv_daily_count_2019 = data[1];

          // Set up Ch 2 panel 3 -
          // set up panel 3 map
          this.setMap_c2p3();
          // create panel 3 matrix
          this.createMatrix_c2p3(csv_matrix_daily_2019, csv_daily_count_2019);
        },
        // Join modeled flow data to simplified segment geometries
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
        // Make width scale for stream segments based on modeled flow
        makeWidthScale_c2(data) {
          const self = this;
          // // graduated scale
          // set width classes
          let widthClasses = [
            0.7,
            1.1,
            1.2,
            1.6,
            1.9,
            2.2,
            2.5,
            2.9,
            3.4,
            3.7
          ]; //[            0.6,            0.9,            1.2,            1.4,            1.7,            2,            2.3,            2.6,            3,            3.5,          ]

          // // graduated scale
          // create width scale generator for natural breaks classification
          let widthScale = this.d3.scaleThreshold()
              .range(widthClasses);

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

          // // return calculated scale
          return widthScale;
        },
        setMap_c2p1(sites) {
          const self = this;

          // add delaware bay to map
          let drb_bay = self.map_c2p1.append("path")
              .datum(self.bay)
              .attr("class", "c2p1 delaware_bay")
              .attr("d", self.map_path_c2)

          // add drb reservoirs to map
          let drb_reservoirs = self.map_c2p1.selectAll(".reservoirs")
              // bind polygons to each element to be created
              .data(self.reservoirs)
              // create an element for each datum
              .enter()
              // append each element to the svg as a path element
              .append("path")
              // project polygons
              .attr("d", self.map_path_c2)
              // assign class for styling
              .attr("class", function(d){
                return "c2p1 reservoirs res_id" + d.properties.GRAND_ID
              })
              // set stroke width so that polygons appear larger
              .style("stroke-width", 0.75)

          // add drb segments to map
          let drb_segments = self.map_c2p1.selectAll(".river_segments")
              // bind segments to each element to be created
              .data(self.segments)
              // create an element for each datum
              .enter()
              // append each element to the svg as a path element
              .append("path")
              // assign class for styling
              .attr("class", function(d){
                return 'c2p1 river_segments seg' + d.properties.seg_id_nat
              })
              // project segments
              .attr("d", self.map_path_c2)
              // add stroke width based on widthScale function
              .style("stroke-width", function(d){
                let value = d.properties['avg_ann_flow'];
                if (value){
                  return self.widthScale_c2(value);
                } else {
                  return "#ccc";
                }
              })
              // set fill to none
              .style("fill", "None")

            // add drb sites to map
            let drb_sites = self.map_c2p1.selectAll(".obs_sites")
                // bind points to each element to be created
                .data(sites)
                // create an element for each datum
                .enter()
                // append each element to the svg as a circle element
                .append("path")
                // project points and SET SIZE
                .attr("d", self.map_path_c2.pointRadius(1.2))
                // assign class for styling
                .attr("class", "c2p1 obs_sites")
                // assign fill color based on agency
                .style("fill", function(d){
                  if (d.properties.source === 'USGS'){
                    return "#e9eced"
                  } else {
                    return "#e9eced"
                  }
                })
                // assign stroke in background color
                // .style("stroke", "#000000")
                // .style("stroke-width", 0.4)
                // assign opacity
                .style("opacity", .4)

            // add scale bar
            self.map_c2p1.append("g").call(self.scaleBarTop_c2);
            self.map_c2p1.append("g").call(self.scaleBarBottom_c2);
        },
        setBarChart_c2p1(csv_source_count) {
          // append svg to div
          let svgChart = this.d3.select("#barChart_c2p1")
              .append("svg")
              .attr("viewBox", [0, 0, (this.chart_width + this.chart_margin.right + this.chart_margin.left),
                (this.chart_height + this.chart_margin.top + this.chart_margin.bottom)].join(' '))
              .attr("class", "c2p1 barChart chart")
          let g = svgChart.append("g")
              .attr("class", "c2p1 transformedBarChart")
              .attr("transform", "translate(" + this.chart_margin.left + "," + this.chart_margin.top + ")");

          // define x
          let x = this.d3.scaleBand()
              .rangeRound([0, this.chart_width])
              // set padding between bars
              .padding(0.1)

          // make y scale
          let y = this.d3.scaleLinear()
              .range([this.chart_height, 0]);

          // set colors
          let z = this.d3.scaleOrdinal()
              .range(["#e9eced", "#e9eced"]);

          // stack to create an array for each of the series in the data
          let stack = this.d3.stack();

          // load processed data
          let data = csv_source_count

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
              .call(this.d3.axisBottom(x).tickValues(['1960', '1970', '1980', '1990', '2000', '2010', '2019' ]).tickSize(0)) /* ['1980', '1985', '1990', '1995', '2000', '2005', '2010', '2015', '2019' ] */
              .select(".domain").remove()

          // place and rotate x axis labels
          g.selectAll('text')
              .attr("y", 6)
              .attr("x", -27)
              .attr("dy", ".35em")
              .attr("transform", "rotate(-45)")
              .attr("text-anchor", "start")


          // place the y axis and format tick labels
          g.append("g")
              .attr("class", "c2p1 chartAxis right")
              // offset axis slightly to align closer to last bar
              .attr("transform", "translate(" + this.chart_width * 0.93 + "," + 0 + ")")
              // give ticks k number format and set their size to cover the width of the chart
              .call(this.d3.axisRight(y).ticks(2, "s").tickSize(- this.chart_width))
              .select(".domain").remove()

          // place and rotate the y axis label
          svgChart.selectAll(".chartAxis.right")
              .append("text")
              .attr("y", 40)
              // offset to (roughly) center on y axis
              .attr("x", -this.chart_height / 2)
              .attr("text-anchor", "middle")
              .attr("class", "c2p1 chartAxisText")
              .text("Unique temperature measurements")
              //.attr("transform", "translate(25, 0)")
              .attr("transform", "rotate(-90)")
              

          // set the tick mark lines to background color
          svgChart.selectAll(".tick line").attr("stroke", "#141414").attr("stroke-width", 0.5) //.attr("stroke-dasharray", ("1, 2"))

          // //  make the legend
          // let legend = g.selectAll(".legend")
          //     // include all but the first column in the legend
          //     .data(data.columns.slice(1).reverse())
          //     // append an item for each series
          //     .enter().append("g")
          //     .attr("class", "c2p1 barChart legend")
          //     .attr("transform", function(d, i) {
          //       return "translate(" + 0 + "," + i * 17 + ")";
          //     })

          // // append a rectangle for each series
          // legend.append("rect")
          //     .attr("x", 14)
          //     .attr("width", 8)
          //     .attr("height", 8)
          //     // set color based on z attribute
          //     .attr("fill", z);

          // // append a label for each rectangle
          // legend.append("text")
          //     .attr("x", 30)
          //     .attr("y", 4)
          //     .attr("dy", ".35em")
          //     .attr("text-anchor", "start")
          //     // set text as column name
          //     .text(function(d) { return d; });

        },
        setMap_c2p2(){
          const self = this;

          // // Set up necessary elements for mousemove event within svg with viewBox
          // find root svg element
          let svg_map_c2p2 = document.querySelector('.map_c2p2');
          // create a SVGPoint for future math
          let pt_map_c2p2 = svg_map_c2p2.createSVGPoint();
          // function to get point in global SVG space
          function cursorPoint_c2p2(evt){
            pt_map_c2p2.x = evt.clientX; pt_map_c2p2.y = evt.clientY;
            return pt_map_c2p2.matrixTransform(svg_map_c2p2.getScreenCTM().inverse());
          }
          // create local variable to store point coordinates
          let loc_map_c2p2 = {x: 0, y: 0};
          // reset coordinates when mousemoves over map svg
          svg_map_c2p2.addEventListener('mousemove', function(evt){
            loc_map_c2p2 = cursorPoint_c2p2(evt);
          }, false);

          // // Add tooltip as text element appended to map svg, without coordinates
          // add tooltip to map svg
          let tooltip = self.map_c2p2.append("text")
              .attr("class", "c2p2 tooltip map")

          // // Build Map
          // add drb segments to map BACKGROUND - for selection only
          let drb_segments_transparent = self.map_c2p2.selectAll(".segs_transparent")
              // bind segments to each element to be created
              .data(self.segments)
              // create an element for each datum
              .enter()
              // append each element to the svg as a path element
              .append("path")
              // assign class for styling
              .attr("class", function(d) {
                let transparent_seg_class = 'c2p2 segs_transparent'
                let key = null;
                for (key in d.properties.year_count) {
                  if (d.properties.year_count[key] > 0) {
                    transparent_seg_class += " " + self.timestep_c2p2 + key
                  }
                }
                return transparent_seg_class
              })
              // project each element
              .attr("d", self.map_path_c2)
              // set stroke width to be large for selection
              .style("stroke-width", 6)
              // set stroke to background color
              .style("stroke", "#141414")
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
          let drb_bay = self.map_c2p2.append("path")
              // bind data to element
              .datum(self.bay)
              // assign class for styling
              .attr("class", "c2p2 delaware_bay")
              // project element
              .attr("d", self.map_path_c2);

          // add drb reservoirs to map
          let drb_reservoirs = self.map_c2p2.selectAll(".reservoirs")
              // bind polygons to each element to be created
              .data(self.reservoirs)
              // create an element for each datum
              .enter()
              // append each element to the svg as a path element
              .append("path")
              // project polygons
              .attr("d", self.map_path_c2)
              // assign class for styling
              .attr("class", function(d){
                return "c2p2 reservoirs res_id" + d.properties.GRAND_ID
              })
              // set stroke width so that polygons appear larger
              .style("stroke-width", 0.75)

          // add drb segments to map
          let drb_segments = self.map_c2p2.selectAll(".river_segments")
              // bind segments to each element to be created
              .data(self.segments)
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
              .attr("d", self.map_path_c2)
              // add stroke width based on widthScale function
              .style("stroke-width", function(d){
                let value = d.properties['avg_ann_flow'];
                return self.widthScale_c2(value);
              })
              // set fill to none
              .style("fill", "none")
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
          self.map_c2p2.append("g").call(self.scaleBarTop_c2)
          self.map_c2p2.append("g").call(self.scaleBarBottom_c2)
        },
        createMatrix_c2p2(csv_matrix_annual, csv_annual_count){
          const self = this;

          // append the svg object to the body of the page
          let svgMatrix = self.d3.select("#matrixChart_c2p2")
              .append("svg")
              .attr("viewBox", [0, 0, (self.matrix_width_c2 + self.matrix_margin.left + self.matrix_margin.right),
                (self.matrix_height_c2 + self.matrix_margin.top + self.matrix_margin.bottom)].join(' '))
              .attr("class", "c2p2 matrix_c2p2 matrix")

          // build array of all values of observation counts
          let domainArrayTemporalCounts = [];
          let i;
          for (i=0; i<csv_matrix_annual.length; i++){
            let val = parseFloat(csv_matrix_annual[i]['obs_count']);
            domainArrayTemporalCounts.push(val);
          };

          // Find maximum count of observations to use in color scale
          self.temporalCountMax_c2p2 = Math.round(Math.max(...domainArrayTemporalCounts));

          // // Create Custom interpolator for a color scale using HEX codes
          //   // Convert Hex to RGB
          // const hex2rgb = hex => {
          //   var validHEXInput = /^#?([a-f\d]{2})([a-f\d]{2})([a-f\d]{2})$/i.exec(hex);
          //   if (!validHEXInput) {
          //       return false;
          //   }
          //   var output = {
          //       r: parseInt(validHEXInput[1], 16),
          //       g: parseInt(validHEXInput[2], 16),
          //       b: parseInt(validHEXInput[3], 16),
          //   };
          //   return `rgb(${output.r},${output.g},${output.b})`
          // }
          // let interpolatec2p2 = self.d3.interpolateRgb(hex2rgb("#285C70"), hex2rgb("#bec7ca")); // can only get two stops in this function
    
          // build color scale
          let myColor = self.d3.scaleSequential()
              .interpolator(self.d3.interpolatePlasma) /* interpolatePlasma interpolatec2p2*/
              // .domain([self.temporalCountMax_c2p2,1]) // if INVERTING color scale
              .domain([1, self.temporalCountMax_c2p2]) // if NOT INVERTING color scale

          // build list of posible counts (0 to 366)
          let count_list = [];
          for (i = 1; i <= self.temporalCountMax_c2p2; i++) {
            count_list.push(i);
          } 

          // define gradient for legend
          let defs = svgMatrix.append("defs")
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
          let legendsvg = svgMatrix.append("g")
              .attr("class", "c2p2 legendWrapper")
              .attr("width", self.matrix_width_c2)
              .attr("transform", "translate(" + (self.matrix_margin.left) + "," + 0 + ")")

          // append legend text
          legendsvg.append("text")
              .attr("class", "c2p2 legendAxis")
              .attr("text-anchor", "end")
              .attr("x", self.matrix_width_c2*1/4 - 10)
              .attr("y", 17)
              .attr("fill", "#ffffff")
              .text("1 daily value")

          // append legend rectangle
          legendsvg.append("rect")
              .attr("class", "c2p2 matrixLegend")
              .attr("width", self.matrix_width_c2/2)
              .attr("height", 20)
              .attr("fill", "url(#gradient-plasma)")
              .attr("x", self.matrix_width_c2/4)

          // append legend text
          legendsvg.append("text")
              .attr("class", "c2p2 legendAxis")
              .attr("text-anchor", "start")
              .attr("x", self.matrix_width_c2*3/4 + 10)
              .attr("y", 17)
              .attr("fill", "#ffffff")
              .text("365 daily values")

          // append background rectangle for matrix
          svgMatrix.append("rect")
                  .attr("class", "c2p2 matrixBkgdRect")
                  .attr("width", self.matrix_width_c2)
                  .attr("height", self.matrix_height_c2)
                  .attr("fill", "#141414")
                  .attr("filter", "url(#shadow2)")
                  .attr("transform",
                      "translate(" + self.matrix_margin.left + "," + self.matrix_margin.top + ")")

          // append tooltip for matrix to the matrix svg
          let tooltip = svgMatrix.append("text")
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
          let x = self.d3.scaleBand()
              .range([0, self.matrix_width_c2])
              .domain(self.myGroups_c2p2)
              .padding(0.1);

          // build y scale for matrix cells
          let y = self.d3.scaleBand()
              .range([self.matrix_height_c2, 0])
              .domain(self.myVars_c2p2)
              .padding(0.1);

          // add the cells to the matrix
          // select transformed matrix
          let transformedMatrix = self.d3.select(".c2p2.transformedMatrix")
          // append rectangles to the matrix
          let matrixCells = transformedMatrix.selectAll('matrixCells')
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
          self.createMatrixRectangles_c2p2(csv_matrix_annual, csv_annual_count, tooltip);

          // draw x axes
          transformedMatrix.append("g")
              .style("font-size", 10)
              .attr("transform", "translate(" + 0 + "," + self.matrix_height_c2 + ")")
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
              .attr("transform", "translate(" + self.matrix_width_c2 + "," + 0 + ")")
              .attr("class", "c2p2 matrixAxis right")
              // .call(self.d3.axisRight(y).tickSize(0))
              .call(self.d3.axisRight(y).tickSize(0))
              .select(".domain").remove()
        },
        createMatrixRectangles_c2p2(csv_matrix_annual, csv_annual_count, tooltip) {
          const self = this;
          
          // // Set up necessary elements for mousemove event within svg with viewBox
          // find root svg element
          let svg_matrix_c2p2 = document.querySelector('.matrix_c2p2');
          // create a SVGPoint for future math
          let pt_matrix_c2p2 = svg_matrix_c2p2.createSVGPoint();
          // function to get point in global SVG space
          function cursorPoint_matrix_c2p2(evt){
            pt_matrix_c2p2.x = evt.clientX; pt_matrix_c2p2.y = evt.clientY;
            return pt_matrix_c2p2.matrixTransform(svg_matrix_c2p2.getScreenCTM().inverse());
          }
          // create local variable to store point coordinates
          let loc_matrix_c2p2;
          // // reset coordinates when mousemoves over matrix svg
          svg_matrix_c2p2.addEventListener('mousemove', function(evt){
            loc_matrix_c2p2 = cursorPoint_matrix_c2p2(evt);
          }, false);

          // Build matrix
          // create transformed matrix variable
          let transformedMatrix = self.d3.select(".c2p2.transformedMatrix")

          // build x scale using data read in for matrix in createMatrix_c2p2()
          let xscale = self.d3.scaleBand()
              .range([0,self.matrix_width_c2])
              .domain(self.myGroups_c2p2)
              .padding(0.1);

          // build y scale using data read in for matrix in createMatrix_c2p2()
          let yscale = self.d3.scaleBand()
              .range([self.matrix_height_c2, 0])
              .domain(self.myVars_c2p2)
              .padding(0.1);

          // //  build spatial rectangles
          // append to transformed matrix
          let SpatialRectangles = transformedMatrix.selectAll('.c2p2.matrixSpatialRect')
              // bind data to each element
              .data(self.segments)
              // create element for each datum
              .enter()
              // append rectangle for each element
              .append("rect")
              // set x value based on minimum year (1980)
              .attr("x", xscale("1980"))
              // set y value based on segment id
              .attr("y", function(d) { return yscale(d.properties.seg_id_nat) })
              // set width to width of matrix
              .attr("width", self.matrix_width_c2)
              // set height based on yscale bandwidth
              .attr("height", yscale.bandwidth())
              // set class based on segment id
              .attr("class", function(d) {
                return 'c2p2 matrixSpatialRect seg' + d.properties.seg_id_nat;
              })
              // style rectangles to be transparent but available for selection
              .style("fill", "#141414")
              .style("stroke-width", 2)
              .style("stroke", "#141414")
              .style("opacity", 0)

          // // build temporal rectangles
          // append to transformed matrix
          let TemporalRectangles = transformedMatrix.selectAll('.c2p2.matrixTemporalRect')
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
              .attr("height", self.matrix_height_c2)
              // set class based on year
              .attr("class", function(d) {
                return 'c2p2 matrixTemporalRect time' + d[self.timestep_c2p2];
              })
              // style rectangles to be transparent but available for selection
              .style("fill", "#141414")
              .style("stroke-width", 2)
              .style("stroke", "#141414")
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
        setMap_c2p3(){
          const self = this;

          // // Set up necessary elements for mousemove event within svg with viewBox
          // find root svg element
          let svg_map_c2p3 = document.querySelector('.map_c2p3');
          // create a SVGPoint for future math
          let pt_map_c2p3 = svg_map_c2p3.createSVGPoint();
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
          let tooltip = self.map_c2p3.append("text")
              .attr("class", "c2p3 tooltip map")

          // add drb segments to map BACKGROUND
          let drb_segments_transparent = self.map_c2p3.selectAll(".segs_transparent")
              // bind segments to each element to be created
              .data(self.segments)
              // create an element for each datum
              .enter()
              // append each element to the svg as a path element
              .append("path")
              // assign class for styling
              .attr("class", function(d) {
                let transparent_seg_class = 'c2p3 segs_transparent'
                let key = null;
                for (key in d.properties.day_count) {
                  if (d.properties.day_count[key] > 0) {
                    transparent_seg_class += " " + self.timestep_c2p3 + key
                  }
                }
                return transparent_seg_class
              })
              .attr("d", self.map_path_c2)
              .style("stroke-width", 6)
              .style("stroke", "#141414")
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
          let drb_bay = self.map_c2p3.append("path")
              // bind data to element
              .datum(self.bay)
              // add class for styling
              .attr("class", "c2p3 delaware_bay")
              // project
              .attr("d", self.map_path_c2);

          // add drb reservoirs to map
          let drb_reservoirs = self.map_c2p3.selectAll(".reservoirs")
              // bind polygons to each element to be created
              .data(self.reservoirs)
              // create an element for each datum
              .enter()
              // append each element to the svg as a path element
              .append("path")
              // project polygons
              .attr("d", self.map_path_c2)
              // assign class for styling
              .attr("class", function(d){
                return "c2p3 reservoirs res_id" + d.properties.GRAND_ID
              })
              .style("stroke-width", 0.75)

          // add drb segments to map
          let key = null;
          let drb_segments = self.map_c2p3.selectAll(".river_segments")
              // bind segments to each element to be created
              .data(self.segments)
              // create an element for each datum
              .enter()
              // append each element to the svg as a path element
              .append("path")
              // assign class for styling based on segment id
              // and each date for which segment has data
              .attr("class", function(d){
                let seg_class = 'c2p3 river_segments seg'
                seg_class += d.properties.seg_id_nat
                for (key in d.properties.day_count) {
                  if (d.properties.day_count[key]) {
                    seg_class += " " + self.timestep_c2p3 + key
                  }
                }
                return seg_class
              })
              // project segments
              .attr("d", self.map_path_c2)
              // add stroke width based on widthScale function
              .style("stroke-width", function(d){
                let value = d.properties['avg_ann_flow'];
                if (value){
                  return self.widthScale_c2(value);
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
          self.map_c2p3.append("g").call(self.scaleBarTop_c2)
          self.map_c2p3.append("g").call(self.scaleBarBottom_c2)

        },
        createMatrix_c2p3(csv_matrix_daily_2019, csv_daily_count_2019){
          const self = this;
          // append the svg object to the body of the page
          let svgMatrix = self.d3.select("#matrixChart_c2p3")
              .append("svg")
              // set viewbox
              .attr("viewBox", [0, 0, (self.matrix_width_c2 + self.matrix_margin.left + self.matrix_margin.right),
                (self.matrix_height_c2 + self.matrix_margin.top + self.matrix_margin.bottom)].join(' '))
              .attr("class", "c2p3 matrix_c2p3 matrix")

          // build array of all values of observed temperature
          let arrayObsTemps = [];
          for (i=0; i<csv_matrix_daily_2019.length; i++){
            let val = parseFloat(csv_matrix_daily_2019[i]['temp_c']);
            if (val){
              arrayObsTemps.push(val);
            } else {
              continue
            }
          };

          // Find maximum observed temperature to use in color scale
          let obsTempMax = Math.round(Math.max(...arrayObsTemps));

          // Find minimum observed temperature to use in color scale
          let obsTempMin = Math.round(Math.min(...arrayObsTemps));

          // build color scale
          let myColor = self.d3.scaleSequential()
              .interpolator(self.d3.interpolatePlasma) /* interpolateRdYlBu */
              // .domain([obsTempMax, obsTempMin]) // if INVERTING color scale
              .domain([obsTempMin, obsTempMax]) // if NOT INVERTING color scale

          // build list of posible counts (0 to 366)
          let temp_list = [];
          for (i = obsTempMin; i <= obsTempMax; i++) {
            temp_list.push(i);
          } 

          // define gradient for legend
          let defs = svgMatrix.append("defs")
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
          let legendsvg = svgMatrix.append("g")
              .attr("class", "c2p3 legendWrapper")
              .attr("width", self.matrix_width_c2)
              .attr("transform", "translate(" + (self.matrix_margin.left) + "," + 0 + ")")

          // append legend text
          legendsvg.append("text")
              .attr("class", "c2p3 legendAxis")
              .attr("text-anchor", "end")
              .attr("x", self.matrix_width_c2*1/4 - 10)
              .attr("y", 17)
              .attr("fill", "#ffffff")
              .text(obsTempMin + " °C")

          // append legend rectangle
          legendsvg.append("rect")
              .attr("class", "c2p3 matrixLegend")
              .attr("width", self.matrix_width_c2/2)
              .attr("height", 20)
              .attr("fill", "url(#gradient-RYB)")
              .attr("x", self.matrix_width_c2/4)

          // append legend text
          legendsvg.append("text")
              .attr("class", "c2p3 legendAxis")
              .attr("text-anchor", "start")
              .attr("x", self.matrix_width_c2*3/4 + 10)
              .attr("y", 17)
              .attr("fill", "#ffffff")
              .text(obsTempMax + " °C")

          // append background rectangle for matrix
          svgMatrix.append("rect")
                  .attr("class", "c2p3 matrixBkgdRect")
                  .attr("width", self.matrix_width_c2)
                  .attr("height", self.matrix_height_c2)
                  .attr("fill", "#141414")
                  .attr("filter", "url(#shadow2)")
                  .attr("transform",
                      "translate(" + self.matrix_margin.left + "," + self.matrix_margin.top + ")")

          // append tooltip for matrix to the matrix svg
          let tooltip = svgMatrix.append("text")
              .attr("class", "c2p3 tooltip matrix")

          // append the body of the matrix (transformed by margins)
          svgMatrix.append("g")
              .attr("class", "c2p3 transformedMatrix")
              .attr("transform",
                  "translate(" + self.matrix_margin.left + "," + self.matrix_margin.top + ")");

          // read in data for matrix
          self.myGroups_c2p3 = self.d3.map(csv_matrix_daily_2019, function(d){return d[self.timestep_c2p3];}).keys()
          self.myVars_c2p3 = self.d3.map(csv_matrix_daily_2019, function(d){return d.seg_id_nat;}).keys()

          // build x scale
          let x = self.d3.scaleBand()
              .range([0, self.matrix_width_c2])
              .domain(self.myGroups_c2p3)
              .padding(0.0);

          // build y scale
          let y = self.d3.scaleBand()
              .range([self.matrix_height_c2, 0])
              .domain(self.myVars_c2p3)
              .padding(0.0);

          // // add the cells to the matrix
          // select transformed matrix
          let transformedMatrix = self.d3.select(".c2p3.transformedMatrix")
          // append rectangles to the matrix
          let matrixCells = transformedMatrix.selectAll('matrixCells')
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
          self.createMatrixRectangles_c2p3(csv_matrix_daily_2019, csv_daily_count_2019, tooltip);

          transformedMatrix.append("g")
              .style("font-size", 10)
              .attr("transform", "translate(" + 0 + "," + self.matrix_height_c2 + ")")
              .attr("class", "c2p3 matrixAxis bottom")
              .call(self.d3.axisBottom(x).tickSize(0).tickValues(['2019-01-01', '2019-03-01', '2019-05-01', '2019-07-01', '2019-09-01', '2019-11-01']).tickPadding(7)) //.tickFormat(self.d3.timeFormat("%Y"))
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
              .attr("transform", "translate(" + self.matrix_width_c2 + "," + 0 + ")")
              .attr("class", "c2p3 matrixAxis right")
              .call(self.d3.axisRight(y).tickSize(0))
              .select(".domain").remove()

        },
        createMatrixRectangles_c2p3(csv_matrix_daily_2019, csv_daily_count_2019, tooltip) {
          const self = this;
          // // Set up necessary elements for mousemove event within svg with viewBox
          // find root svg element
          let svg_matrix_c2p3 = document.querySelector('.matrix_c2p3');
          // create a SVGPoint for future math
          let pt_matrix_c2p3 = svg_matrix_c2p3.createSVGPoint();
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
          let transformedMatrix = self.d3.select(".c2p3.transformedMatrix")

          // build x scale using data for matrix read in createMatrix_c2p3()
          let xscale = self.d3.scaleBand()
              .range([0, self.matrix_width_c2])
              .domain(self.myGroups_c2p3)
              .padding(0);

          // build y scale using data for matrix read in createMatrix_c2p3()
          let yscale = self.d3.scaleBand()
              .range([self.matrix_height_c2, 0])
              .domain(self.myVars_c2p3)
              .padding(0);

          // // build spatial rectangles
          // append to transformed matrix
          let SpatialRectangles = transformedMatrix.selectAll('.c2p3.matrixSpatialRect')
              // bind data to each element
              .data(self.segments)
              // create element for each datum
              .enter()
              // append rectangle for each element
              .append("rect")
              // set x value based on minimum date (2019-01-01)
              .attr("x", xscale("2019-01-01"))
              // set y value based on segment id
              .attr("y", function(d) { return yscale(d.properties.seg_id_nat) })
              // set width to width of matrix
              .attr("width", self.matrix_width_c2)
              // set height based on yscale bandwidth
              .attr("height", yscale.bandwidth() )
              // set class based on segment id
              .attr("class", function(d) {
                return 'c2p3 matrixSpatialRect seg' + d.properties.seg_id_nat;
              })
              // style rectangles to be transparent but available for selection
              .style("fill", "#141414")
              .style("stroke-width", 1)
              .style("stroke", "#141414")
              .style("opacity", 0)

          // // build temporal rectangles
          // append to transformed matrix
          let TemporalRectangles = transformedMatrix.selectAll('.c2p3.matrixTemporalRect')
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
              .attr("height", self.matrix_height_c2)
              // set class based on date
              .attr("class", function(d) {
                return 'c2p3 matrixTemporalRect time' + d[self.timestep_c2p3];
              })
              // style rectangles to be transparent but available for selection
              .style("fill", "#141414")
              .style("stroke-width", 2)
              .style("stroke", "#141414")
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
          let num_obs = data.properties.total_count;

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
          let barMax = this.matrix_height_c2/16
          let yScale_barChart_c2p2 = this.d3.scaleLinear()
              // set range of possible output values 
              .range([barMax, 0])
              // define range of input values
              .domain([1, this.temporalCountMax_c2p2]);
          
          // re-build y scale for matrix
          let yScale_matrix_c2p2 = this.d3.scaleBand()
              .range([this.matrix_height_c2, 0])
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
          // select the spatial rectangle corresponding to the highlighted segment
          if (data.properties.total_count > 0) {
              // select the spatial rectangle corresponding to the highlighted segment
              this.d3.selectAll(".c2p2.matrixSpatialRect.seg" + data.properties.seg_id_nat) 
                  // set stroke width, opacity, and stroke color
                  // based on whether segment has any observations in record
                  .attr("height", 0.5)
                  .style("stroke-width", 0)
                  .style("opacity", 1)
                  .style("stroke", "None")
                  .raise()
          } else {
              // select the spatial rectangle corresponding to the highlighted segment
              this.d3.selectAll(".c2p2.matrixSpatialRect.seg" + data.properties.seg_id_nat) 
                  // set stroke width, opacity, and stroke color
                  // based on whether segment has any observations in record
                  .attr("height", 3)
                  .style("fill", "#141414")
                  .style("stroke-width", 0.5)
                  .style("opacity", 1)
                  .style("stroke", "#e0e0e0")
                  // raise the spatial rectangle
                  .raise();
          }
          // dim reservoirs, bay, and river segments
          this.d3.selectAll(".c2p2.reservoirs")
              .style("fill", "#285C70") //#164152
              .style("stroke", "#285C70")
          this.d3.selectAll(".c2p2.delaware_bay")
              .style("fill", "#285C70")
          this.d3.selectAll(".c2p2.river_segments")
              .style("stroke", "#285C70")
          // select mouseovered segment and set to white with a shadow
          // and raise segment
          this.d3.selectAll(".c2p2.river_segments.seg" + data.properties.seg_id_nat)
              .attr("filter", "url(#shadow1)") 
              .style("stroke", "#ffffff")
              .style("opacity", 1)
              .raise()
        },
        mouseoutSeg_c2p2(data, tooltip) {

          // re-build y scale for matrix cells y placement
          let yScale_matrix_c2p2 = this.d3.scaleBand()
              .range([this.matrix_height_c2, 0])
              .domain(this.myVars_c2p2)
              .padding(0.1);

          // hide tooltip
          tooltip
              .style("opacity", 0)
          // select all spatial rectangles and set opacity back to zero
          // with black fill and stroke and raise
          this.d3.selectAll(".c2p2.matrixSpatialRect")
              .style("stroke", "#141414")
              .style("fill", "#141414")
              .style("stroke-width", 1)
              .style("opacity", 0)
              .attr("height", yScale_matrix_c2p2.bandwidth())
              .raise()
          // select all *temporal* rectangles and set fill and stroke back
          // to black and raise so that they are selectable
          this.d3.selectAll(".c2p2.matrixTemporalRect")
              .style("fill", "#141414")
              .style("stroke", "#141414")
              .raise()
          // resize spatial cells associated with segment
          this.d3.selectAll(".c2p2.cell.segment" + data.properties.seg_id_nat) 
              .attr("height", yScale_matrix_c2p2.bandwidth())
              .attr("y", yScale_matrix_c2p2(data.properties.seg_id_nat))
          // turn off text for cells associated with segment
          this.d3.selectAll(".c2p2.cellText.seg" + data.properties.seg_id_nat) 
              .attr("y", function(d) {
                  return yScale_matrix_c2p2(data.properties.seg_id_nat) - 5; 
              })
              .attr("fill", "None")
          // un-dim riversegments, reservoirs, and bay
          // and reset to default styling
          this.d3.selectAll(".c2p2.river_segments")
              .style("stroke", "#285C70")
          this.d3.selectAll(".c2p2.river_segments.seg" + data.properties.seg_id_nat) 
              .attr("filter","None")
              .style("stroke", "#285C70")
              .style("opacity", 1)
              .lower()
          this.d3.selectAll(".c2p2.reservoirs")
              .style("fill", "#285C70")
              .style("stroke", "#285C70")
              .lower()
          this.d3.selectAll(".c2p2.delaware_bay")
              .style("fill", "#285C70")
              .lower()
          // reset filter on background rectangle and lower
          this.d3.selectAll(".c2p2.matrixBkgdRect")
              .attr("filter", "url(#shadow2)")
        },
        mousemoveRect_c2p2(data, tooltip, mouse_x, mouse_y) {
          const self = this;

          // identify selected year
          let selected_year = data[self.timestep_c2p2];
          // bind mouse coordinates and year to tooltip
          tooltip
              .attr("y", mouse_y - 15)
              .attr("x", mouse_x - 39)
              .attr("text-align", "left")
              .text(selected_year)
              .raise()
        },
        mouseoverRect_c2p2(data, tooltip) {
          const self = this;

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
              .style("opacity", 0.8);
          // select mouseovered rectangle and set opacity to zero
          this.d3.selectAll(".c2p2.matrixTemporalRect.time" + data[self.timestep_c2p2])
              .style("opacity", 0)
          // dim reservoirs, bay, and river segments
          this.d3.selectAll(".c2p2.reservoirs")
              .style("fill", "#285C70") //#164152
              .style("stroke", "#285C70")
          this.d3.selectAll(".c2p2.delaware_bay")
              .style("fill", "#285C70")
          this.d3.selectAll(".c2p2.river_segments")
              .style("stroke", "#285C70")
          // select all river segments that have data in highlighted year
          // and make white
          this.d3.selectAll(".c2p2.segs_transparent." + self.timestep_c2p2 + data[self.timestep_c2p2])
              .style("stroke", "#ffffff")
              .style("stroke-width", 1.25)
              .style("opacity", 1)
              .raise()
        },
        mouseoutRect_c2p2(data, tooltip) {
          const self = this;
          // select all *spatial* rectangles and reset fill and stroke to black and raise
          this.d3.selectAll(".c2p2.matrixSpatialRect")
              .style("fill", "#141414")
              .style("stroke", "#141414")
              .raise()

          // hide tooltip
          tooltip
              .style("opacity", 0)
          // select all temporal rectangles and set fill and stroke back to black
          // with no opacity and raise (so available for selection but not visible)
          this.d3.selectAll(".c2p2.matrixTemporalRect")
              .style("stroke", "#141414")
              .style("fill", "#141414")
              .style("opacity", 0)
              .raise()
          // un-dim river segments, reservoirs, and bay
          // lower elements as needed
          this.d3.selectAll(".c2p2.river_segments")
              .style("stroke", "#285C70")
              .style("opacity", 1)
          this.d3.selectAll(".c2p2.segs_transparent." + self.timestep_c2p2 + data[self.timestep_c2p2])
              .style("stroke", "#141414")
              .style("stroke-width", 6)
              .style("opacity", 0)
              .lower()
          this.d3.selectAll(".c2p2.reservoirs")
              .style("fill", "#285C70")
              .style("stroke", "#285C70")
              .lower()
          this.d3.selectAll(".c2p2.delaware_bay")
              .style("fill", "#285C70")
              .lower()
          // select background rectangle and replace filter
          this.d3.selectAll(".c2p2.matrixBkgdRect")
              .attr("filter", "url(#shadow2)")
        },
        mousemoveSeg_c2p3(data, tooltip, mouse_x, mouse_y) {
          // find # of obs in 2019 for selected segment
          let num_obs = data.properties.year_count['2019'];

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

          // re-build y scale for matrix
          let yScale_matrix_c2p3 = this.d3.scaleBand()
              .range([this.matrix_height_c2, 0])
              .domain(this.myVars_c2p3)
              .padding(0.0);

          // set height for hovered matrix cells
          let cellHeight_c2p3 = 12

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
              .attr("height", cellHeight_c2p3)
              .attr("y", function(d){
                  return yScale_matrix_c2p3(data.properties.seg_id_nat) - cellHeight_c2p3/2; 
              })
              .raise()
          // select the spatial rectangle corresponding to the highlighted segment
          // set stroke width, opacity, and stroke color
          // based on whether segment has any observations in record
          if (data.properties.year_count['2019'] > 0) {
              // select the spatial rectangle corresponding to the highlighted segment
              this.d3.selectAll(".c2p3.matrixSpatialRect.seg" + data.properties.seg_id_nat)
                .style("stroke-width", 0)
                .style("opacity", 0)
                .style("stroke", "None")
                // raise the spatial rectangle
                .raise()
          } else {
              // select the spatial rectangle corresponding to the highlighted segment
              this.d3.selectAll(".c2p3.matrixSpatialRect.seg" + data.properties.seg_id_nat)
                .style("stroke-width", 0.5)
                .style("opacity", 1)
                .style("stroke", "#e0e0e0")
                .attr("height", 3)
                // raise the spatial rectangle
                .raise()
          }
          // dim reservoirs, bay, and river segments
          this.d3.selectAll(".c2p3.reservoirs")
              .style("fill", "#285C70") //#164152
              .style("stroke", "#285C70")
          this.d3.selectAll(".c2p3.delaware_bay")
              .style("fill", "#285C70")
          this.d3.selectAll(".c2p3.river_segments")
              .style("stroke", "#285C70")
          // select mouseovered segment and set to white with a shadow
          // and raise segment
          this.d3.selectAll(".c2p3.river_segments.seg" + data.properties.seg_id_nat)
              .attr("filter", "url(#shadow1)")
              .style("stroke", "#ffffff")
              .style("opacity", 1)
              .raise()
        },
        mouseoutSeg_c2p3(data, tooltip) {

          // re-build y scale for matrix
          let yScale_matrix_c2p3 = this.d3.scaleBand()
              .range([this.matrix_height_c2, 0])
              .domain(this.myVars_c2p3)
              .padding(0.0);

          // hide tooltip
          tooltip
              .style("opacity", 0)
          // select all spatial rectangles and set opacity back to zero
          // with black fill and stroke and raise
          this.d3.selectAll(".c2p3.matrixSpatialRect")
              .attr("height", yScale_matrix_c2p3.bandwidth())
              .style("stroke", "None")
              .style("stroke", "#141414")
              .style("fill", "#141414")
              .style("stroke-width", 1)
              .style("opacity", 0)
              .raise()
          // select all *temporal* rectangles and set fill and stroke back
          // to black and raise so that they are selectable
          this.d3.selectAll(".c2p3.matrixTemporalRect")
              .style("fill", "#141414")
              .style("stroke", "#141414")
              .raise()
          // resize matrix cells associated with segment
          this.d3.selectAll(".c2p3.cell.segment" + data.properties.seg_id_nat) 
              .attr("height", yScale_matrix_c2p3.bandwidth())
              .attr("y", yScale_matrix_c2p3(data.properties.seg_id_nat))
          // un-dim river segments, reservoirs, and bay
          // and reset to default styling
          this.d3.selectAll(".c2p3.river_segments")
              .style("stroke", "#285C70")
          this.d3.selectAll(".c2p3.river_segments.seg" + data.properties.seg_id_nat)
              .attr("filter","None")
              .style("stroke", "#285C70")
              .style("opacity", 1)
              .lower()
          this.d3.selectAll(".c2p3.reservoirs")
              .style("fill", "#285C70")
              .style("stroke", "#285C70")
              .lower()
          this.d3.selectAll(".c2p3.delaware_bay")
              .style("fill", "#285C70")
              .lower()
          // reset filter on background rectangle and lower
          this.d3.selectAll(".c2p3.matrixBkgdRect")
              .attr("filter", "url(#shadow2)")
        },
        mousemoveRect_c2p3(data, tooltip, mouse_x, mouse_y) {
          // identify selected date
          let selected_year = data[this.timestep_c2p3];

          // set tooltip x coordinate based on mouse coordinates and position w/i matrix
          let x_position;
          if (mouse_x > 70){
            x_position = mouse_x - 60
          } else {
            x_position = mouse_x + 20
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

          // rebuild x scale for matrix cells
          let x = self.d3.scaleBand()
              .range([0, self.matrix_width_c2])
              .domain(self.myGroups_c2p3)
              .padding(0.0);

          // set width for hovered matrix cells
          let cellWidth_c2p3 = 8

          // show tooltip
          tooltip
              .style("opacity", 1)
          // select background rectangle and remove filter
          this.d3.selectAll(".c2p3.matrixBkgdRect")
              .attr("filter", "url(#shadow3)")
          // select all temporal rectangles and make mostly opaque
          this.d3.selectAll(".c2p3.matrixTemporalRect")
              .style("opacity", 0.6)
              .style("stroke", "#141414")
              .style("fill", "#141414")
              .style("stroke-width", 2)
          // select matrix cells for highlighted timestep and raise
          this.d3.selectAll(".c2p3.cell.timestep" + data[self.timestep_c2p3])
              .attr("x", function (d){
                return x(data[self.timestep_c2p3]) - cellWidth_c2p3/2 
              })
              .attr("width", cellWidth_c2p3)
              .raise()
          // dim reservoirs, bay, and river segments
          this.d3.selectAll(".c2p3.reservoirs")
              .style("fill", "#285C70") //#164152
              .style("stroke", "#285C70")
          this.d3.selectAll(".c2p3.delaware_bay")
              .style("fill", "#285C70")
          this.d3.selectAll(".c2p3.river_segments")
              .style("stroke", "#285C70")
          // select all river segments that have data in highlighted year
          // and make white
          this.d3.selectAll(".c2p3.segs_transparent." + self.timestep_c2p3 + data[self.timestep_c2p3])
              .style("stroke", "#ffffff")
              .style("stroke-width", 1.25)
              .style("opacity", 1)
              .raise()
        },
        mouseoutRect_c2p3(data, tooltip) {
          const self = this;
          
          // select all *spatial* rectangles and reset fill and stroke to black
          this.d3.selectAll(".c2p3.matrixSpatialRect")
              .style("fill", "#141414")
              .style("stroke", "#141414")
              .raise()

          // hide tooltip
          tooltip
              .style("opacity", 0)

          // rebuild x scale for matrix cells
          let x = self.d3.scaleBand()
              .range([0, self.matrix_width_c2])
              .domain(self.myGroups_c2p3)
              .padding(0.0);
          
          // select all temporal rectangles and set fill and stroke back to black
          // with no opacity (so available for selection but not visible)
          this.d3.selectAll(".c2p3.matrixTemporalRect")
              .style("fill", "#141414")
              .style("stroke", "#141414")
              .style("stroke-width", 2)
              .style("opacity", 0)
              .raise()
          // select matrix cells for highlighted timestep
          this.d3.selectAll(".c2p3.cell.timestep" + data[self.timestep_c2p3])
              .attr("x", function(d){
                  return x(data[self.timestep_c2p3])
              })
              // set width and height based on bandwidth of axes
              .attr("width", x.bandwidth())
          // un-dim river segments, reservoirs, and bay
          // lower elements as needed
          this.d3.selectAll(".c2p3.river_segments")
              .style("stroke", "#285C70")
              .style("opacity", 1)
           this.d3.selectAll(".c2p3.segs_transparent." + self.timestep_c2p3 + data[self.timestep_c2p3])
              .style("stroke", "#141414")
              .style("stroke-width", 6)
              .style("opacity", 0)
              .lower()
          this.d3.selectAll(".c2p3.reservoirs")
              .style("fill", "#285C70")
              .style("stroke", "#285C70")
              .lower()
          this.d3.selectAll(".c2p3.delaware_bay")
              .style("fill", "#285C70")
              .lower()
          // select background rectangle and replace filter
          this.d3.selectAll(".c2p3.matrixBkgdRect")
              .attr("filter", "url(#shadow2)")
        }
      }
  }

</script>

<style scoped lang="scss">
#section_2 {
  margin-bottom: 0;
  text-align: left;

  .row {
    margin-top: 3vh;
    margin-bottom: 3vh;
  }

  #filter_row {
    height: 1vh;
  }

  #DRB_map_c2p1 {
    display: block;
    max-width: 700px;
    width: 100%;
  }

  #barChart_c2p1 {
    display: block;
    max-width: 700px;
    width: 100%;
  }

  #timeseries {
    display: block;
    max-width: 700px;
  }

  #hex-map {
    padding-left: 5em;
    padding-right: 5em;
    padding-top: 0em;
    padding-bottom: 1em;
  }

  .explainer-grid-container {
    padding: 5px;
    display: grid;
    grid-template-columns: 1fr auto auto auto 1fr;
    gap: 0px 10px;
    width: 100vw;
    min-width: 0;
    max-height: 90vh;
    @media screen and (max-width: 600px) {
      padding: 10px 0;
      gap: 0px;
    }
  }
  .explainer-grid-item {
    padding: 0px;
    display: flex;
    align-items: center;
    justify-content: center;
    text-align: center;
    min-width: 25vw;
    max-width: 350px;
  }
  #MatrixExplainerSpace {
    grid-column: 2;
  }
  #MatrixExplainerTime {
    grid-column: 3;
  }
  #MatrixExplainerColor {
    grid-column: 4;
  }
  .map-matrix-grid-container {
    padding: 25px;
    display: grid;
    align-items: center;
    justify-content: center;
    grid-template-columns: 50% 50%;
    grid-template-rows: 100%;
    grid-template-areas:
        "map matrix";
    gap: 0px 10px;
    height: 90vh;
    max-height: 90%;
    // width: 100%;
    min-width: 0;
    min-height: 0;
  }
  .mm-grid-item {
    padding: 0px;
    display: flex;
  }
  #DRB_map_c2p2 {
    grid-area: map;
    display: flex;
    max-height: 100%;
  }
  #matrixChart_c2p2 {
    grid-area: matrix;
    display: flex;
    max-height: 100%;
  }
  #DRB_map_c2p3 {
    grid-area: map;
    display: flex;
    max-height: 100%;
  }
  #matrixChart_c2p3 {
    grid-area: matrix;
    display: flex;
    max-height: 100%;
  }
}
</style>
<style lang="scss">
// this is a unscoped style tag, since the elements were added with d3 after Vue processed the template we to target the selectors we have to use an unscoped style block--that means these are global styles
.label, .domain{
  color: #1f4f61; //#285C70
  font-size: 0.5em;
}
.c2p2.cellText {
  font-size: 0.45em;
  //text-anchor: middle;
}

.delaware_bay {
  fill: #285C70; // original was #6399ba;
}

.river_segments {
  stroke: #285C70;// original was #6399ba;
  stroke-linecap: round;
}

.reservoirs {
  fill: #285C70; // original was #6399ba;
  stroke: #285C70;// original was #6399ba;
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
.legendAxis {
  color: #ffffff;
  font-size: 1em;;
}
.matrixAxis {
  fill: #999999;
  font-size: 1.1vh;
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
#hex-map {
  padding: 4rem;
  max-height: 90vh;
}
</style>
