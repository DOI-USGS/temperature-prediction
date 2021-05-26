<template>
  <section id="section_1">
    <br>
    <IntroMap />
    <div class="text-content">
      <div class="first_subheader">
        <h3 v-html="text.title1" />
      </div>
      <p v-html="text.paragraph1" />
      <p v-html="text.paragraph2" />
      <Chapter1Icons1 />
      <p v-html="text.paragraph3" />
      <p v-html="text.paragraph4" />
      <div class="subheader">
        <h3 v-html="text.title2" />
      </div>
      <p v-html="text.paragraph5" />
    </div>
    <div id="map-and-bar-chart">
      <div class="box">
        <div class="text-content move-up">
          <div class="viz-title-wrapper">
            <p class="viz-title">
              <span class="yellow">Temperature monitoring sites</span> in the Delaware River Basin
            </p>
            <p class="viz-subtitle" />
          </div>
        </div> 
        <div class="figure-content">
          <div
            id="DRB_map_c1p1"
            class="figure map_monitoring"
          />
        </div>
      </div>
      
      <div class="text-content">
        <p v-html="text.paragraph6" />
      </div>
      <div class="box">
        <div class="text-content move-up">
          <div class="viz-title-wrapper">
            <p class="viz-title">
              Number of <span class="yellow">daily temperature measurements</span> by year
            </p>
            <p class="viz-subtitle">
              Number of unique site-days measured by USGS streamgages or other state/local agencies.
            </p>
          </div>
        </div>
        <div class="figure-content">
          <div class="figure chart">
            <div id="barChart_c1p1" />
          </div>
        </div> 
      </div>
    </div>
    <div class="text-content">
      <p v-html="text.paragraph7" />
      <p v-html="text.paragraph8" />
      <Chapter1Icons2 />
      <div class="subheader">
        <h3 v-html="text.title3" />
      </div>
      <p v-html="text.paragraph9" />
      <p v-html="text.paragraph10" />
    </div>
    <div class="box-matrix">
      <div class="text-content move-up">
        <div class="viz-title-wrapper">
          <p class="viz-title">
            <span class="yellow">Availability</span> of temperature data in space and time
          </p>
          <p class="viz-subtitle">
            Hover over a stream reach on the map or a row in the matrix to see the amount of data available for a single reach over the last forty years.
          </p>
        </div>
      </div>
      <div
        id="matrix-explainer-container"
        class="hidden"
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
      <div id="button-container">
        <button 
          id="matrix-explainer-button"
          @click="explain"
        >
          Show me how to read this
        </button>
      </div>
      <div
        id="data-availability-container"
        class="map-matrix-grid-container"
      >
        <div
          id="DRB_map_c1p2"
          class="mm-grid-item"
        />
        <div
          id="matrixChart_c1p2"
          class="mm-grid-item"
        >
          <svg
            class="c1p2 matrix_c1p2"
          >
            <g
              class="prebuilt_c1p2_group"
            >
              <PrebuiltC1P2Matrix />
            </g>
            <g id="year_labels">
              <text
                class="c1p2 matrixAxis"
                transform="translate(86 997)"
              >1980</text>
              <text
                class="c1p2 matrixAxis"
                transform="translate(227 997)"
              >1990</text>
              <text
                class="c1p2 matrixAxis"
                transform="translate(366 997)"
              >2000</text>
              <text
                class="c1p2 matrixAxis"
                transform="translate(505 997)"
              >2010</text>
              <text
                class="c1p2 matrixAxis"
                transform="translate(644 997)"
              >2020</text>
            </g>
            <g id="space_labels">
              <line
                class="c1p2 NS_arrow"
                x1="692.5"
                y1="90"
                x2="692.5"
                y2="935"
              />
              <polygon
                class="c1p2 NS_arrowhead"
                points="686.6 100.3 692.9 88.2 699.3 100.3 686.6 100.3"
              />
              <polygon
                class="c1p2 NS_arrowhead"
                points="686.6 920.7 692.9 932.8 699.3 920.7 686.6 920.7"
              />
              <text
                class="c1p2 matrixAxis"
                transform="translate(686 70)"
              >N</text>
              <text
                class="c1p2 matrixAxis"
                transform="translate(686 960)"
              >S</text>
            </g>
          </svg>
        </div>
      </div>  
    </div>
    <div class="text-content">
      <div class="subheader">
        <h3 v-html="text.title4" />
      </div>
      <p v-html="text.paragraph11" />
      <Chapter1Icons3 />
      <p v-html="text.paragraph12" />
    </div>
    <div class="box-matrix">
      <div class="text-content move-up">
        <div class="viz-title-wrapper">
          <p class="viz-title">
            Stream temperature <span class="yellow">variability</span> in 2019
          </p>
          <p class="viz-subtitle">
            Hover over a stream reach on the map to see temperatures in that reach.
          </p>
          <p class="viz-subtitle">
            Hover over the chart to see average stream temperatures during each month.
          </p>
          <br>
        </div>
      </div>  
      <div class="map-matrix-grid-container">
        <div
          id="DRB_map_c1p3"
          class="mm-grid-item"
        />
        <div
          id="tempChart_c1p3"
          class="mm-grid-item"
        >
          <svg
            class="c1p3 temp_chart_c1p3"
          >
            <g
              class="prebuilt_c1p3_group"
            >
              <PrebuiltC1P3Chart />
            </g>
          </svg>
        </div>
      </div>
    </div>
    <div class="text-content">
      <p v-html="text.paragraph13" />
      <p v-html="text.paragraph14" />
    </div>   
    <div class="container-fluid">
      <div
        id="filter_row"
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
  import monitoringText from "./../../components/1-Monitoring/monitoringText";
  import MatrixExplainerSpace from "./../../components/1-Monitoring-Mobile/MatrixExplainerSpace";
  import MatrixExplainerTime from "./../../components/1-Monitoring-Mobile/MatrixExplainerTime";
  import MatrixExplainerColor from "./../../components/1-Monitoring-Mobile/MatrixExplainerColor";
  import PrebuiltC1P2Matrix from "./../../components/1-Monitoring/PrebuiltC1P2Matrix";
  import PrebuiltC1P3Chart from "./../../components/1-Monitoring/PrebuiltC1P3Chart";

  export default {
      name: 'MonitoringDesktop',
      components: {
        MatrixExplainerSpace,
        MatrixExplainerTime,
        MatrixExplainerColor,
        PrebuiltC1P2Matrix,
        PrebuiltC1P3Chart,
        IntroMap: () => import( /* webpackPreload: true */ /*webpackChunkName: "intromap"*/ "./../../components/1-Monitoring/IntroMap"),
        Chapter1Icons1: () => import( /* webpackPreload: true */ /*webpackChunkName: "chapter1icons1"*/ "./../../components/1-Monitoring/Chapter1Icons1"),
        Chapter1Icons2: () => import( /* webpackPreload: true */ /*webpackChunkName: "chapter1icons2"*/ "./../../components/1-Monitoring/Chapter1Icons2"),
        Chapter1Icons3: () => import( /* webpackPreload: true */ /*webpackChunkName: "chapter1icons3"*/ "./../../components/1-Monitoring/Chapter1Icons3")
      },
      data() {
        return {
          publicPath: process.env.BASE_URL, // this is need for the data files in the public folder, this allows the application to find the files when on different deployment roots
          d3: null, // this is used so that we can assign d3 plugins to the d3 instance
          
          // global variables instantiated in next section
          myGroups_c1p2: null,
          myVars_c1p2: null,
          availabilityColor: null,
          tempColor: null,
          temporalCountMax_c1p2: null,
          bar_chart_margin: {top: 10, right: 10, bottom: 35, left: 2},
          bar_chart_width: null, // this will get a value in the mounted hook
          bar_chart_height: null, // this will get a value in the mounted hook
          matrix_margin: {top: 50, right: 30, bottom: 30, left: 100}, //DO NOT CHANGE w/o changing in prebuilt component, too - WILL MESS UP SVG ALIGNMENT
          matrix_width: null, // this will get a value in the mounted hook
          matrix_height: null, // this will get a value in the mounted hook
          yScale_matrix_c1p2: null,
          temp_chart_margin:{top: 25, right: 50, bottom: 30, left: 5},
          temp_chart_width: null,
          temp_chart_height: null,
          temp_chart_gradient: null,
          scaleBarTop: null,
          scaleBarBottom: null,
          map_c1p1: null,
          map_c1p2: null,
          map_c1p3: null,
          map_width: null,
          map_height: null,
          map_margin: {top: 25, right: 20, bottom: 30, left: 10},
          map_path: null,
          widthScale: null,
          segments: null,
          segment_id_list: [],
          segmentDict: {},
          bay: null,
          reservoirs: null,
          
          //import text
          text: monitoringText.textContents
        }
      },
      mounted() {
        this.d3 = Object.assign(d3Base, { geoScaleBar, geoScaleBottom, geoScaleTop, geoScaleKilometers, geoScaleMiles }); // this loads d3 plugins with webpack

        this.bar_chart_width = 500 - this.bar_chart_margin.left - this.bar_chart_margin.right;
        this.bar_chart_height = window.innerHeight * 0.3 - this.bar_chart_margin.top - this.bar_chart_margin.bottom;
        this.matrix_width = 700 - this.matrix_margin.left - this.matrix_margin.right;
        this.matrix_height = 1000 - this.matrix_margin.top - this.matrix_margin.bottom;
        this.temp_chart_width = 600 - this.temp_chart_margin.left - this.temp_chart_margin.right;
        this.temp_chart_height = 600 - this.temp_chart_margin.top - this.temp_chart_margin.bottom;
        
        // set universal map frame dimensions for Ch 1 maps
        this.map_width = 250 - this.map_margin.left - this.map_margin.right;
        this.map_height = 600 - this.map_margin.top - this.map_margin.bottom;

        this.setPanels();  // begin script when window loads
      },
      methods: {
        setPanels() {
          const self = this;

          // // CHAPTER 1 MAPS      
          //create Albers equal area conic projection centered on DRB for Ch1 maps
          let map_projection = self.d3.geoAlbers()
              .center([0, 40.778894445])
              .rotate([75.613333335, 0, 0])
              .parallels([39.9352537033, 41.1825351867])
              .scale(this.map_height * 15.5)
              .translate([this.map_width / 2, this.map_height / 2]);

          this.map_path = self.d3.geoPath()
              .projection(map_projection);

          // create scale bar for Ch 1 maps
          this.scaleBarTop = self.d3.geoScaleBar()
              .orient(self.d3.geoScaleBottom)
              .projection(map_projection)
              .size([this.map_width, this.map_height])
              .units(self.d3.geoScaleKilometers)
              .distance(50)
              .label("50 kilometers")
              .labelAnchor("start")
              .tickSize(null)
              .tickValues(null);

          this.scaleBarBottom = self.d3.geoScaleBar()
              .orient(self.d3.geoScaleTop)
              .projection(map_projection)
              .size([this.map_width, this.map_height])
              .units(self.d3.geoScaleMiles)
              .distance(25)
              .label("25 miles")
              .labelAnchor("start")
              .tickSize(null)
              .tickValues(null);

          //create new svg container for the Ch 1 part 1 map
          this.map_c1p1 = self.d3.select("#DRB_map_c1p1")
              .append("svg")
              .attr("class", "map_c1p1 map_monitoring")
              .attr("id", "drb_map")
              .attr("viewBox", [0, 0, (this.map_width + this.map_margin.right + this.map_margin.left),
                (this.map_height + this.map_margin.top + this.map_margin.bottom)].join(' '));

          //create new svg container for the Ch 1 part 2 map
          this.map_c1p2 = self.d3.select("#DRB_map_c1p2")
              .append("svg")
              .attr("class", "map_c1p2")
              .attr("viewBox", [0, 0, (this.map_width + this.map_margin.right + this.map_margin.left),
                (this.map_height + this.map_margin.top + this.map_margin.bottom)].join(' '))
              .attr("width", "100%")
              .attr("height", "100%")
          
          // create new svg container for the Ch 1 part 3 map
          this.map_c1p3 = self.d3.select("#DRB_map_c1p3")
              .append("svg")
              .attr("class", "map_c1p3")
              .attr("viewBox", [0, 0, (this.map_width + this.map_margin.right + this.map_margin.left),
                (this.map_height + this.map_margin.top + this.map_margin.bottom)].join(' '))
              .attr("width", "100%")
              .attr("height", "100%")

          // // LOAD IN DATA AND CALL SCRIPTS IN STAGES
          self.loadData_1();
        },
        loadData_1() {
          const self = this;

          // First set of data and scripts to generate all Ch1 maps and Ch1 part 1 bar chart
          let promises_1 = [self.d3.csv("data/segment_maflow.csv"),
            self.d3.csv(self.publicPath + "data/source_annual_count.csv", self.type), // process data for bar chart as it is loaded
            self.d3.json(self.publicPath + "data/topojson/segment_data.json"),
            self.d3.json(self.publicPath + "data/topojson/unique_drb_sites.json"),
            self.d3.json(self.publicPath + "data/topojson/DelawareBay.json"),
            self.d3.json(self.publicPath + "data/topojson/reservoirs.json")
          ];
          Promise.all(promises_1).then(self.callback_1);
        },
        loadData_2() { 
          const self = this;

          // Second set of data and scripts to generate Ch1 part 2 matrix
          let promises_2 = [
            self.d3.csv(self.publicPath + "data/matrix_annual_obs.csv"),
            self.d3.csv(self.publicPath + "data/obs_annual_count.csv")
          ];

          Promise.all(promises_2).then(self.callback_2);
        },
        loadData_3() {
          const self = this;

          // Third set of data and scripts to generate Ch1 part 3 chart
          let promises_3 = [
            self.d3.csv(self.publicPath + "data/matrix_daily_2019_obs.csv"),
            self.d3.csv(self.publicPath + "data/obs_daily_count_2019.csv"),
            self.d3.csv(self.publicPath + "data/MonthlyRectangles2019.csv")
          ];
          Promise.all(promises_3).then(self.callback_3); 
        },
        // Function to process data for Ch 1 part 1 bar chart
        type(d, i, columns) {
          let t = 0;
          for (i = 1, t; i < columns.length; ++i)
            // for each row, which is d, cycle through the columns
            t += d[columns[i]] = +d[columns[i]];
          // create a new column in the data titled "total"
          d.total = t;
          return d;
        },
        // set up Ch1 part 1 map and Ch1 part 1 bar chart
        callback_1(data) {
          const self = this;

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

          // set stroke width scale for ch 1 map segments
          this.widthScale = this.makeWidthScale(csv_flow);

          // build dictionary (by pulling dictionary from topojson) and populate list of segments
          this.segments.forEach(function(segment) {
            let key;
            for (key in segment.properties) {
              if (key == 'seg_id_nat') {
                  self.segment_id_list.push(segment.properties[key])
              } else {
                  self.segmentDict[key] = segment.properties[key]
              }
            }
          })

          // Set up Ch 1 part 1 -
          // set up part 1 map
          this.setMap_c1p1(sites);
          // add bar chart to part 1
          this.setBarChart_c1p1(csv_source_count);

          // LOAD SECOND SET OF DATA
          this.loadData_2();
        },
        // Set up  Ch1 part 2 map and Ch 1 part 2 matrix
        callback_2(data) {
          let csv_matrix_annual = data[0];
          let csv_annual_count = data[1];

          // Set up Ch 1 part 2 -
          // set up part 2 map
          this.setMap_c1p2();
          // create part 2 matrix
          this.createMatrix_c1p2(csv_matrix_annual, csv_annual_count);

          // LOAD THIRD AND FINAL SET OF DATA
          this.loadData_3();
        },
        // Set up  Ch1 part 3 map and Ch 1 part 3 chart
        callback_3(data) {
          let csv_matrix_daily_2019 = data[0];
          let csv_daily_count_2019 = data[1];
          let csv_monthly_rects_2019 = data[2];

          // Set up Ch 1 part 3 -
          // set up part 3 map
          this.setMap_c1p3();
          // create part 3 chart
          this.createChart_c1p3(csv_matrix_daily_2019, csv_daily_count_2019, csv_monthly_rects_2019);
        },
        // Make width scale for stream segments based on modeled flow
        makeWidthScale(data) {
          const self = this;
          // // graduated scale
          // set width classes
          let widthClasses = [
            0.8,
            1,
            1.2,
            1.4,
            1.7,
            2,
            2.3,
            2.6,
            3,
            3.5
          ];

          // create width scale generator for natural breaks classification
          let widthScale = this.d3.scaleThreshold()
              .range(widthClasses);

          // build array of all values of flow
          let domainArrayFlow = [];
          for (let i = 0; i < data.length; i++) {
            let val = parseFloat(data[i]['avg_ann_flow']);
            domainArrayFlow.push(val);
          }

          // cluster data using ckmeans clustering algorithm to create natural breaks
          let clusters = ss.ckmeans(domainArrayFlow, 10);

          // reset domain array to cluster minimumns
          domainArrayFlow = clusters.map(function(d){
            return self.d3.min(d);
          });

          // remove first value from domain array to create class breakpoints
          domainArrayFlow.shift();

          // assign array of last 9 cluster minimums as domain
          widthScale.domain(domainArrayFlow);

          // // return calculated scale
          return widthScale;
        },
        setMap_c1p1(sites) {
          const self = this;

          ////////// BAY //////////
          // define bay group (ONCE PER CHAPTER)
          let drb_bay = self.map_c1p1.append('defs').append("g").attr("id","drbBay");
          // append bay path to bay group (ONCE PER CHAPTER)
          drb_bay.append("path")
              .datum(self.bay)
              .attr("class", "delaware_bay")
              .attr("d", self.map_path)
          // append bay group to c1p1 map  (ONCE PER MAP)
          self.map_c1p1.append("g").attr("class","c1p1 drb_bay")
            .append("use").attr("xlink:href","#drbBay")
          /////////////////////////

          ////////// RESERVIORS //////////
          // define reservoir group  (ONCE PER CHAPTER)
          let drb_reservoirs = self.map_c1p1.append('defs').append("g").attr("id","drbReservoirs");
          // append reservoir paths to reservoir group  (ONCE PER CHAPTER)
          drb_reservoirs.selectAll(".reservoirs")
              // bind polygons to each element to be created
              .data(self.reservoirs)
              // create an element for each datum
              .enter()
              // append each element to the svg as a path element
              .append("path")
              // project polygons
              .attr("d", self.map_path)
              // assign class for styling
              .attr("class", function(d){
                return "reservoirs res_id" + d.properties.GRAND_ID
              })
              // set stroke width so that polygons appear larger
              .style("stroke-width", 1.5)
          // append reservoir group to c1p1 map  (ONCE PER MAP)
          self.map_c1p1.append("g").attr("class","c1p1 drb_reservoirs")
		        .append("use").attr("xlink:href","#drbReservoirs")
          ////////////////////////////////          

          ////////// SEGMENTS //////////         
          // Define individual group <use> elements FOR EACH SEGMENT
          // for loop works here b/c not assigning mouseover event using segment_id
          let segment_id = null;
          for (segment_id in self.segmentDict) {
            // define group of single segment (ONCE PER CHAPTER, PER SEGMENT)
            let segment_group = self.map_c1p1.append('defs').append("g").attr("id", function(d) {return 'seg' + segment_id});
            // append path of single segment to the segment group  (ONCE PER CHAPTER)
            segment_group.selectAll(".river_segment")
                // bind segment to each element to be created
                .data(self.segments)
                // create an element for each datum
                .enter()
                // filter to ONLY the current segment
                .filter(function (d){
                  return d.properties.seg_id_nat == segment_id
                })
                // append the element to the svg as a path element
                .append("path")
                // assign class for styling
                .attr("class", function(d){
                  return 'river_segments seg' + segment_id
                })
                // project segments
                .attr("d", self.map_path)
                // set fill to none
                .style("fill", "None")
            // append group of single segment to c1p1 map (ONCE PER MAP)
            let href_id = '#seg' + segment_id
            self.map_c1p1.append("g").attr("class",function(d) {return 'c1p1 seg' + segment_id})
              .style("stroke", "#777b80")
              // add stroke width based on widthScale function
              .style("stroke-width", function(d){
                let value = self.segmentDict[segment_id]['avg_ann_flow'];
                if (value){
                  return self.widthScale(value);
                } else {
                  return "#ccc";
                }
              })
              .append("use").attr("xlink:href", href_id)
          }
          // add drb sites to map (directly b/c don't need to be re-used elsewhere in chapter)
          let drb_sites = self.map_c1p1.selectAll(".obs_sites")
              // bind points to each element to be created
              .data(sites)
              // create an element for each datum
              .enter()
              // append each element to the svg as a circle element
              .append("path")
              // project points and SET SIZE
              .attr("d", self.map_path.pointRadius(1.3))
              // assign class for styling
              .attr("class", "c1p1 obs_sites")

          // add scale bar
          let scaleBarGroup = self.map_c1p1.append("g")
            .attr("class", "c1p1 scaleBar")
            .attr("transform", "translate(" + (30) + "," + (self.map_height - 10) + ")")

          scaleBarGroup.append("g").attr("class", "c1p1 scaleBarTop").call(self.scaleBarTop);
          scaleBarGroup.append("g").attr("class", "c1p1 scaleBarBottom").call(self.scaleBarBottom).attr("transform", "translate(0,5)");
        },
        setBarChart_c1p1(csv_source_count) {
          const self = this;

          // append svg to div
          let svgChart = this.d3.select("#barChart_c1p1")
              .append("svg")
              .attr("viewBox", [0, 0, (this.bar_chart_width + this.bar_chart_margin.right + this.bar_chart_margin.left),
                (this.bar_chart_height + this.bar_chart_margin.top + this.bar_chart_margin.bottom)].join(' '))
              .attr("class", "c1p1 barChart chart")
              .attr("viewBox", [0, 0, (this.bar_chart_width + this.bar_chart_margin.right + this.bar_chart_margin.left),
                (this.bar_chart_height + this.bar_chart_margin.top + this.bar_chart_margin.bottom)].join(' '))
              .attr("class", "c1p1 barChart chart")

          let g = svgChart.append("g")
              .attr("class", "c1p1 transformedBarChart")
              .attr("transform", "translate(" + this.bar_chart_margin.left + "," + this.bar_chart_margin.top + ")");

          // define x
          let x = this.d3.scaleBand()
              .rangeRound([0, this.bar_chart_width])
              // set padding between bars
              .padding(0.1)

          // make y scale
          let y = this.d3.scaleLinear()
              // define range of output values
              .range([this.bar_chart_height, 0]);

          // // load processed data
          let data = csv_source_count

          // set x domain - create an array of the two site agency categories
          x.domain(data.map(function(d) { return d.year; }));

          // set y domain (range of input values)
          y.domain([0, this.d3.max(data, function(d) { return d.total })]).nice();

          // set up the series
          let bars = g.selectAll(".bar")
              // bind data to element
              .data(data)
              // create each element
              .enter()
              // append a rectangle for each element
              .append("rect")
              // assign a class to each element
              .attr("class", "bar_total")
              // assign fill color
              .attr("fill", "#FAB62F")
              // set x attribute based on year
              .attr("x", function(d) { return x(d.year); })
              // set y attribute
              .attr("y", function(d) { return y(d.total); })
              // this calculates the height down from the starting point
              .attr("height", function(d) { return (self.bar_chart_height - y(d.total)); })
              // calculate width for each band
              .attr("width", x.bandwidth())

          // place the x axis
          g.append("g")
              .attr("class", "c1p1 chartAxis bottom")
              .attr("transform", "translate(0," + this.bar_chart_height + ")")
              .call(this.d3.axisBottom(x).tickValues(['1960', '1970', '1980', '1990', '2000', '2010', '2020' ]).tickSize(0))
              .select(".domain").remove()

          // place and rotate x axis labels
          g.selectAll('text')
              .attr("y", 7)
              .attr("x", -27)
              .attr("dy", ".35em")
              .attr("transform", "rotate(-45)")
              .attr("text-anchor", "start")

          // place the y axis and format tick labels
          g.append("g")
              .attr("class", "c1p1 chartAxis right")
              // offset axis slightly to align closer to last bar
              .attr("transform", "translate(" + this.bar_chart_width * 0.943 + "," + 0 + ")")
              // give ticks k number format and set their size to cover the width of the chart
              .call(this.d3.axisRight(y).ticks(4, "s").tickSize(- this.bar_chart_width))
              .select(".domain").remove()
             
          // set the tick mark lines to background color
          svgChart.selectAll(".tick line").attr("stroke", "#0f0f0f").attr("stroke-width", 0.5).attr("stroke-dasharray", ("1, 2"))

        },
        setMap_c1p2(){
          const self = this;

          // // Set up necessary elements for mousemove event within svg with viewBox
          // find root svg element
          let svg_map_c1p2 = document.querySelector('.map_c1p2');
          // create a SVGPoint for future math
          let pt_map_c1p2 = svg_map_c1p2.createSVGPoint();
          // function to get point in global SVG space
          function cursorPoint_c1p2(evt){
            pt_map_c1p2.x = evt.clientX; pt_map_c1p2.y = evt.clientY;
            return pt_map_c1p2.matrixTransform(svg_map_c1p2.getScreenCTM().inverse());
          }
          // create local variable to store point coordinates
          let loc_map_c1p2 = {x: 0, y: 0};
          // reset coordinates when mousemoves over map svg
          svg_map_c1p2.addEventListener('mousemove', function(evt){
            loc_map_c1p2 = cursorPoint_c1p2(evt);
          }, false);

          // // Add tooltip as text element appended to map svg, without coordinates
          // add tooltip to map svg
          let tooltip = self.map_c1p2.append("text")
              .attr("class", "c1p2 tooltip_map")

          // // add delaware bay to map
          // re-use bay group
          self.map_c1p2.append("g").attr("class","c1p2 drb_bay")
		        .append("use").attr("xlink:href","#drbBay")

          // // add drb reservoirs to map
          // re-use reservoirs group
          self.map_c1p2.append("g").attr("class","c1p2 drb_reservoirs")
		        .append("use").attr("xlink:href","#drbReservoirs")
          console.log(self.segment_id_list)
          // // Use forEach to iterate over list of segment ids and add all segments         
          self.segment_id_list.forEach(function(segment_id) {
            let href_id = '#seg' + segment_id
              self.map_c1p2.append("g")
                .attr("class", function(d) {
                  let seg_class = 'c1p2 river_segments seg'
                  seg_class += segment_id
                  let year_key = null;
                  for (year_key in self.segmentDict[segment_id].year_count) {
                    if (self.segmentDict[segment_id].year_count[year_key] > 0) {
                      seg_class += " year" + year_key
                    }
                  }
                  return seg_class
                })
                .style("stroke", "#777b80")
                // add stroke width based on widthScale function
                .style("stroke-width", function(d){
                  let value = self.segmentDict[segment_id]['avg_ann_flow'];
                  if (value){
                    return self.widthScale(value);
                  } else {
                    return "#ccc";
                  }
                })
                .style("opacity", 1)
                .append("use").attr("xlink:href", href_id)
          })

          // // Add drb segments again as TRANSPARENT wide segments - for mouseover interaction only
          self.segment_id_list.forEach(function(transparent_segment_id) {
            let href_id = '#seg' + transparent_segment_id
            self.map_c1p2.append("g")
              // assign classes for c1p2 interaction
              .attr("class", function(d) {
                let seg_class = 'c1p2 segs_transparent seg'
                seg_class += transparent_segment_id
                let year_key = null;
                for (year_key in self.segmentDict[transparent_segment_id].year_count) {
                  if (self.segmentDict[transparent_segment_id].year_count[year_key] > 0) {
                    seg_class += " year" + year_key
                  }
                }
                return seg_class
              })
              // set opacity to 0 so segments aren't visible but can be selected
              .style("opacity", 0)
              // set stroke color to background color
              .style("stroke", "#0f0f0f")
              // set stroke width to be large for selection
              .style("stroke-width", 6)
              // trigger interactions
              .on("mouseover", function(d) {
                self.mouseoverSeg_c1p2(transparent_segment_id, tooltip);
              })
              .on("mousemove", function(d) {
                // pass mouse coordinates
                let mouse_x = loc_map_c1p2.x
                let mouse_y = loc_map_c1p2.y
                self.mousemoveSeg_c1p2(transparent_segment_id, tooltip, mouse_x, mouse_y); 
              })
              .on("mouseout", function(d) {
                self.mouseoutSeg_c1p2(transparent_segment_id, tooltip);
              })
              .append("use").attr("xlink:href", href_id)
          })
        },
        createMatrix_c1p2(csv_matrix_annual, csv_annual_count){
          const self = this;

          // set viewbox for existing svg
          let svgMatrix = self.d3.select(".c1p2.matrix_c1p2")
              .attr("viewBox", [0, 0, (self.matrix_width + self.matrix_margin.left + self.matrix_margin.right),
                (self.matrix_height + self.matrix_margin.top + self.matrix_margin.bottom)].join(' '))
              .attr("width", "100%")
              .attr("height", "100%")

          // // append background rectangle for matrix
          svgMatrix.append("rect")
              .attr("class", "c1p2 matrixBkgdRect")
              .attr("width", self.matrix_width)
              .attr("height", self.matrix_height)
              .attr("fill", "#0f0f0f")
              .attr("stroke", "#0f0f0f")
              .attr("stroke-width", 1)
              .attr("filter", "url(#shadow2)")
              .attr("transform",
                  "translate(" + self.matrix_margin.left + "," + self.matrix_margin.top + ")")
              .lower()      

          // translate group containing prebuilt matrix
          let prebuiltMatrix_c1p2 = svgMatrix.select(".prebuilt_c1p2_group")
              .attr("width", self.matrix_width)
              .attr("height", self.matrix_height)
              .attr("transform",
                      "translate(" + self.matrix_margin.left + "," + self.matrix_margin.top + ")")

          // build array of all values of observation counts
          let domainArrayTemporalCounts = [];
          let i;
          for (i=0; i<csv_matrix_annual.length; i++){
            let val = parseFloat(csv_matrix_annual[i]['obs_count']);
            domainArrayTemporalCounts.push(val);
          };

          // Find maximum count of observations to use in color scale
          self.temporalCountMax_c1p2 = Math.round(Math.max(...domainArrayTemporalCounts));
    
          // build color scale
          self.availabilityColor = self.d3.scaleSequential()
              .interpolator(self.d3.interpolatePlasma)
              .domain([1, self.temporalCountMax_c1p2]) // color scale is NOT INVERTED

          // build list of posible counts (0 to 366)
          let count_list = [];
          for (i = 1; i <= self.temporalCountMax_c1p2; i++) {
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
                return self.availabilityColor(d)
              })

          // append legend container
          let legendsvg = svgMatrix.append("svg")
              .attr("class", "c1p2 legendWrapper")
              
          let legendGroup = legendsvg.append("g")
              .attr("class", "c1p2 legendColor")
              .attr("width", self.matrix_width)
              .attr("transform", "translate(" + (self.matrix_margin.left) + "," + 0 + ")")

          // append legend text
          legendGroup.append("text")
              .attr("class", "c1p2 legendAxis")
              .attr("text-anchor", "end")
              .attr("x", self.matrix_width*1/4 - 10)
              .attr("y", 17)
              .text("Observed yearly")

          // append legend rectangle
          legendGroup.append("rect")
              .attr("class", "c1p2 matrixLegend")
              .attr("width", self.matrix_width/2)
              .attr("height", 20)
              .attr("fill", "url(#gradient-plasma)")
              .attr("x", self.matrix_width/4)

          // append legend text
          legendGroup.append("text")
              .attr("class", "c1p2 legendAxis")
              .attr("text-anchor", "start")
              .attr("x", self.matrix_width*3/4 + 10)
              .attr("y", 17)
              .text("Observed daily")

          // append tooltip for matrix to the matrix svg
          let tooltip = svgMatrix.append("text")
              .attr("class", "c1p2 tooltip_matrix")

          // append the body of the matrix (transformed by margins)
          svgMatrix.append("g")
              .attr("class", "c1p2 transformedMatrix")
              .attr("transform",
                  "translate(" + self.matrix_margin.left + "," + self.matrix_margin.top + ")")

          // read in data for matrix
          self.myGroups_c1p2 = self.d3.map(csv_matrix_annual, function(d){return d['year'];}).keys()
          self.myVars_c1p2 = self.d3.map(csv_matrix_annual, function(d){return d.seg_id_nat;}).keys()

          // add the overlaid rectangles (temporal and spatial) that will be used for selection
          self.createMatrixRectangles_c1p2(csv_matrix_annual, csv_annual_count, tooltip);

        },
        createMatrixRectangles_c1p2(csv_matrix_annual, csv_annual_count, tooltip) {
          const self = this;
          
          // // Set up necessary elements for mousemove event within svg with viewBox
          // find root svg element
          let svg_matrix_c1p2 = document.querySelector('.matrix_c1p2');
          // create a SVGPoint for future math
          let pt_matrix_c1p2 = svg_matrix_c1p2.createSVGPoint();
          // function to get point in global SVG space
          function cursorPoint_matrix_c1p2(evt){
            pt_matrix_c1p2.x = evt.clientX; pt_matrix_c1p2.y = evt.clientY;
            return pt_matrix_c1p2.matrixTransform(svg_matrix_c1p2.getScreenCTM().inverse());
          }
          // create local variable to store point coordinates
          let loc_matrix_c1p2;
          // // reset coordinates when mousemoves over matrix svg
          svg_matrix_c1p2.addEventListener('mousemove', function(evt){
            loc_matrix_c1p2 = cursorPoint_matrix_c1p2(evt);
          }, false);

          // Build matrix
          // create transformed matrix variable
          let transformedMatrix = self.d3.select(".c1p2.transformedMatrix")
              .on("mouseenter", function() {
                self.mouseenterTransformedRect_c1p2();
              })
              .on("mouseleave", function() {
                self.mouseleaveTransformedRect_c1p2();
              })

          // build x scale using data read in for matrix in createMatrix_c1p2()
          let xScale_matrix_c1p2 = self.d3.scaleBand()
              .range([0,self.matrix_width])
              .domain(self.myGroups_c1p2)
              .padding(0.05);

          // build y scale using data read in for matrix in createMatrix_c1p2()
          self.yScale_matrix_c1p2 = self.d3.scaleBand()
              .range([self.matrix_height, 0])
              .domain(self.myVars_c1p2)
              .padding(0.075);

          // // build temporal rectangles
          // append to transformed matrix
          let TemporalRectangles = transformedMatrix.selectAll('.c1p2.matrixTemporalRect')
              // bind data (count of observations in each year) to each element
              .data(csv_annual_count)
              // create element for each datum
              .enter()
              // append rectangle for each element
              .append("rect")
              // set x value based on year and xscale
              .attr("x", function(d){
                return xScale_matrix_c1p2(d['year'])
              })
              // set y value to 0
              .attr("y", 0)
              // set width based on bandwidth of x scale
              .attr("width", xScale_matrix_c1p2.bandwidth())
              // set height to height of matrix
              .attr("height", self.matrix_height)
              // set class based on year
              .attr("class", function(d) {
                return 'c1p2 matrixTemporalRect time' + d['year'];
              })
              // style rectangles to be transparent
              .style("fill", "#0f0f0f")
              .style("stroke-width", 0.5)
              .style("stroke", "#0f0f0f")
              .style("opacity", 0)

          // //  build spatial rectangles
          // append to transformed matrix
          let SpatialRectangles = transformedMatrix.selectAll('.c1p2.matrixSpatialRect')
              // bind data to each element
              .data(self.segments)
              // create element for each datum
              .enter()
              // append rectangle for each element
              .append("rect")
              // set x value based on minimum year (1980)
              .attr("x", xScale_matrix_c1p2("1980"))
              // set y value based on segment id
              .attr("y", function(d) { return self.yScale_matrix_c1p2(d.properties.seg_id_nat) })
              // set width to width of matrix
              .attr("width", self.matrix_width)
              // set height based on yscale bandwidth
              .attr("height", self.yScale_matrix_c1p2.bandwidth())
              // set class based on segment id
              .attr("class", function(d) {
                return 'c1p2 matrixSpatialRect seg' + d.properties.seg_id_nat;
              })
              // style rectangles to be transparent but available for selection
              .style("fill", "#0f0f0f")
              .style("stroke-width", 0)
              .style("stroke", "#0f0f0f")
              .style("opacity", 0)
              // trigger interactions and coordination with map on mouseover
              .on("mouseover", function(d) {
                self.mouseoverRect_c1p2(d, tooltip);
              })
              .on("mousemove", function(d) {
                let mouse_x = loc_matrix_c1p2.x
                let mouse_y = loc_matrix_c1p2.y
                self.mousemoveRect_c1p2(d, tooltip, mouse_x, mouse_y);
              })
              .on("mouseout", function(d) {
                self.mouseoutRect_c1p2(d, tooltip);
              })
        },
        setMap_c1p3(){
          const self = this;

          // // Set up necessary elements for mousemove event within svg with viewBox
          // find root svg element
          let svg_map_c1p3 = document.querySelector('.map_c1p3');
          // create a SVGPoint for future math
          let pt_map_c1p3 = svg_map_c1p3.createSVGPoint();
          // function to get point in global SVG space
          function cursorPoint_c1p3(evt){
            pt_map_c1p3.x = evt.clientX; pt_map_c1p3.y = evt.clientY;
            return pt_map_c1p3.matrixTransform(svg_map_c1p3.getScreenCTM().inverse());
          }

          // create local variable to store point coordinates
          let loc_map_c1p3 = null;
          // reset coordinates when mousemoves over map svg
          svg_map_c1p3.addEventListener('mousemove', function(evt){
            loc_map_c1p3 = cursorPoint_c1p3(evt);
          }, false);

          // // Add tooltip as text appended to map svg
          // add tooltip to map svg
          let tooltip = self.map_c1p3.append("text")
              .attr("class", "c1p3 tooltip_map")

          // // add delaware bay to map
          // re-use bay group
          self.map_c1p3.append("g").attr("class","c1p3 drb_bay")
		        .append("use").attr("xlink:href","#drbBay")

          // // add drb reservoirs to map
          // re-use reservoirs group
          self.map_c1p3.append("g").attr("class","c1p3 drb_reservoirs")
		        .append("use").attr("xlink:href","#drbReservoirs")

          // // Use forEach to iterate over list of segment ids to add all segments         
          self.segment_id_list.forEach(function(segment_id) {
            let href_id = '#seg' + segment_id
            self.map_c1p3.append("g")
              .attr("class", function(d) {
                let seg_class = 'c1p3 river_segments seg'
                seg_class += segment_id
                let month_key = null;
                for (month_key in self.segmentDict[segment_id].data_2019_monthly) {
                  if (self.segmentDict[segment_id].data_2019_monthly[month_key].month_count > 0) {
                    seg_class += " month" + month_key
                  }
                }
                return seg_class
              })
              .style("stroke", "#777b80")
              // add stroke width based on widthScale function
              .style("stroke-width", function(d){
                let value = self.segmentDict[segment_id]['avg_ann_flow'];
                if (value){
                  return self.widthScale(value);
                } else {
                  return "#ccc";
                }
              })
              .append("use").attr("xlink:href", href_id)
          })

          // // Add drb segments again as TRANSPARENT wide segments - for mouseover interaction only
          self.segment_id_list.forEach(function(transparent_segment_id) {
            let href_id = '#seg' + transparent_segment_id
            self.map_c1p3.append("g")
              // // assign classes for c1p3 interaction
              .attr("class", function(d) {
                let seg_class = 'c1p3 segs_transparent seg'
                seg_class += transparent_segment_id
                let month_key = null;
                for (month_key in self.segmentDict[transparent_segment_id].data_2019_monthly) {
                  if (self.segmentDict[transparent_segment_id].data_2019_monthly[month_key].month_count > 0) {
                    seg_class += " month" + month_key
                  }
                }
                return seg_class
              })
              // set opacity to 0 so segments aren't visible but can be selected
              .style("opacity", 0)
              // set stroke color to background color
              .style("stroke", "#0f0f0f")
              // set stroke width to be large for selection
              .style("stroke-width", 6)
              // trigger interactions
              .on("mouseover", function(d) {
                self.mouseoverSeg_c1p3(transparent_segment_id, tooltip);
              })
              .on("mousemove", function(d) {
                // pass mouse coordinates
                let mouse_x = loc_map_c1p3.x
                let mouse_y = loc_map_c1p3.y
                self.mousemoveSeg_c1p3(transparent_segment_id, tooltip, mouse_x, mouse_y); 
              })
              .on("mouseout", function(d) {
                self.mouseoutSeg_c1p3(transparent_segment_id, tooltip);
              })
              .append("use").attr("xlink:href", href_id)
          })
        },
        createChart_c1p3(csv_matrix_daily_2019, csv_daily_count_2019, csv_monthly_rects_2019){
          const self = this;

          // set viewbox for existing svg
          let svgChart = self.d3.select(".c1p3.temp_chart_c1p3")
              .attr("viewBox", [0, 0, (self.temp_chart_width + self.temp_chart_margin.left + self.temp_chart_margin.right),
                (self.temp_chart_height + self.temp_chart_margin.top + self.temp_chart_margin.bottom)].join(' '))
              .attr("width", "100%")
              .attr("height", "100%")

          // translate group containing prebuilt chart
          let prebuiltChart_c1p3 = svgChart.select(".prebuilt_c1p3_group")
              .attr("width", self.temp_chart_width)
              .attr("height", self.temp_chart_height)
              .attr("transform",
                      "translate(" + self.temp_chart_margin.left + "," + self.temp_chart_margin.top + ")")
          
          // build array of all values of observed temperature
          let arrayObsTemps = [];
          for (i=0; i<csv_matrix_daily_2019.length; i++){
            let val = parseFloat(csv_matrix_daily_2019[i]['mean_temp_c']);
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
          self.tempColor = self.d3.scaleSequential()
              .interpolator(self.d3.interpolatePlasma)
              .domain([obsTempMin, obsTempMax]) // color scale is NOT INVERTED

          // build list of posible temperatures
          let temp_list = [];
          for (i = obsTempMin; i <= obsTempMax; i++) {
            temp_list.push(i);
          } 

          // create linear gradient for lines and legend
          self.temp_chart_gradient = svgChart.append("defs")
            .append("linearGradient")
            .attr("id", "plasma-vertical")
            .attr("gradientUnits", "userSpaceOnUse")
            .attr("x1", "0%")
            .attr("y1", "100%")
            .attr("x2", "0%")
            .attr("y2", "0%")
            .selectAll("stop")
              .data(temp_list)
            .enter().append("stop")
              .attr("offset", function(d,i) {
                return i/(temp_list.length-1);
              })
              .attr("stop-color", function(d) {
                return self.tempColor(d)
              })

          // append legend container
          let legendsvg = svgChart.append("svg")
              .attr("class", "c1p3 legendWrapper")
          
          let legendGroup = legendsvg.append("g")
              .attr("class", "c1p3 legendColor")
              .attr("transform", "translate(" + (self.temp_chart_width + self.temp_chart_margin.left) + ",0)")

          // append legend rectangle
          legendGroup.append("rect")
              .attr("class", "c1p3 matrixLegend")
              .attr("width", 5)
              .attr("height", self.temp_chart_height)
              .attr("fill", "url(#plasma-vertical)")
              .attr("x", 20)
              .attr("y", self.temp_chart_margin.top)

          // append legend text - top
          legendGroup.append("text")
              .attr("class", "c1p3 legendAxis")
              .attr("text-anchor", "start")
              .attr("x", 0)
              .attr("y", self.temp_chart_margin.top - 8)
              .text(obsTempMax + " °C")

          // append legend text - bottom
          legendGroup.append("text")
              .attr("class", "c1p3 legendAxis")
              .attr("text-anchor", "start")
              .attr("x", 8)
              .attr("y", self.temp_chart_height + self.temp_chart_margin.top + self.temp_chart_margin.bottom - 5)
              .text(obsTempMin + " °C")

          // read in data for x scale
          let myGroups_c1p3 = self.d3.map(csv_matrix_daily_2019, function(d){return d['date'];}).keys()

          // build x scale
          let xscale = self.d3.scaleBand()
              .range([0, self.temp_chart_width])
              .domain(myGroups_c1p3)
              .padding(0);

          // select all temp lines and color with gradient
          svgChart.selectAll(".temp_line")
            .style("stroke", "url(#plasma-vertical)") //
            .style("stroke-width", "0.5")
            .style("fill", "None")
            .style("opacity", 1)

          // append monthly rectangles for mouseover on chart
          let MonthlyRectangles = svgChart.selectAll('.c1p3.chartMonthlyRect')
              // bind data to each element
              .data(csv_monthly_rects_2019)
              // create element for each datum
              .enter()
              // append rectangle for each element
              .append("rect")
              // set x value based on month start date and xscale
              .attr("x", function(d, i){
                return xscale(d.start_date);
              })
              // set y value to 0
              .attr("y", self.temp_chart_margin.top)
              // set width based on bandwidth of x scale
              .attr("width", function(d) {
                return ((self.temp_chart_width/365) * d.num_days);
              })
              // set height to height of matrix
              .attr("height", self.temp_chart_height + self.temp_chart_margin.bottom)
              // transform to align with inner svg
              .attr("transform",
                      "translate(" + self.temp_chart_margin.left + "," + 0 + ")")
              // set class based on month name
              .attr("class", function(d) {
                return 'c1p3 chartMonthlyRect month' + d.month;
              })
              // style rectangles to be transparent but available for selection
              .style("fill", "#0f0f0f")
              .style("stroke-width", 1.5)
              .style("stroke", "#0f0f0f")
              .style("opacity", 0)
              // trigger interactions and coordination with map on mouseover
              .on("mouseover", function(d) {
                self.mouseoverRect_c1p3(d);
              })            
              .on("mouseout", function(d) {
                self.mouseoutRect_c1p3(d);
              })

          // add text to  montly rectangles
          let monthLabels = svgChart.selectAll('.month_labels')
              // bind data (abbreviation of month name) to each element
              .data(csv_monthly_rects_2019)
              // create element for each datum
              .enter()
              // append rectangle for each element
              .append("text")
                  // set x value based on month start date and xscale
                  .attr("x", function(d){
                    return xscale(d.start_date) + 8;
                  })
                  .attr("y", self.temp_chart_height + self.temp_chart_margin.top + self.temp_chart_margin.bottom - 5)
                  .attr("transform",
                      "translate(" + self.temp_chart_margin.left + ",0)")
                  .attr("class", function(d) {
                    return 'c1p3 month_labels label' + d.month;
                  })
                  .attr("text-anchor", "start")
                  .text(function(d) { return d.month_abbr })
                  .style("fill", "#dedede")
                  // trigger interactions and coordination with map on mouseover
                  .on("mouseover", function(d) {
                    self.mouseoverRect_c1p3(d);
                  })            
                  .on("mouseout", function(d) {
                    self.mouseoutRect_c1p3(d);
                  })
        },
        mousemoveSeg_c1p2(segment_id, tooltip, mouse_x, mouse_y) {
          const self = this;

          // find # of observations for selected reach
          let num_obs = self.segmentDict[segment_id].total_count

          // bind mouse coordinates and # of obs to tooltip
          tooltip
              .attr("y", mouse_y - 5)
              .attr("x", function() {
                if (mouse_x < 180) {
                  return mouse_x + 5
                } else {
                  return mouse_x - 5
                }
              })
              .attr("text-anchor", function() {
                if (mouse_x < 180) {
                  return "start"
                } else {
                  return "end"
                }
              })
              .text(self.d3.format(',')(num_obs) + " obs.")
              .raise()
        },
        mouseoverSeg_c1p2(segment_id, tooltip) {
          const self = this;

          // build y scale for hover bar chart
          let barMax = self.matrix_height/16
          let yScale_barChart_c1p2 = self.d3.scaleLinear()
              // set range of possible output values 
              .range([barMax, 0])
              // define range of input values
              .domain([1, self.temporalCountMax_c1p2]);
          
          // make tooltip visible
          tooltip
              .style("opacity", 1);

          // select all spatial rectangles and make mostly opaque to dim matrix
          self.d3.selectAll(".c1p2.matrixSpatialRect")
              .style("opacity", 0.9)
          
          // if segment has any data in 41 years
          if (self.segmentDict[segment_id].total_count > 0) {
              // select all *temporal* rectangles and repurpose for bar charts
              // raise all temporal rectangles
              this.d3.selectAll(".c1p2.matrixTemporalRect")
                  .raise();
              // for all years...
              for (let i = 0; i < self.myGroups_c1p2.length; i++) {
                  let seg_year = self.myGroups_c1p2[i]
                  let barHeight;
                  // if there are observations for the selected segment in that year...
                  if (self.segmentDict[segment_id].year_count[seg_year] > 0) {
                    // convert the temporal rectangles into a bar chart of data availability over time
                    self.d3.selectAll(".c1p2.matrixTemporalRect.time" + seg_year)
                        .attr("height", function(i) {
                              barHeight = (barMax - yScale_barChart_c1p2(self.segmentDict[segment_id].year_count[seg_year]))+1;
                              return barHeight;
                        })
                        .attr("y", function(d) {
                            return self.yScale_matrix_c1p2(segment_id) - barHeight; 
                        })
                        // // style based on # of observations for that segment in that year
                        .style("fill", function(d) {
                          return self.availabilityColor(self.segmentDict[segment_id].year_count[seg_year]);
                        })
                        .style("stroke-width", 0)
                        .style("opacity", 1)
                        .raise()
                  }
              }
          } else if (self.segmentDict[segment_id].total_count == 0) {
              // if segment has no data in 41 years
              // select the spatial rectangle corresponding to the highlighted segment
              self.d3.selectAll(".c1p2.matrixSpatialRect.seg" + segment_id) 
                  // set stroke width, opacity, and stroke color
                  .attr("height", 3)
                  .style("fill", "#0f0f0f")
                  .style("stroke-width", 0.5)
                  .style("opacity", 0.8)
                  .style("stroke", "#e0e0e0")
                  // raise the spatial rectangle
                  .raise();
          }

          // select background rectangle and change filter
          self.d3.selectAll(".c1p2.matrixBkgdRect")
              .attr("filter", "url(#shadow3)")

          // select mouseovered segment and set to white
          // and raise segment
          self.d3.selectAll(".c1p2.river_segments.seg" + segment_id)
              .style("stroke", "#ffffff")
              .raise()
        },
        mouseoutSeg_c1p2(segment_id, tooltip) {
          const self = this;

          // hide tooltip
          tooltip
              .style("opacity", 0)

          // select all spatial rectangles and set opacity back to zero
          // with black fill and stroke and raise for selection
          this.d3.selectAll(".c1p2.matrixSpatialRect")
              .style("stroke", "#0f0f0f")
              .style("fill", "#0f0f0f")
              .style("stroke-width", 0)
              .style("opacity", 0)
              .attr("height", self.yScale_matrix_c1p2.bandwidth())
              .raise()

          // select all *temporal* rectangles
          // set y position and height back to defaults
          // and set fill and stroke back to black
          this.d3.selectAll(".c1p2.matrixTemporalRect")
              // set y value to 0
              .attr("y", 0)
              // set height to height of matrix
              .attr("height", self.matrix_height)
              // style rectangles to be transparent but available for selection
              .style("fill", "#0f0f0f")
              .style("stroke-width", 0.5)
              .style("stroke", "#0f0f0f")
              .style("opacity", 0)

          // reset selected river segment
          this.d3.selectAll(".c1p2.river_segments.seg" + segment_id) 
              // .attr("filter","None")
              .style("stroke", "#777b80")
              .lower()

          // select mouseovered transparent segment and raise segment for selection
          this.d3.selectAll(".c1p2.segs_transparent.seg" + segment_id)
              .raise()

          // reset filter on background rectangle and lower
          this.d3.selectAll(".c1p2.matrixBkgdRect")
              .attr("filter", "url(#shadow2)")
        },
        mouseenterTransformedRect_c1p2() {
          // select all spatial rectangles and make mostly opaque
          // to dim matrix
          this.d3.selectAll(".c1p2.matrixSpatialRect")
              .style("opacity", 0.8)

          // select background rectangle and change filter
          this.d3.selectAll(".c1p2.matrixBkgdRect")
              .attr("filter", "url(#shadow3)")
        },
        mouseleaveTransformedRect_c1p2() {
          // select all spatial rectangles and set opacity back to zero and raise
          this.d3.selectAll(".c1p2.matrixSpatialRect")
              .style("opacity", 0)
              .raise()

          // select background rectangle and replace filter
          this.d3.selectAll(".c1p2.matrixBkgdRect")
              .attr("filter", "url(#shadow2)")
        },
        mousemoveRect_c1p2(data, tooltip, mouse_x, mouse_y) {
          const self = this;

          // find id of selected reach
          let segment_id = data.properties.seg_id_nat

          // find # of observations for selected reach
          let num_obs = self.segmentDict[segment_id].total_count

          // bind mouse coordinates and # of obs to tooltip
          tooltip
              .attr("y", mouse_y-1)
              .attr("x", 95)
              .attr("text-anchor", "end")
              .text(self.d3.format(',')(num_obs) + " obs.")
              .raise()
        },
        mouseoverRect_c1p2(data, tooltip) {
          const self = this;

          let segment_id = data.properties.seg_id_nat

          // build y scale for hover bar chart
          let barMax = self.matrix_height/16
          let yScale_barChart_c1p2 = self.d3.scaleLinear()
              // set range of possible output values 
              .range([barMax, 0])
              // define range of input values
              .domain([1, self.temporalCountMax_c1p2]);
          
          // show tooltip
          tooltip
              .style("opacity", 1);

          // if segment has any data in 41 years
          if (self.segmentDict[segment_id].total_count > 0) {
              // select all *temporal* rectangles and repurpose for bar charts
              // raise all temporal rectnages
              this.d3.selectAll(".c1p2.matrixTemporalRect")
                  .raise();
              // for all years...
              for (let i = 0; i < self.myGroups_c1p2.length; i++) {
                  let seg_year = self.myGroups_c1p2[i]
                  let barHeight;
                  // if there are observations for the selected segment in that year...
                  if (self.segmentDict[segment_id].year_count[seg_year] > 0) {
                    // convert the temporal rectangles into a bar chart of data availability over time
                    self.d3.selectAll(".c1p2.matrixTemporalRect.time" + seg_year)
                        .attr("height", function(i) {
                              barHeight = (barMax - yScale_barChart_c1p2(self.segmentDict[segment_id].year_count[seg_year]))+1;
                              return barHeight;
                        })
                        .attr("y", function(d) {
                            return self.yScale_matrix_c1p2(segment_id) - barHeight; 
                        })
                        // // style based on # of observations for that segment in that year
                        .style("fill", function(d) {
                          return self.availabilityColor(self.segmentDict[segment_id].year_count[seg_year]);
                        })
                        .style("stroke-width", 0)
                        .style("opacity", 1)
                        .raise()
                  }
              }
          } else if (self.segmentDict[segment_id].total_count == 0) {
              // If the segment has no data in 41 years
              // select the spatial rectangle corresponding to the highlighted segment
              self.d3.selectAll(".c1p2.matrixSpatialRect.seg" + segment_id) 
                  // set stroke width, opacity, and stroke color
                  // based on whether segment has any observations in record
                  .attr("height", 3)
                  .style("fill", "#0f0f0f")
                  .style("stroke-width", 0.5)
                  .style("opacity", 1)
                  .style("stroke", "#e0e0e0")
                  // raise the spatial rectangle
                  .raise();
          }
          // select mouseovered segment and set to white
          // and raise segment
          self.d3.selectAll(".c1p2.segs_transparent.seg" + segment_id)
              .style("stroke", "#ffffff")
              .style("stroke-width", 3)
              .style("opacity", 1)
              .raise()
        },
        mouseoutRect_c1p2(data, tooltip) {
          const self = this;

          let segment_id = data.properties.seg_id_nat

          // hide tooltip
          tooltip
              .style("opacity", 0)
              
          // select all spatial rectangles and set opacity back to 0.8 (dimmed)
          // with black fill and stroke and raise
          this.d3.selectAll(".c1p2.matrixSpatialRect")
              .style("stroke", "#0f0f0f")
              .style("fill", "#0f0f0f")
              .style("stroke-width", 0)
              .style("opacity", 0.8)
              .attr("height", self.yScale_matrix_c1p2.bandwidth())
              .raise()

          // select all *temporal* rectangles
          // set y position and height back to defaults
          // and set fill and stroke back to black
          this.d3.selectAll(".c1p2.matrixTemporalRect")
              // set y value to 0
              .attr("y", 0)
              // set height to height of matrix
              .attr("height", self.matrix_height)
              // style rectangles to be transparent but available for selection
              .style("fill", "#0f0f0f")
              .style("stroke-width", 0.5)
              .style("stroke", "#0f0f0f")
              .style("opacity", 0)

          // reset selected transparent segment and lower
          this.d3.selectAll(".c1p2.segs_transparent.seg" + segment_id)
              .style("stroke", "#0f0f0f")
              .style("stroke-width", 6)
              .style("opacity", 0)
              .lower() 
        },
        mousemoveSeg_c1p3(segment_id, tooltip, mouse_x, mouse_y) {
          const self = this;

          // find # of obs in 2019 for selected segment
          let num_obs = self.segmentDict[segment_id].year_count['2019'];

          // bind mouse coordinates and # obs to tooltip
          tooltip
              .attr("y", mouse_y - 5)
              .attr("x", function() {
                if (mouse_x < 200) {
                  return mouse_x + 5
                } else {
                  return mouse_x - 5
                }
              })
              .attr("text-anchor", function() {
                if (mouse_x < 200) {
                  return "start"
                } else {
                  return "end"
                }
              })
              .text(this.d3.format(',')(num_obs) + " obs.")
              .raise()
        },
        mouseoverSeg_c1p3(segment_id, tooltip) {
          const self = this;

          // make tooltip visible
          tooltip
              .style("opacity", 1);

          // select mouseovered segment and set to white with a shadow
          // and raise segment
          self.d3.selectAll(".c1p3.river_segments.seg" + segment_id)
              .style("stroke", "#ffffff")
              .raise()

          // if segment has data in 2019
          if (self.segmentDict[segment_id].year_count['2019'] > 0) {
            // Dim all temperature timeseries lines
            self.d3.selectAll(".temp_line")
              .style("opacity", 0.1)

            // Select the associated temperature line and make
            // opaque and thicker to emphasize
            self.d3.selectAll(".temp_line.seg_" + segment_id)
              .style("opacity", 1)
              .style("stroke-width", 3)
              .raise()
          }
        },
        mouseoutSeg_c1p3(segment_id, tooltip) {
          const self = this;

          // hide tooltip
          tooltip
              .style("opacity", 0)

          // reset river segments to default styling
          self.d3.selectAll(".c1p3.river_segments.seg" + segment_id)
              .style("stroke", "#777b80")
              .lower()

          // select mouseovered transparent segment and raise segment
          self.d3.selectAll(".c1p3.segs_transparent.seg" + segment_id)
              .raise()

          // Select all temperature timeseries lines
          // and reset opacity and width
          self.d3.selectAll(".temp_line")
            .style("opacity", 1)
            .style("stroke-width", 0.5)

          // select all monthly rectangles and raise
          self.d3.selectAll(".c1p3.matrixMonthlyRect")
            .raise()
        },
        mouseoverRect_c1p3(data) {
          const self = this;

          // select all monthly rectangles and labels and make mostly opaque
          this.d3.selectAll(".c1p3.chartMonthlyRect")
              .style("opacity", 0.8)
              .style("stroke-width", 0)
          this.d3.selectAll(".c1p3.month_labels")
              .style("opacity", 0.2)

          // select monthly rectangle and label for highlighted month and make transparent
          this.d3.selectAll(".c1p3.chartMonthlyRect.month" + data.month)
              .style("opacity", 0)
          this.d3.selectAll(".c1p3.month_labels.label" + data.month)
              .style("opacity", 1)

          // select all river segments that have data in highlighted month
          // and make color according to average temperature in that month
          let month_sel = this.d3.selectAll(".c1p3.segs_transparent.month" + data.month)
          let selected_segments = month_sel._groups[0]
          selected_segments.forEach(function(segment) {
              let segment_id = segment.classList[2].split('seg')[1]
              self.d3.selectAll(".c1p3.segs_transparent.seg" + segment_id)
                  .style("stroke", function(d) {
                      return self.tempColor(self.segmentDict[segment_id].data_2019_monthly[data.month].month_avg_temp)
                  })
                  .style("stroke-width", 2)
                  .style("opacity", 1)
                  .raise()
          })
        },
        mouseoutRect_c1p3(data) {
          const self = this;

          // select all monthly rectangles and set fill and stroke back to black
          // with no opacity (so available for selection but not visible)
          this.d3.selectAll(".c1p3.chartMonthlyRect")
              .style("opacity", 0)
          // reset opacity of monthly rectangle labels
          this.d3.selectAll(".c1p3.month_labels")
              .style("opacity", 1)

          // reset styling of transparent river segments
           this.d3.selectAll(".c1p3.segs_transparent.month" + data.month)
              .style("stroke", "#0f0f0f")
              .style("stroke-width", 6)
              .style("opacity", 0)
        },
        explain() {
          const self = this;

          let button = this.d3.select("#matrix-explainer-button");
          let explainer = this.d3.select("#matrix-explainer-container");

          let visible = explainer.attr("class");
          
          if (visible==="hidden") {
             explainer.classed("hidden", false);
             explainer.classed("visible", true);
             button.html("Hide Explanation")
          } else {
             explainer.classed("hidden", true);
             explainer.classed("visible", false);
             button.html("Show Explanation")
          }
        }
      }
  }

</script>

<style scoped lang="scss">
// IMPORT COLORS
$backgroundCharcoal: #292b30;
$boxCharcoal: #0f0f0f;
$offWhite: #F1F1F1;
$offWhiteBox: #dedede;
$plasmaYellow: #FAB62F;
$plasmaPink: #BE3D7D;
$plasmaPurple: #62039A;
$plasmaBlue: #142167;
$darkBlue: #192c42;
$footerBlue: #00264C;
$mediumBlue: #5D9DC7; 
$grayBlue: #777b80;
$dimGray: #9c9c9c;

#section_1 {
  margin-bottom: 0;
  text-align: left;

  #filter_row {
    height: 0vh;
  }

  #barChart_c1p1 {
    display: block;
    max-width: 700px;
    width: 100%;
  }

  #timeseries {
    display: block;
    max-width: 700px;
    max-height: 100%;
  }

  #button-container { 
    display: flex;
    align-items: center;
    justify-content: center;
    padding-bottom: 2em;
  }

  button {
    text-align: center;
    margin: 0 40px;
    font-weight: 100;
    background-color: transparent;
    border: 0;
    box-shadow: 0 1px 0 $mediumBlue;
    color: $offWhite;
    position: relative;
    padding: 6px;
    margin: 0px 10px;
    text-decoration: none;
    text-transform: uppercase;

    @media (max-width: 600px) {
      font-size: .7em;
    }
  }

  button:hover {
    background-color: $mediumBlue;
    border-radius: 5px;
    padding: 6px;
    transition: background-color .2s ease;
    cursor: pointer;
  }

  button:active {
    box-shadow: none;
    top: 5px;
  }

  button:focus {
    outline: none;
  }

  #matrix-explainer-button {
    margin: auto;
  }

  .hidden {
    visibility: hidden;
    opacity: 0;
    height: 0;
    transition: visibility 0s, height .5s ease, opacity .5s ease;
  }

  .visible {
    visibility: visible;
    opacity: 1;
    height: auto;
    transition: visibility 0s, height .5s ease, opacity .5s ease;
  }

  #matrix-explainer-container {
    margin: auto;
    padding: 20px;
    display: grid;
    grid-template-columns: auto auto auto;
    grid-template-rows: auto 1fr;
    grid-template-areas: 
      "header header header"
      "space time color";
    gap: 0px 10px;
    max-width: 100%;
    min-width: 300px;
    max-height: 90vh;
    @media screen and (max-height: 770px) {
      max-height: 100%;
    }
    @media screen and (max-width: 600px) {
      padding: 0 10px;
      gap: 0px;
    }
  }

  .explainer-grid-item {
    padding: 0px;
    display: flex;
    align-self: center;
    justify-self: center;
    text-align: center;
    min-width: 25vw;
    max-width: 350px;
  }

  #MatrixExplainerSpace {
    grid-area: space;
  }

  #MatrixExplainerTime {
    grid-area: time;
  }

  #MatrixExplainerColor {
    grid-area: color;
  }

  .map-matrix-grid-container {
    margin: 5px;
    padding: 0em 0em 0em 0em;
    display: grid;
    grid-template-columns: auto 35% 65% auto;
    grid-template-areas:
        "left map matrix right";
    gap: 0px 0px;
    max-height: 90vh;
    min-width: 300px;
    max-width: 100%;
    @media screen and (max-height: 770px) {
        grid-template-columns: auto 30% 50% auto;
    }
    @media screen and (min-width: 1500px) {
        grid-template-columns: auto 20% 40% auto;
    }
  }

  .mm-grid-item {
    padding: 0px;
    display: flex;
    align-self: center;
  }

  #DRB_map_c1p2 {
    grid-area: map;
    max-height: 90vh;
  }

  #matrixChart_c1p2 {
    grid-area: matrix;
  }

  .matrix_c1p2 {
    max-height: 90vh;
  }

  #DRB_map_c1p3 {
    grid-area: map;
    max-height: 90vh;
    margin-right: 30px;
    margin-left: 10px;
  }

  #tempChart_c1p3 {
    grid-area: matrix;
    margin-right: 5px;
  }

  .temp_chart_c1p3 {
    max-height: 90vh;
  }
}
</style>

<style lang="scss">
// this is a unscoped style tag, since the elements were added with d3 after Vue processed the template we to target the selectors we have to use an unscoped style block--that means these are global styles

// IMPORT COLORS
$backgroundCharcoal: #292b30;
$boxCharcoal: #0f0f0f;
$offWhite: #F1F1F1;
$offWhiteBox: #d4d4d4;
$plasmaYellow: #FAB62F;
$plasmaPink: #BE3D7D;
$plasmaPurple: #62039A;
$plasmaBlue: #142167;
$darkBlue: #192c42;
$footerBlue: #00264C;
$mediumBlue: #5D9DC7; 
$grayBlue: #777b80;
$dimGray: #9c9c9c;

.label {
  font-size: 1em; //base font setting for all scale bar labels
}

.c1p1.scaleBar {
  color: $grayBlue;
  font-size: 0.5em;
  stroke-width: 0.8px;
}

.c1p2.scaleBar {
  color: $grayBlue;
  font-size: 0.7em;
  stroke-width: 0.8px;
}

.c1p3.scaleBar {
  color: $grayBlue;
  font-size: 0.7em;
  stroke-width: 0.8px;
}

.c1p2.cellText {
  font-size: 0.48em;
}

.delaware_bay {
  fill: $grayBlue; 
}

.river_segments {
  stroke: inherit;
  stroke-width: inherit;
  stroke-linecap: round;
}

.reservoirs {
  fill: $grayBlue; 
  stroke: $grayBlue;
}

.obs_sites {
  fill: $plasmaYellow;
  stroke: $boxCharcoal;
  stroke-width: 0.2;
  opacity: 0.9;
}

.map_c1p2 {
  max-height: 90vh;
  width: 100%;
}

.map_c1p3 {
  max-height: 90vh;
  width: 90%;
}

.chartAxis {
  color: $dimGray;
  font-size: 10pt;
}

.legendAxis {
  color: $dimGray;
  fill: $dimGray;
  font-size: 13pt;;
}

.tick text {
  font-size: .8em;
}

.matrixAxis {
  fill: $dimGray;
  color: $dimGray;
  font-size: 1.08em;
  text-align: middle;
  @media screen and (max-height: 770px) {
    font-size: 1.2em;
  }
}

.NS_arrow {
  stroke: $dimGray;
  stroke-width: 1.5px;
  stroke-dasharray: 1 6;
}

.NS_arrowhead {
  fill: $dimGray;
}

.chartAxisText {
  fill: $dimGray;
  font-size: 10pt;
  @media screen and (max-height: 770px) {
    font-size: 7pt;
  }
}

.c1p2.tooltip_map {
  fill: #ffffff;
  font-family: sans-serif;
  font-size: 0.67em;
  font-weight: bold;
  line-height: 1em;
  pointer-events: none;
  @media screen and (max-height: 770px) {
    font-size: 0.9em;
  }
  @media screen and (min-width: 1500px) {
    font-size: 0.55em;
  }
}

.c1p3.tooltip_map {
  fill: #ffffff;
  font-family: sans-serif;
  font-size: 0.8em;
  font-weight: bold;
  line-height: 1em;
  pointer-events: none;
  @media screen and (max-height: 770px) {
    font-size: 1em;
  }
  @media screen and (min-width: 1500px) {
    font-size: 0.7em;
  }
}

.tooltip_matrix {
  fill: #ffffff;
  font-family: sans-serif;
  font-size: 1em;
  font-weight: bold;
  line-height: 1em;
  pointer-events: none;
  @media screen and (max-height: 770px) {
    font-size: 1.4em;
  }
  @media screen and (min-width: 1500px) {
    font-size: 0.85em;
  }
}

.month_labels {
  font-family: sans-serif;
  font-size: 1em;
  font-weight: bold;
  pointer-events: none;
}

</style>
