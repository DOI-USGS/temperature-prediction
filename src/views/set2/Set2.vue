<template>
  <section id="section_2">
    <div class="text-content">
      <div class="viz-title"> 
        <h3 v-html="text.title1" />
      </div>
      <br>
      <p v-html="text.paragraph1" />
      <p v-html="text.paragraph2" />
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
            id="DRB_map_c2p1"
            class="figure map"
          />
        </div>
      </div>
      
      <div class="text-content">
        <p v-html="text.paragraph3" />
      </div>
      <div class="box">
        <div class="text-content move-up">
          <div class="viz-title-wrapper">
            <p class="viz-title">
              <span class="yellow">Number of temperature measurements</span> by year
            </p>
            <p class="viz-subtitle">
              Data from USGS streamgages or other state/local agencies.
            </p>
          </div>
        </div>
        <div class="figure-content">
          <div class="figure chart">
            <div id="barChart_c2p1" />
          </div>
        </div> 
      </div>
    </div>
    <div class="text-content">
      <p v-html="text.paragraph4" />
      <p v-html="text.paragraph5" />
      <Chapter2Icons1 />
      <br>
      <br>
      <div class="subheader">
        <h3 v-html="text.title2" />
      </div>
      <br>
      <p v-html="text.subtitle2" />
      <p v-html="text.paragraph6" />
      <p v-html="text.paragraph8" />
      <p v-html="text.paragraph9" />
      <p v-html="text.tiptextDesktop" />
    </div>
    <div class="box-matrix">
      <div class="text-content move-up">
        <div class="viz-title-wrapper">
          <p class="viz-title">
            Variability in <span class="yellow">data availability</span> of stream temperature
          </p>
          <p class="viz-subtitle">
            Visualizing the count of temperature measurements of all stream reaches in the basin.
          </p>
          <p class="viz-subtitle">
            Hover over a stream reach on the map to see the amount of data available for that reach over time.
          </p>
          <p class="viz-subtitle">
            Hover over a column in the matrix to see which reaches have data in a given year.
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
          id="DRB_map_c2p2"
          class="mm-grid-item"
        />
        <div
          id="matrixChart_c2p2"
          class="mm-grid-item"
        >
          <svg class="c2p2 matrix_c2p2 matrix">
            <g
              class="prebuilt_c2p2_group matrix"
              width="650"
              height="920"
            >
              <PrebuiltC2P2Matrix />
            </g>
            <g id="year_labels">
              <text
                class="c2p2 matrixAxis"
                transform="translate(25 997)"
              >1980</text>
              <text
                class="c2p2 matrixAxis"
                transform="translate(187 997)"
              >1990</text>
              <text
                class="c2p2 matrixAxis"
                transform="translate(351 997)"
              >2000</text>
              <text
                class="c2p2 matrixAxis"
                transform="translate(513 997)"
              >2010</text>
              <text
                class="c2p2 matrixAxis"
                transform="translate(660 997)"
              >2019</text>
            </g>
            <g>
              <line
                class="c2p2 NS_arrow"
                x1="710"
                y1="90"
                x2="710"
                y2="935"
              />
              <polygon
                class="c2p2 NS_arrowhead"
                points="701.6 103.3 709.9 88.2 718.3 103.3 701.6 103.3"
              />
              <polygon
                class="c2p2 NS_arrowhead"
                points="701.6 917.6 709.9 932.8 718.3 917.6 701.6 917.6"
              />
              <text
                class="c2p2 matrixAxis"
                transform="translate(705 70)"
              >N</text>
              <text
                class="c2p2 matrixAxis"
                transform="translate(705 960)"
              >S</text>
            </g>
          </svg>
        </div>
      </div>  
    </div>
    <div class="text-content">
      <div class="subheader">
        <h3 v-html="text.title3" />
      </div>
      <br>
      <p v-html="text.paragraph10" />
      <Chapter2Icons2 />
      <p v-html="text.paragraph11" />
    </div>
    <div class="box">
      <div class="text-content move-up">
        <div class="viz-title-wrapper">
          <p class="viz-title">
            <span class="yellow">Daily temperature</span> of river reaches in 2019
          </p>
          <p class="viz-subtitle">
            Each line = one reach.
          </p>
        </div>
      </div>  
      <div class="figure-content">
        <div
          id="timeseries"
          class="figure chart"
        >
          <MonitoringLineChart />
        </div>
      </div>
    </div>
    <div class="text-content">
      <p v-html="text.paragraph12" />
      <p v-html="text.paragraph13" />
    </div>
    <div class="box-matrix">
      <div class="text-content move-up">
        <div class="viz-title-wrapper">
          <p class="viz-title">
            Variability of <span class="yellow">water temperature</span> in 2019
          </p>
          <p class="viz-subtitle">
            Visualizing measured stream temperature in the basin in 2019.
          </p>
          <p class="viz-subtitle">
            Hover over a stream reach on the map to see the temperature in that reach during 2019.
          </p>
          <p class="viz-subtitle">
            Hover over a column in the matrix to see stream temperatures during a given month.
          </p>
          <br>
        </div>
      </div>  
      <div class="map-matrix-grid-container">
        <div
          id="DRB_map_c2p3"
          class="mm-grid-item"
        />
        <div
          id="matrixChart_c2p3"
          class="mm-grid-item"
        >
          <svg class="c2p3 matrix_c2p3 matrix">
            <g
              class="prebuilt_c2p3_group matrix"
              width="650"
              height="920"
            >
              <PrebuiltC2P3Matrix />
            </g>
            <g id="month_labels">
              <text
                class="c2p3 matrixAxis"
                transform="translate(48 997)"
              >Jan</text>
              <text
                class="c2p3 matrixAxis"
                transform="translate(153 997)"
              >Mar</text>
              <text
                class="c2p3 matrixAxis"
                transform="translate(263 997)"
              >May</text>
              <text
                class="c2p3 matrixAxis"
                transform="translate(375 997)"
              >Jul</text>
              <text
                class="c2p3 matrixAxis"
                transform="translate(478 997)"
              >Sept</text>
              <text
                class="c2p3 matrixAxis"
                transform="translate(590 997)"
              >Nov</text>
            </g>
            <g>
              <line
                class="c2p3 NS_arrow"
                x1="710"
                y1="90"
                x2="710"
                y2="935"
              />
              <polygon
                class="c2p3 NS_arrowhead"
                points="701.6 103.3 709.9 88.2 718.3 103.3 701.6 103.3"
              />
              <polygon
                class="c2p3 NS_arrowhead"
                points="701.6 917.6 709.9 932.8 718.3 917.6 701.6 917.6"
              />
              <text
                class="c2p3 matrixAxis"
                transform="translate(705 70)"
              >N</text>
              <text
                class="c2p3 matrixAxis"
                transform="translate(705 960)"
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
      <br>
      <p v-html="text.paragraph14" />
      <p v-html="text.paragraph15" />
    </div>
    <div class="box-matrix">
      <div class="text-content">
        <div class="viz-title-wrapper">
          <p class="viz-title">
            <span class="yellow">Most observed</span> areas in continental United States
          </p>
          <p class="viz-subtitle">
            USGS, state, or local agency stream temperature observations since 1985.
          </p>
        </div>
      </div>
      <div
        id="map-container"
        class="figure-content"
      >
        <DesktopHexMap />
      </div>
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
  import PrebuiltC2P2Matrix from "./../../components/2-Monitoring/PrebuiltC2P2Matrix";
  import PrebuiltC2P3Matrix from "./../../components/2-Monitoring/PrebuiltC2P3Matrix";
  import DesktopHexMap from "./../../components/2-Monitoring/HexMap";

  export default {
      name: 'Set2',
      components: {
        MonitoringLineChart,
        MatrixExplainerSpace,
        MatrixExplainerTime,
        MatrixExplainerColor,
        PrebuiltC2P2Matrix,
        PrebuiltC2P3Matrix,
        DesktopHexMap,
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
          availabilityColor: null,
          myGroups_c2p3: null,
          myVars_c2p3: null,
          tempColor: null,
          temporalCountMax_c2p2: null,
          timestep_c2p3: 'date',
          chart_margin: {top: 30, right: 70, bottom: 45, left: 10},
          chart_width: null, // this will get a value in the mounted hook
          chart_height: null, // this will get a value in the mounted hook
          matrix_margin: {top: 50, right: 15, bottom: 30, left: 35}, //DO NOT CHANGE - WILL MESS UP SVG ALIGNMENT
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

        this.chart_width = 500 - this.chart_margin.left - this.chart_margin.right;
        this.chart_height = window.innerHeight * 0.25 - this.chart_margin.top - this.chart_margin.bottom;
        this.matrix_width_c2 = 700 - this.matrix_margin.left - this.matrix_margin.right;
        this.matrix_height_c2 = 1000 - this.matrix_margin.top - this.matrix_margin.bottom; //window.innerHeight * 0.9 - this.matrix_margin.top - this.matrix_margin.bottom;
      
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
          this.map_width = 350;
          this.map_height = 600; //
          this.map_margin = {top: 15, right: 20, bottom: 5, left: 5};

          //create Albers equal area conic projection centered on DRB for ch2 maps
          let map_projection_c2 = self.d3.geoAlbers()
              .center([0, 40.678894445]) //40.658894445
              .rotate([75.413333335, 0, 0]) //75.363333335 centered, 76.2 far right, 74.6 far left
              .parallels([39.9352537033, 41.1825351867])
              .scale(this.map_height * 15)
              .translate([this.map_width / 2, this.map_height / 2]);

          this.map_path_c2 = self.d3.geoPath()
              .projection(map_projection_c2);

          // create scale bar for ch 2 maps
          this.scaleBarTop_c2 = self.d3.geoScaleBar()
              .orient(self.d3.geoScaleBottom)
              .projection(map_projection_c2)
              .size([this.map_width, this.map_height])
              // .left(.10) // .15 centered, .45 far right
              // .top(.96)
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
              // .left(.10) // .15 centered, .45 far right
              // .top(.97)
              .units(self.d3.geoScaleMiles)
              .distance(25)
              .label("25 miles")
              .labelAnchor("start")
              .tickSize(null)
              .tickValues(null);

          //create new svg container for the ch 2 panel 1 map
          this.map_c2p1 = self.d3.select("#DRB_map_c2p1")
              .append("svg")
              .attr("class", "map_c2p1 map") //map
              .attr("id", "drb_map")
              .attr("viewBox", [0, 0, (this.map_width + this.map_margin.right + this.map_margin.left),
                (this.map_height + this.map_margin.top + this.map_margin.bottom)].join(' '));

          //create new svg container for the ch 2 panel 2 map
          this.map_c2p2 = self.d3.select("#DRB_map_c2p2")
              .append("svg")
              .attr("class", "map_c2p2 map_matrix") //map_matrix
              .attr("viewBox", [0, 0, (this.map_width + this.map_margin.right + this.map_margin.left),
                (this.map_height + this.map_margin.top + this.map_margin.bottom)].join(' '))
              .attr("width", "100%")
          
          // create new svg container for the ch 2 panel 3 map
          this.map_c2p3 = self.d3.select("#DRB_map_c2p3")
              .append("svg")
              .attr("class", "map_c2p3 map_matrix")
              .attr("viewBox", [0, 0, (this.map_width + this.map_margin.right + this.map_margin.left),
                (this.map_height + this.map_margin.top + this.map_margin.bottom)].join(' '))
              .attr("width", "100%")

          // // LOAD IN DATA AND CALL SCRIPTS IN STAGES
          self.loadData_1();
        },
        loadData_1() {
          const self = this;

          // First set of data and scripts to generate all Ch2 maps and Ch2 panel 1 bar chart
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
            self.d3.csv(self.publicPath + "data/obs_daily_count_2019.csv"),
            self.d3.csv(self.publicPath + "data/MonthlyRectangles2019.csv")
          ];
          Promise.all(promises_3).then(self.callback_3); 
        },
        // Function to process data for bar chart
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

          // join csv flow data to geojson segments
          // ch 2 map segments
          this.segments = this.joinData(this.segments, csv_flow);

          // set stroke width scale
          // for ch 2 map segments
          this.widthScale_c2 = this.makeWidthScale_c2(csv_flow);

          // build dictionary
          this.segments.forEach(function(segment) {
            self.segmentDict[segment.properties.seg_id_nat]={}
            self.segmentDict[segment.properties.seg_id_nat]['avg_ann_flow'] = segment.properties.avg_ann_flow
            self.segmentDict[segment.properties.seg_id_nat]['total_count'] = segment.properties.total_count
            self.segmentDict[segment.properties.seg_id_nat]['year_count'] = {}
            let year_key = null;
            for (year_key in segment.properties.year_count) {
              self.segmentDict[segment.properties.seg_id_nat]['year_count'][year_key] = segment.properties.year_count[year_key]
            }
            self.segmentDict[segment.properties.seg_id_nat]['data_2019'] = {}
            let day_key = null;
            for (day_key in segment.properties.day_count) {
              self.segmentDict[segment.properties.seg_id_nat]['data_2019'][day_key] = {}
              self.segmentDict[segment.properties.seg_id_nat]['data_2019'][day_key]['day_count'] = segment.properties.day_count[day_key]
              self.segmentDict[segment.properties.seg_id_nat]['data_2019'][day_key]['day_t_c'] = segment.properties.day_t_c[day_key]
            }
            self.segmentDict[segment.properties.seg_id_nat]['month_count'] = {}
            let month_key = null;
            for (month_key in segment.properties.month_count) {
              self.segmentDict[segment.properties.seg_id_nat]['month_count'][month_key] = segment.properties.month_count[month_key]
            }
          })
          // console.log(self.segmentDict)

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
          let csv_monthly_rects_2019 = data[2];

          // Set up Ch 2 panel 3 -
          // set up panel 3 map
          this.setMap_c2p3();
          // create panel 3 matrix
          this.createMatrix_c2p3(csv_matrix_daily_2019, csv_daily_count_2019, csv_monthly_rects_2019);
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
            0.6,
            0.9,
            1.2,
            1.4,
            1.7,
            2,
            2.3,
            2.6,
            3,
            3.5
          ];

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
          // cluster data using ckmeans clustering algorithm to create natural breaks
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

          ////////// BAY //////////
          // define bay group (ONCE PER CHAPTER)
          let drb_bay = self.map_c2p1.append('defs').append("g").attr("id","drbBay");
          // append bay path to bay group (ONCE PER CHAPTER)
          drb_bay.append("path")
              .datum(self.bay)
              .attr("class", "delaware_bay")
              .attr("d", self.map_path_c2)
          // append bay group to c2p1 map  (ONCE PER MAP)
          self.map_c2p1.append("g").attr("class","c2p1 drb_bay")
            .append("use").attr("xlink:href","#drbBay")
          /////////////////////////

          ////////// RESERVIORS //////////
          // define reservoir group  (ONCE PER CHAPTER)
          let drb_reservoirs = self.map_c2p1.append('defs').append("g").attr("id","drbReservoirs");
          // append reservoir paths to reservoir group  (ONCE PER CHAPTER)
          drb_reservoirs.selectAll(".reservoirs")
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
                return "reservoirs res_id" + d.properties.GRAND_ID
              })
              // set stroke width so that polygons appear larger
              .style("stroke-width", 0.75)
          // append reservoir group to c2p1 map  (ONCE PER MAP)
          self.map_c2p1.append("g").attr("class","c2p1 drb_reservoirs")
		        .append("use").attr("xlink:href","#drbReservoirs")
          ////////////////////////////////          

          ////////// SEGMENTS //////////
          // build array of all segment ids of segments
          let i;
          for (i=0; i<self.segments.length; i++){
            self.segment_id_list.push(self.segments[i].properties.seg_id_nat);
          };
          
          // Define individual group <use> elements FOR EACH SEGMENT
          // for loop works here b/c not assigning mouseover event using segment_id
          let segment_id = null;
          for (segment_id in self.segmentDict) {
            // define group of single segment (ONCE PER CHAPTER, PER SEGMENT)
            let segment_group = self.map_c2p1.append('defs').append("g").attr("id", function(d) {return 'seg' + segment_id});
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
                .attr("d", self.map_path_c2)
                // set fill to none
                .style("fill", "None")
            // append group of single segment to c2p1 map (ONCE PER MAP)
            let href_id = '#seg' + segment_id
            self.map_c2p1.append("g").attr("class",function(d) {return 'c2p1 seg' + segment_id})
              .style("stroke", "#777b80")
              // add stroke width based on widthScale function
              .style("stroke-width", function(d){
                let value = self.segmentDict[segment_id]['avg_ann_flow'];
                if (value){
                  return self.widthScale_c2(value);
                } else {
                  return "#ccc";
                }
              })
              .append("use").attr("xlink:href", href_id)
          }
          // add drb sites to map (directly b/c don't need to be re-used elsewhere in chapter)
          let drb_sites = self.map_c2p1.selectAll(".obs_sites")
              // bind points to each element to be created
              .data(sites)
              // create an element for each datum
              .enter()
              // append each element to the svg as a circle element
              .append("path")
              // project points and SET SIZE
              .attr("d", self.map_path_c2.pointRadius(0.9))
              // assign class for styling
              .attr("class", function(d) {
                if (d.properties.source === 'USGS'){
                  return "c2p1 obs_sites USGS_station"
                } else {
                  return "c2p1 obs_sites Other_station"
                }
              })

          // add scale bar
          let scaleBarGroup = self.map_c2p1.append("g")
            .attr("class", "c2p1 scaleBar")
            .attr("transform", "translate(" + (30) + "," + (self.map_height - 10) + ")")

          scaleBarGroup.append("g").attr("class", "c2p1 scaleBarTop").call(self.scaleBarTop_c2);
          scaleBarGroup.append("g").attr("class", "c2p1 scaleBarBottom").call(self.scaleBarBottom_c2).attr("transform", "translate(0,5)");
        },
        setBarChart_c2p1(csv_source_count) {
          const self = this;

          // append svg to div
          let svgChart = this.d3.select("#barChart_c2p1")
              .append("svg")
              .attr("viewBox", [0, 0, (this.chart_width + this.chart_margin.right + this.chart_margin.left),
                (this.chart_height + this.chart_margin.top + this.chart_margin.bottom)].join(' '))
              .attr("class", "c2p1 barChart chart")
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
              // define range of output values
              .range([this.chart_height, 0]);

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
              .attr("height", function(d) { return (self.chart_height - y(d.total)); })
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
              .call(this.d3.axisRight(y).ticks(4, "s").tickSize(- this.chart_width))
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
          svgChart.selectAll(".tick line").attr("stroke", "#1a1b1c").attr("stroke-width", 0.5).attr("stroke-dasharray", ("1, 2"))

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

          // // add delaware bay to map
          // re-use bay group
          self.map_c2p2.append("g").attr("class","c2p2 drb_bay")
		        .append("use").attr("xlink:href","#drbBay")

          // // add drb reservoirs to map
          // re-use reservoirs group
          self.map_c2p2.append("g").attr("class","c2p2 drb_reservoirs")
		        .append("use").attr("xlink:href","#drbReservoirs")

          // // If adding all segments, AND ADDING MOUSEOVER, use forEach to iterate over list of segment ids         
          self.segment_id_list.forEach(function(segment_id) {
            let href_id = '#seg' + segment_id
            self.map_c2p2.append("g")
              .attr("class", function(d) {
                let seg_class = 'c2p2 river_segments seg'
                seg_class += segment_id
                let year_key = null;
                for (year_key in self.segmentDict[segment_id]['year_count']) {
                  if (self.segmentDict[segment_id]['year_count'][year_key] > 0) {
                    seg_class += " " + self.timestep_c2p2 + year_key
                  }
                }
                return seg_class
              })
              .style("stroke", "#777b80")
              // add stroke width based on widthScale function
              .style("stroke-width", function(d){
                let value = self.segmentDict[segment_id]['avg_ann_flow'];
                if (value){
                  return self.widthScale_c2(value);
                } else {
                  return "#ccc";
                }
              })
              .append("use").attr("xlink:href", href_id)
          })

          // // add drb segments as TRANSPARENT wide segments - for selection only
          self.segment_id_list.forEach(function(transparent_segment_id) {
            let href_id = '#seg' + transparent_segment_id
            self.map_c2p2.append("g")
              // // assign classes for c2p2 interaction
              .attr("class", function(d) {
                let seg_class = 'c2p2 segs_transparent seg'
                seg_class += transparent_segment_id
                let year_key = null;
                for (year_key in self.segmentDict[transparent_segment_id]['year_count']) {
                  if (self.segmentDict[transparent_segment_id]['year_count'][year_key] > 0) {
                    seg_class += " " + self.timestep_c2p2 + year_key
                  }
                }
                return seg_class
              })
              // set opacity to 0 so segments aren't visible but can be selected
              .style("opacity", 0)
              // set stroke color to background color
              .style("stroke", "#1a1b1c")
              // set stroke width to be large for selection
              .style("stroke-width", 6)
              // trigger interactions
              .on("mouseover", function(d) {
                self.mouseoverSeg_c2p2(transparent_segment_id, tooltip);
              })
              .on("mousemove", function(d) {
                // pass mouse coordinates
                let mouse_x = loc_map_c2p2.x
                let mouse_y = loc_map_c2p2.y
                self.mousemoveSeg_c2p2(transparent_segment_id, tooltip, mouse_x, mouse_y); 
              })
              .on("mouseout", function(d) {
                self.mouseoutSeg_c2p2(transparent_segment_id, tooltip);
              })
              .append("use").attr("xlink:href", href_id)
          })

          // add scale bar
          let scaleBarGroup = self.map_c2p2.append("g")
            .attr("class", "c2p2 scaleBar")
            .attr("transform", "translate(" + (30) + "," + (self.map_height - 10) + ")")

          scaleBarGroup.append("g").attr("class", "c2p1 scaleBarTop").call(self.scaleBarTop_c2);
          scaleBarGroup.append("g").attr("class", "c2p1 scaleBarBottom").call(self.scaleBarBottom_c2).attr("transform", "translate(0,5)")
        },
        createMatrix_c2p2(csv_matrix_annual, csv_annual_count){
          const self = this;

          // set viewbox for existing svg
          let svgMatrix = self.d3.select(".c2p2.matrix_c2p2.matrix")
              .attr("viewBox", [0, 0, (self.matrix_width_c2 + self.matrix_margin.left + self.matrix_margin.right),
                (self.matrix_height_c2 + self.matrix_margin.top + self.matrix_margin.bottom)].join(' '))
              .attr("width", "90%")
              // .attr("preserveAspectRatio", "none") // STRETCHES MATRIX - including legend and bar chart labels

          // // append background rectangle for matrix
          svgMatrix.append("rect")
                  .attr("class", "c2p2 matrixBkgdRect")
                  .attr("width", self.matrix_width_c2)
                  .attr("height", self.matrix_height_c2)
                  .attr("fill", "#1a1b1c")
                  .attr("stroke", "#1a1b1c")
                  .attr("stroke-width", 1)
                  .attr("filter", "url(#shadow2)")
                  .attr("transform",
                      "translate(" + self.matrix_margin.left + "," + self.matrix_margin.top + ")")
                  .lower()

          // translate group containing prebuilt matrix
          let prebuiltMatrix_c2p2 = svgMatrix.select(".prebuilt_c2p2_group")
              .attr("transform",
                      "translate(" + self.matrix_margin.left + "," + self.matrix_margin.top + ")")
              .attr("width", "90%")

          // build array of all values of observation counts
          let domainArrayTemporalCounts = [];
          let i;
          for (i=0; i<csv_matrix_annual.length; i++){
            let val = parseFloat(csv_matrix_annual[i]['obs_count']);
            domainArrayTemporalCounts.push(val);
          };

          // Find maximum count of observations to use in color scale
          self.temporalCountMax_c2p2 = Math.round(Math.max(...domainArrayTemporalCounts));
    
          // build color scale
          // let availabilityColor = self.d3.scaleSequential()
          self.availabilityColor = self.d3.scaleSequential()
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
                return self.availabilityColor(d)
              })

          // append legend container
          let legendsvg = svgMatrix.append("svg")
              .attr("class", "c2p2 legendWrapper")
              
          let legendGroup = legendsvg.append("g")
              .attr("class", "c2p2 legendColor")
              .attr("width", self.matrix_width_c2)
              .attr("transform", "translate(" + (self.matrix_margin.left) + "," + 0 + ")")

          // append legend text
          legendGroup.append("text")
              .attr("class", "c2p2 legendAxis")
              .attr("text-anchor", "end")
              .attr("x", self.matrix_width_c2*1/4 - 10)
              .attr("y", 17)
              .text("1 daily value")

          // append legend rectangle
          legendGroup.append("rect")
              .attr("class", "c2p2 matrixLegend")
              .attr("width", self.matrix_width_c2/2)
              .attr("height", 20)
              .attr("fill", "url(#gradient-plasma)")
              .attr("x", self.matrix_width_c2/4)

          // append legend text
          legendGroup.append("text")
              .attr("class", "c2p2 legendAxis")
              .attr("text-anchor", "start")
              .attr("x", self.matrix_width_c2*3/4 + 10)
              .attr("y", 17)
              .text("365 daily values")

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

          // add the overlaid rectangles (temporal and spatial) that will be used for selection
          self.createMatrixRectangles_c2p2(csv_matrix_annual, csv_annual_count, tooltip);

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
              .padding(0.075);

          // build y scale using data read in for matrix in createMatrix_c2p2()
          let yscale = self.d3.scaleBand()
              .range([self.matrix_height_c2, 0])
              .domain(self.myVars_c2p2)
              .padding(0.075);

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
              .style("fill", "#1a1b1c")
              .style("stroke-width", 2)
              .style("stroke", "#1a1b1c")
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
              .style("fill", "#1a1b1c")
              .style("stroke-width", 2)
              .style("stroke", "#1a1b1c")
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

          // add text labels for each temporal rectangle (x, y, and text content defined on interaction)
          let cellText = transformedMatrix.selectAll(".text")
              .data(csv_annual_count)
              // create an element for each data item
              .enter()
              // append text for each element in data
              .append("text")
              .attr("class", function(d) {
                return "c2p2 cellText year" + d.year;
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

          // // add delaware bay to map
          // re-use bay group
          self.map_c2p3.append("g").attr("class","c2p3 drb_bay")
		        .append("use").attr("xlink:href","#drbBay")

          // // add drb reservoirs to map
          // re-use reservoirs group
          self.map_c2p3.append("g").attr("class","c2p3 drb_reservoirs")
		        .append("use").attr("xlink:href","#drbReservoirs")

          // // If adding all segments, AND ADDING MOUSEOVER, use forEach to iterate over list of segment ids         
          self.segment_id_list.forEach(function(segment_id) {
            let href_id = '#seg' + segment_id
            self.map_c2p3.append("g")
              .attr("class", function(d) {
                let seg_class = 'c2p3 river_segments seg'
                seg_class += segment_id
                let month_key = null;
                for (month_key in self.segmentDict[segment_id].month_count) {
                  if (self.segmentDict[segment_id].month_count[month_key] > 0) {
                    seg_class += " " + self.timestep_c2p3 + month_key
                  }
                }
                return seg_class
              })
              .style("stroke", "#777b80")
              // add stroke width based on widthScale function
              .style("stroke-width", function(d){
                let value = self.segmentDict[segment_id]['avg_ann_flow'];
                if (value){
                  return self.widthScale_c2(value);
                } else {
                  return "#ccc";
                }
              })
              .append("use").attr("xlink:href", href_id)
          })

          // // add drb segments as TRANSPARENT wide segments - for selection only
          self.segment_id_list.forEach(function(transparent_segment_id) {
            let href_id = '#seg' + transparent_segment_id
            self.map_c2p3.append("g")
              // // assign classes for c2p3 interaction
              .attr("class", function(d) {
                let seg_class = 'c2p3 segs_transparent seg'
                seg_class += transparent_segment_id
                let month_key = null;
                for (month_key in self.segmentDict[transparent_segment_id].month_count) {
                  if (self.segmentDict[transparent_segment_id].month_count[month_key] > 0) {
                    seg_class += " " + self.timestep_c2p3 + month_key
                  }
                }
                return seg_class
              })
              // set opacity to 0 so segments aren't visible but can be selected
              .style("opacity", 0)
              // set stroke color to background color
              .style("stroke", "#1a1b1c")
              // set stroke width to be large for selection
              .style("stroke-width", 6)
              // trigger interactions
              .on("mouseover", function(d) {
                self.mouseoverSeg_c2p3(transparent_segment_id, tooltip);
              })
              .on("mousemove", function(d) {
                // pass mouse coordinates
                let mouse_x = loc_map_c2p3.x
                let mouse_y = loc_map_c2p3.y
                self.mousemoveSeg_c2p3(transparent_segment_id, tooltip, mouse_x, mouse_y); 
              })
              .on("mouseout", function(d) {
                self.mouseoutSeg_c2p3(transparent_segment_id, tooltip);
              })
              .append("use").attr("xlink:href", href_id)
          })

          // add scale bar
          let scaleBarGroup = self.map_c2p3.append("g")
            .attr("class", "c2p3 scaleBar")
            .attr("transform", "translate(" + (30) + "," + (self.map_height - 10) + ")")

          scaleBarGroup.append("g").attr("class", "c2p1 scaleBarTop").call(self.scaleBarTop_c2);
          scaleBarGroup.append("g").attr("class", "c2p1 scaleBarBottom").call(self.scaleBarBottom_c2).attr("transform", "translate(0,5)")

        },
        createMatrix_c2p3(csv_matrix_daily_2019, csv_daily_count_2019, csv_monthly_rects_2019){
          const self = this;

          // set viewbox for existing svg
          let svgMatrix = self.d3.select(".c2p3.matrix_c2p3.matrix")
              .attr("viewBox", [0, 0, (self.matrix_width_c2 + self.matrix_margin.left + self.matrix_margin.right),
                (self.matrix_height_c2 + self.matrix_margin.top + self.matrix_margin.bottom)].join(' '))
              .attr("width", "90%")

          // append background rectangle for matrix
          svgMatrix.append("rect")
                  .attr("class", "c2p3 matrixBkgdRect")
                  .attr("width", self.matrix_width_c2)
                  .attr("height", self.matrix_height_c2)
                  .attr("fill", "#1a1b1c")
                  .attr("stroke", "#1a1b1c")
                  .attr("stroke-width", 1)
                  .attr("filter", "url(#shadow2)")
                  .attr("transform",
                      "translate(" + self.matrix_margin.left + "," + self.matrix_margin.top + ")")
                  .lower()

          // translate group containing prebuilt matrix
          let prebuiltMatrix_c2p3 = svgMatrix.select(".prebuilt_c2p3_group")
              .attr("transform",
                      "translate(" + self.matrix_margin.left + "," + self.matrix_margin.top + ")")
          
          // and group containing monthly rectangles
          let prebuiltRects_c2p3 = svgMatrix.select(".rects_c2p3_group")
              .attr("transform",
                      "translate(" + self.matrix_margin.left + "," + self.matrix_margin.top + ")")
              .attr("width", "90%")
              .raise()

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
          self.tempColor = self.d3.scaleSequential()
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
                return self.tempColor(d)
              })

          // append legend container
          let legendsvg = svgMatrix.append("svg")
              .attr("class", "c2p3 legendWrapper")
          
          let legendGroup = legendsvg.append("g")
              .attr("class", "c2p3 legendColor")
              .attr("width", self.matrix_width_c2)
              .attr("transform", "translate(" + (self.matrix_margin.left) + "," + 0 + ")")

          // append legend text
          legendGroup.append("text")
              .attr("class", "c2p3 legendAxis")
              .attr("text-anchor", "end")
              .attr("x", self.matrix_width_c2*1/4 - 10)
              .attr("y", 17)
              .attr("fill", "#ffffff")
              .text(obsTempMin + " °C")

          // append legend rectangle
          legendGroup.append("rect")
              .attr("class", "c2p3 matrixLegend")
              .attr("width", self.matrix_width_c2/2)
              .attr("height", 20)
              .attr("fill", "url(#gradient-RYB)")
              .attr("x", self.matrix_width_c2/4)

          // append legend text
          legendGroup.append("text")
              .attr("class", "c2p3 legendAxis")
              .attr("text-anchor", "start")
              .attr("x", self.matrix_width_c2*3/4 + 10)
              .attr("y", 17)
              .attr("fill", "#ffffff")
              .text(obsTempMax + " °C")

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

          // add the overlaid rectangles (temporal and spatial) that will be used for selection
          self.createMatrixRectangles_c2p3(csv_matrix_daily_2019, csv_daily_count_2019, csv_monthly_rects_2019, tooltip);

        },
        createMatrixRectangles_c2p3(csv_matrix_daily_2019, csv_daily_count_2019, csv_monthly_rects_2019, tooltip) {
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
              .style("fill", "#1a1b1c")
              .style("stroke-width", 1)
              .style("stroke", "#1a1b1c")
              .style("opacity", 0)

          // // build temporal rectangles
          // append to transformed matrix
          //  no mouseover b/c only used on MouseoverSeg
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
              .style("fill", "#1a1b1c")
              .style("stroke-width", 1.5)
              .style("stroke", "#1a1b1c")
              .style("opacity", 0)

          // append monthly rectangles for mouseover on matrix
          let MonthlyRectangles = transformedMatrix.selectAll('.c2p3.matrixMonthlyRect')
              // bind data (count of observations on each date) to each element
              .data(csv_monthly_rects_2019)
              // create element for each datum
              .enter()
              // append rectangle for each element
              .append("rect")
              // set x value based on date and xscale
              .attr("x", function(d){
                return xscale(d.start_date);
              })
              // set y value to 0
              .attr("y", 0)
              // set width based on bandwidth of x scale
              .attr("width", function(d) {
                return ((self.matrix_width_c2/365) * d.num_days);
              })
              // set height to height of matrix
              .attr("height", self.matrix_height_c2)
              // set class based on date
              .attr("class", function(d) {
                return 'c2p3 matrixMonthlyRect month' + d.month;
              })
              // style rectangles to be transparent but available for selection
              .style("fill", "#1a1b1c")
              .style("stroke-width", 1.5)
              .style("stroke", "#1a1b1c")
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
        mousemoveSeg_c2p2(segment_id, tooltip, mouse_x, mouse_y) {
          const self = this;

          // find # of observations for selected reach
          let num_obs = self.segmentDict[segment_id].total_count//data.properties.total_count;

          // bind mouse coordinates and # of obs to tooltip
          tooltip
              .attr("y", mouse_y - 10)
              .attr("x", mouse_x + 10)
              .attr("text-align", "left")
              .text(self.d3.format(',')(num_obs) + " obs.")
              .raise()
        },
        mouseoverSeg_c2p2(segment_id, tooltip) {
          const self = this;

          // build y scale for hover bar chart
          let barMax = self.matrix_height_c2/16
          let yScale_barChart_c2p2 = self.d3.scaleLinear()
              // set range of possible output values 
              .range([barMax, 0])
              // define range of input values
              .domain([1, self.temporalCountMax_c2p2]);
          
          // re-build y scale for matrix
          let yScale_matrix_c2p2 = self.d3.scaleBand()
              .range([self.matrix_height_c2, 0])
              .domain(self.myVars_c2p2)
              .padding(0.075);

          //re-build x scale fore matrix
          let xScale_matrix_c2p2 = self.d3.scaleBand()
              .range([0, self.matrix_width_c2])
              .domain(self.myGroups_c2p2)
              .padding(0.1);

          // make tooltip visible
          tooltip
              .style("opacity", 1);
          // select all spatial rectangles and make mostly opaque to dim matrix
          self.d3.selectAll(".c2p2.matrixSpatialRect")
              .style("opacity", 0.65)
          // select all *temporal* rectangles and repurpose for bar chart
          if (self.segmentDict[segment_id].total_count > 0) {
              for (let i = 0; i < self.myGroups_c2p2.length; i++) {
                  let seg_year = self.myGroups_c2p2[i]
                  let barHeight;
                  // for all segment-years with observations...
                  if (self.segmentDict[segment_id].year_count[seg_year] > 0) {
                    // convert the temporal rectangles into a bar chart of data availability over time
                    self.d3.selectAll(".c2p2.matrixTemporalRect.time" + seg_year)
                        .attr("height", function(i) {
                              barHeight = (barMax - yScale_barChart_c2p2(self.segmentDict[segment_id].year_count[seg_year]))+1;
                              return barHeight;
                        })
                        .attr("y", function(d) {
                            return yScale_matrix_c2p2(segment_id) - barHeight; 
                        })
                        // // style based on # of observations for that segment in that year
                        .style("fill", function(d) {
                          return self.availabilityColor(self.segmentDict[segment_id].year_count[seg_year]);
                        })
                        .style("stroke-width", 0.5)
                        .style("stroke", function(d){
                          return self.availabilityColor(self.segmentDict[segment_id].year_count[seg_year]);
                        })
                        .style("opacity", 1)
                        .raise()
                    // // COMMENTING OUT BAR CHART ANNOTATIONS FOR NOW
                    // // and populate the text annotations with the observation counts
                    // self.d3.selectAll(".c2p2.cellText.year" + seg_year)
                    //     .attr("y", function(d) {
                    //           return yScale_matrix_c2p2(segment_id) - barHeight - 5;
                    //       })
                    //     .attr("x", function(d) {
                    //         if (self.segmentDict[segment_id].year_count[seg_year] > 99) {
                    //             return xScale_matrix_c2p2(seg_year);
                    //         } else if (self.segmentDict[segment_id].year_count[seg_year] < 10) {
                    //             return xScale_matrix_c2p2(seg_year) + xScale_matrix_c2p2.bandwidth()/3;
                    //         } else {
                    //             return xScale_matrix_c2p2(seg_year) + xScale_matrix_c2p2.bandwidth()/6;
                    //         }
                    //     })
                    //     .attr("fill", "None")
                    //     .text(function(d) {
                    //       return parseInt(self.segmentDict[segment_id].year_count[seg_year]);
                    //     })
                    //     .attr("fill", "#ffffff")
                    //     .raise()
                  }
              }
          }
          // select background rectangle and change filter
          self.d3.selectAll(".c2p2.matrixBkgdRect")
              .attr("filter", "url(#shadow3)")
          // select the spatial rectangle corresponding to the highlighted segment
          if (self.segmentDict[segment_id].total_count == 0) {
              // select the spatial rectangle corresponding to the highlighted segment
              self.d3.selectAll(".c2p2.matrixSpatialRect.seg" + segment_id) 
                  // set stroke width, opacity, and stroke color
                  // based on whether segment has any observations in record
                  .attr("height", 3)
                  .style("fill", "#1a1b1c")
                  .style("stroke-width", 0.5)
                  .style("opacity", 1)
                  .style("stroke", "#e0e0e0")
                  // raise the spatial rectangle
                  .raise();
          }
          // select mouseovered segment and set to white
          // and raise segment
          self.d3.selectAll(".c2p2.river_segments.seg" + segment_id)
              .style("stroke", "#ffffff")
              .style("opacity", 1)
              .raise()
        },
        mouseoutSeg_c2p2(segment_id, tooltip) {
          const self = this;

          // re-build y scale for matrix cells y placement
          let yScale_matrix_c2p2 = this.d3.scaleBand()
              .range([this.matrix_height_c2, 0])
              .domain(this.myVars_c2p2)
              .padding(0.075);

          // hide tooltip
          tooltip
              .style("opacity", 0)
          // select all spatial rectangles and set opacity back to zero
          // with black fill and stroke and raise
          this.d3.selectAll(".c2p2.matrixSpatialRect")
              .style("stroke", "#1a1b1c")
              .style("fill", "#1a1b1c")
              .style("stroke-width", 2)
              .style("opacity", 0)
              .attr("height", yScale_matrix_c2p2.bandwidth())
              .raise()
          // select all *temporal* rectangles
          // set y position and height back to defaults
          // and set fill and stroke back
          // to black and raise so that they are selectable
          this.d3.selectAll(".c2p2.matrixTemporalRect")
              // set y value to 0
              .attr("y", 0)
              // set height to height of matrix
              .attr("height", self.matrix_height_c2)
              // style rectangles to be transparent but available for selection
              .style("fill", "#1a1b1c")
              .style("stroke-width", 2)
              .style("stroke", "#1a1b1c")
              .style("opacity", 0)
              .raise()
          // // turn off text for cells associated with segment
          // this.d3.selectAll(".c2p2.cellText") 
          //     .attr("y", 0)
          //     .text('')
          //     .attr("fill", "None")
          // un-dim riversegments, reservoirs, and bay
          // and reset to default styling
          this.d3.selectAll(".c2p2.river_segments.seg" + segment_id) 
              // .attr("filter","None")
              .style("stroke", "#777b80")
              .style("opacity", 1)
              .lower()
          // select mouseovered transparent segment and raise segment
          this.d3.selectAll(".c2p2.segs_transparent.seg" + segment_id)
              .raise()
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
          // select background rectangle and change filter
          this.d3.selectAll(".c2p2.matrixBkgdRect")
              .attr("filter", "url(#shadow3)")
          // select all temporal rectangles and make mostly opaque
          // with thick stroke for selection
          this.d3.selectAll(".c2p2.matrixTemporalRect")
              .style("opacity", 0.8);
          // select mouseovered rectangle and set opacity to zero
          this.d3.selectAll(".c2p2.matrixTemporalRect.time" + data[self.timestep_c2p2])
              .style("opacity", 0)
          // select all river segments that have data in highlighted year
          // and make white
          this.d3.selectAll(".c2p2.segs_transparent." + self.timestep_c2p2 + data[self.timestep_c2p2])
          // this.d3.selectAll(".river_segments." + self.timestep_c2p2 + data[self.timestep_c2p2])
              .style("stroke", "#ffffff")
              .style("stroke-width", 1.25)
              .style("opacity", 1)
              .raise()
        },
        mouseoutRect_c2p2(data, tooltip) {
          const self = this;
          // select all *spatial* rectangles and reset fill and stroke to black and raise
          this.d3.selectAll(".c2p2.matrixSpatialRect")
              .style("fill", "#1a1b1c")
              .style("stroke", "#1a1b1c")
              .raise()

          // hide tooltip
          tooltip
              .style("opacity", 0)
          // select all temporal rectangles and set fill and stroke back to black
          // with no opacity and raise (so available for selection but not visible)
          this.d3.selectAll(".c2p2.matrixTemporalRect")
              .style("stroke", "#1a1b1c")
              .style("fill", "#1a1b1c")
              .style("opacity", 0)
              .raise()
          // un-dim river segments
          // lower elements as needed
          this.d3.selectAll(".c2p2.segs_transparent." + self.timestep_c2p2 + data[self.timestep_c2p2])
          // this.d3.selectAll(".river_segments." + self.timestep_c2p2 + data[self.timestep_c2p2])
              .style("stroke", "#1a1b1c")
              .style("stroke-width", 6)
              .style("opacity", 0)
              .lower()
          // select background rectangle and replace filter
          this.d3.selectAll(".c2p2.matrixBkgdRect")
              .attr("filter", "url(#shadow2)")
        },
        mousemoveSeg_c2p3(segment_id, tooltip, mouse_x, mouse_y) {
          const self = this;

          // find # of obs in 2019 for selected segment
          let num_obs = self.segmentDict[segment_id].year_count['2019'];

          // bind mouse coordinates and # obs to tooltip
          tooltip
              .attr("y", mouse_y - 15)
              .attr("x", mouse_x + 15)
              .attr("text-align", "left")
              .text(this.d3.format(',')(num_obs) + " obs.")
              .raise()
        },
        mouseoverSeg_c2p3(segment_id, tooltip) {
          const self = this;

          // re-build y scale for matrix
          let yScale_matrix_c2p3 = self.d3.scaleBand()
              .range([self.matrix_height_c2, 0])
              .domain(self.myVars_c2p3)
              .padding(0.0);

          // set height for hovered matrix cells
          let cellHeight_c2p3 = 12

          // make tooltip visible
          tooltip
              .style("opacity", 1);
          // select all spatial rectangles and make mostly opaque to dim matrix
          self.d3.selectAll(".c2p3.matrixSpatialRect")
              .style("opacity", 0.6)
              .style("stroke-width", 2);
          // select background rectangle and change filter
          self.d3.selectAll(".c2p3.matrixBkgdRect")
              .attr("filter", "url(#shadow3)")
          // select all *temporal* rectangles and repurpose for bigger view
          if (self.segmentDict[segment_id].year_count['2019'] > 0) {
              for (let i = 0; i < self.myGroups_c2p3.length; i++) {
                  let seg_day = self.myGroups_c2p3[i]
                  // for all segment-days with observations...
                  if (self.segmentDict[segment_id]['data_2019'][seg_day] != undefined) {
                      if (self.segmentDict[segment_id]['data_2019'][seg_day]['day_count'] > 0) {
                          // repurpose the temporal rectangles to show the temperatures over the year
                          self.d3.selectAll(".c2p3.matrixTemporalRect.time" + seg_day)
                              .attr("height", cellHeight_c2p3)
                              .attr("y", function(d) {
                                return yScale_matrix_c2p3(segment_id) - cellHeight_c2p3/2;
                              })
                              .style("fill", function(d) {
                                  return self.tempColor(self.segmentDict[segment_id]['data_2019'][seg_day]['day_t_c'])
                              })
                              .style("stroke", function(d) {
                                  return self.tempColor(self.segmentDict[segment_id]['data_2019'][seg_day]['day_t_c'])
                              })
                              .style("opacity", 1)
                              .raise()
                      }
                  }
              }
          }
          // select the spatial rectangle corresponding to the highlighted segment
          // set stroke width, opacity, and stroke color
          // based on whether segment has any observations in record
          if (self.segmentDict[segment_id].year_count['2019'] == 0) {
              // select the spatial rectangle corresponding to the highlighted segment
              self.d3.selectAll(".c2p3.matrixSpatialRect.seg" + segment_id)
                .style("stroke-width", 0.5)
                .style("opacity", 1)
                .style("stroke", "#e0e0e0")
                .attr("height", 3)
                // raise the spatial rectangle
                .raise()
          }
          // select mouseovered segment and set to white with a shadow
          // and raise segment
          self.d3.selectAll(".c2p3.river_segments.seg" + segment_id)
              .style("stroke", "#ffffff")
              .style("opacity", 1)
              .raise()
        },
        mouseoutSeg_c2p3(segment_id, tooltip) {
          const self = this;

          // re-build y scale for matrix
          let yScale_matrix_c2p3 = self.d3.scaleBand()
              .range([self.matrix_height_c2, 0])
              .domain(self.myVars_c2p3)
              .padding(0.0);

          // hide tooltip
          tooltip
              .style("opacity", 0)
          // select all spatial rectangles and set opacity back to zero
          // with black fill and stroke and raise
          self.d3.selectAll(".c2p3.matrixSpatialRect")
              .attr("height", yScale_matrix_c2p3.bandwidth())
              .style("stroke", "None")
              .style("stroke", "#1a1b1c")
              .style("fill", "#1a1b1c")
              .style("stroke-width", 1)
              .style("opacity", 0)
              // .raise()
          // select all *temporal* rectangles
          // set y position and height back to defaults
          // and set fill and stroke back
          // to black and raise so that they are selectable
          self.d3.selectAll(".c2p3.matrixTemporalRect")
              // set y value to 0
              .attr("y", 0)
              // set height to height of matrix
              .attr("height", self.matrix_height_c2)
              //style rectangles to be transparent but available for selection
              .style("fill", "#1a1b1c")
              .style("stroke-width", 1.5)
              .style("stroke", "#1a1b1c")
              .style("opacity", 0)
          // select all monthly rectangles and raise
          self.d3.selectAll(".c2p3.matrixMonthlyRect")
            .raise()
          // reset river segments to default styling
          self.d3.selectAll(".c2p3.river_segments.seg" + segment_id)
              // .attr("filter","None")
              .style("stroke", "#777b80")
              .style("opacity", 1)
              .lower()
          // select mouseovered transparent segment and raise segment
          self.d3.selectAll(".c2p3.segs_transparent.seg" + segment_id)
              .raise()
          // reset filter on background rectangle and lower
          self.d3.selectAll(".c2p3.matrixBkgdRect")
              .attr("filter", "url(#shadow2)")
        },
        mousemoveRect_c2p3(data, tooltip, mouse_x, mouse_y) {

          // identify selected date
          let selected_month = data.month;

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
              .text(selected_month)
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
          // select background rectangle and change filter
          this.d3.selectAll(".c2p3.matrixBkgdRect")
              .attr("filter", "url(#shadow3)")
          // select all temporal rectangles and make mostly opaque
          this.d3.selectAll(".c2p3.matrixMonthlyRect")
              .style("opacity", 0.8)
              .style("stroke", "#1a1b1c")
              .style("fill", "#1a1b1c")
              .style("stroke-width", 0)
          // select temporalRect for highlighted timestep and make transparent
          this.d3.selectAll(".c2p3.matrixMonthlyRect.month" + data.month)
              .style("opacity", 0)
          // select all river segments that have data in highlighted year
          // and make white
          this.d3.selectAll(".c2p3.segs_transparent." + self.timestep_c2p3 + data.month)
              .style("stroke", "#ffffff")
              .style("stroke-width", 1.25)
              .style("opacity", 1)
              .raise()
        },
        mouseoutRect_c2p3(data, tooltip) {
          const self = this;
          
          // select all *spatial* rectangles and reset fill and stroke to black
          this.d3.selectAll(".c2p3.matrixSpatialRect")
              .style("fill", "#1a1b1c")
              .style("stroke", "#1a1b1c")
              .raise()

          // hide tooltip
          tooltip
              .style("opacity", 0)
        
          // select all monthly rectangles and set fill and stroke back to black
          // with no opacity (so available for selection but not visible)
          this.d3.selectAll(".c2p3.matrixMonthlyRect")
              .style("fill", "#1a1b1c")
              .style("stroke", "#1a1b1c")
              .style("stroke-width", 1.5)
              .style("opacity", 0)
              .raise()
          // un-dim river segments
          // lower elements as needed
           this.d3.selectAll(".c2p3.segs_transparent." + self.timestep_c2p3 + data.month)
              .style("stroke", "#1a1b1c")
              .style("stroke-width", 6)
              .style("opacity", 0)
              .lower()
          // select background rectangle and replace filter
          this.d3.selectAll(".c2p3.matrixBkgdRect")
              .attr("filter", "url(#shadow2)")
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
$backgroundCharcoal: #292b30; //#1E1F23 #26282b #202226 #292c33 #2a2d33
$boxCharcoal: #1a1b1c; //#28292D #1a1b1f #171717
$offWhite: #F1F1F1;
$plasmaYellow: #FAB62F;
$plasmaPink: #BE3D7D;
$plasmaPurple: #62039A;
$plasmaBlue: #142167;
$darkBlue: #0F2237;
$footerBlue: #00264C;
$mediumBlue: #5191bd; //#63B1E6 #579ecf
$lightBlue: #95b5cb;
$grayBlue: #777b80; //#4F5C67 #576069 #7B7F85

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
    display: flex;
    width: 100%;
  }

  #barChart_c2p1 {
    display: block;
    max-width: 700px;
    width: 100%;
  }

  .inset-viz-subtitle {
    fill: $grayBlue; //$offWhite
    font-style: italic;
    font-size: .5em;
    text-align: center;
    font-weight: 100;
    opacity: 1;
  }

  #timeseries {
    display: block;
    max-width: 700px;
    max-height: 100%;
  }

  #hex-map {
    padding-left: 0em;
    padding-right: 0em;
    padding-top: 0em;
    padding-bottom: 1em;
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
    // padding: 25px;
    margin: auto;
    display: grid;
    // align-items: center;
    // justify-content: center;
    // justify-items: center;
    grid-template-columns: 1.5fr 3fr;
    grid-template-rows: 100%;
    grid-template-areas:
        "map matrix";
    gap: 0px 10px;
    min-width: 0;
    min-height: 0;
    height: 85vh;
    max-width: 2000px;
  }
  .mm-grid-item {
    padding: 0px;
    display: flex;
    align-self: center;
  }
  #DRB_map_c2p2 {
    grid-area: map;
    display: flex;
    max-height: 80vh;
  }
  #matrixChart_c2p2 {
    grid-area: matrix;
    display: flex;
    max-height: 100%;
  }
  #DRB_map_c2p3 {
    grid-area: map;
    display: flex;
    max-height: 80vh;
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


// IMPORT COLORS
$backgroundCharcoal: #292b30; //#1E1F23 #26282b #202226 #292c33 #2a2d33
$boxCharcoal: #1a1b1c; //#28292D #1a1b1f #171717
$offWhite: #F1F1F1;
$plasmaYellow: #FAB62F;
$plasmaPink: #BE3D7D;
$plasmaPurple: #62039A;
$plasmaBlue: #142167;
$darkBlue: #0F2237;
$footerBlue: #00264C;
$mediumBlue: #5191bd; //#63B1E6 #579ecf
$lightBlue: #95b5cb;
$grayBlue: #777b80; //#4F5C67 #576069 #7B7F85

.label {
  font-size: 1em; //base font setting for all scale bar labels
}
.c2p1.scaleBar {
  color: $grayBlue; //#285C70
  font-size: 0.5em;
  stroke-width: 0.5px;
}
.c2p2.scaleBar {
  color: $grayBlue; //#285C70
  font-size: 0.7em;
  stroke-width: 0.5px;
}
.c2p3.scaleBar {
  color: $grayBlue; //#285C70
  font-size: 0.7em;
  stroke-width: 0.5px;
}
.c2p2.cellText {
  font-size: 0.48em;
  //text-anchor: middle;
}
.monthlyLabels {
  fill: $grayBlue;
  font-size: 0.5em;
}
.delaware_bay {
  fill: $grayBlue; 
}

.river_segments {
  stroke: inherit;
  stroke-width: inherit;
  // stroke: #285C70;// original was #6399ba;
  stroke-linecap: round;
}

.reservoirs {
  fill: $grayBlue; 
  stroke: $grayBlue;// o
}

.obs_sites {
  stroke: $boxCharcoal;
  stroke-width: 0.1;
  opacity: 0.7;
}

.USGS_station {
  fill: $plasmaYellow;
}

.Other_station {
  fill: $plasmaYellow;
}

.chartAxis {
  color: $grayBlue; //#707070
  font-size: .60em;
}

.legend {
  font-family: 'Open Sans', arial, sans-serif;
  font-size: 0.5em;
  fill: $grayBlue;
}
.legendAxis {
  color: $grayBlue;
  fill: $grayBlue;
  font-size: .8em;;
}
.tick text {
  font-size: .8em;
}
.matrixAxis {
  fill: $grayBlue;
  color: $grayBlue;
  font-size: 16px;
  text-align: middle;
}
.NS_arrow {
  stroke: $grayBlue; //#4d4c4d
  stroke-width: 1px;
  stroke-dasharray: 2 6;
}
.NS_arrowhead {
  fill: $grayBlue;
}
.chartAxisText {
  fill: $grayBlue;
  font-size: 1.1vh;
}
.tooltip.map {
  fill: #ffffff;
  font-family: sans-serif;
  font-size: 1em; //1em
  font-weight: bold;
  line-height: 1em;
  @media screen and (max-height: 700px) {
          font-size: 1.5em;
        }
}
.tooltip.matrix {
  fill: #ffffff;
  font-family: sans-serif;
  font-size: 1.1em; //1.1em
  font-weight: bold;
  line-height: 1em;
  @media screen and (max-height: 700px) {
          font-size: 2em;
        }
}
#hex-map {
  height: auto;
  max-height: 80vh;
}
.hex {
  fill-rule: evenodd;
  stroke: $boxCharcoal; //#141414
  stroke-miterlimit: 10;
  stroke-width: 0.1;
}
.hex_title {
  fill: $offWhite;
  font-size: 0.8em;
  font-weight: 550;
}
.hex_label {
  fill: $offWhite;
  font-size: 0.7em;
}
</style>
