<template>
  <section>
    <div class="container-fluid">
      <div
        id="intro_row"
        class="row"
      >
        <div class="col-xl-1 col-md-1 col-xs-0" />
        <div class="col-xl-10 col-md-10 col-xs-12">
          <h2>Stream Temperature Monitoring in the Delaware River Basin</h2>
        </div>
        <div class="col-xl-1 col-md-1 col-xs-0" />
      </div>
      <div
        id="intro_row"
        class="row"
      >
        <div
          id="DRB_map_c1p1"
          class="col-xl-6 col-md-6 col-xs-12"
        />
        <div class="col-xl-6 col-md-6 col-xs-12">
          <br><br>
          <p id="narrative_text">
            The Delaware River Basin covers 13,500 square miles in parts of four states,
            including New York, New Jersey, Pennsylvania, and Delaware. The Delaware River is rich in history,
            ecologically diverse, and critical to the regional economy. Water managers in this region have a
            long history of applying innovative, regional solutions to insure the long-term sustainability of
            this treasured resource, which provides drinking water to over 15 million people in the region.
          </p>
          <br>
          <p id="narrative_text">
            Temperature is a "master factor" in aquatic systems, regulating many processes --
            including fish growth, gas exchange, and evaporation. Increases in summer stream temperature as a
            result of human impacts and climate change may exceed the thermal tolerances of aquatic biota that
            are adapted to colder environments and climates. Modeling temperature in unobserved places and times,
            including forecasting into the future, allows stakeholders to anticipate and understand how water
            temperature has or will affect their resource of interest.
          </p>
        </div>
      </div>
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
          <p id="narrative_text">
            The USGS and
            state and local agencies monitor stream temperature across the Delaware
            River Basin, collecting continuous and discrete measurements of water temperature.
            In the past 40 years, stream temperature has been measured at more than
            1,300 sites throughout the basin. Expansion to the monitoring network since 2018
            is rapidly increasing the volume of available data.
          </p>
          <br>
          <p id="narrative_text">
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
          d3: null,
          flowArray:['avg_ann_flow'],
          timestep_c2p2: 'year',
          timestep_c2p3: 'date',
          chart_margin: {top: 30, right: 60, bottom: 45, left: 5},
          chart_width: null, // this will get a value in the mounted hook
          chart_height: null, // this will get a value in the mounted hook
          map_c1p1: null,
          map_path_c1p1: null,
          scaleBarTop_c1p1: null,
          scaleBarBottom_c1p1: null,
          map_c2p1: null,
          map_path_c2p1: null,
          scaleBarTop_c2p1: null,
          scaleBarBottom_c2p1: null

        }
      },
      mounted() {
        const d3 = Object.assign(d3Base, { geoScaleBar, geoScaleBottom, geoScaleTop, geoScaleKilometers, geoScaleMiles }); // this loads d3 plugins with webpack
        this.d3 = d3; // assign the constant value of d3 to the component scope

        const chart_width = 500 - this.chart_margin.left - this.chart_margin.right;
        const chart_height = window.innerHeight * 0.30 - this.chart_margin.top - this.chart_margin.bottom;
        this.chart_width = chart_width;
        this.chart_height = chart_height;

        this.setPanels();  // begin script when window loads
      },
      methods: {
        setPanels() {
          const self = this;
          // // CHAPTER 1 MAP
          const map_width_c1p1 = 600;
          const map_height_c1p1 = window.innerHeight * 0.8;
          const map_margin_c1p1 = {top: 5, right: 5, bottom: 5, left: 5};

          //create Albers equal area conic projection centered on states surrounding DRB for ch1 maps
          let map_projection_c1p1 = this.d3.geoAlbers()
              .center([0, 41.27883611]) //41.47883611
              .rotate([76.21902778, 0, 0])
              .parallels([40.31476574, 42.64290648])
              .scale(map_height_c1p1 * 6.5) // map_height_c1p1*6
              .translate([map_width_c1p1 / 2, map_height_c1p1 / 2]);

          let map_path_c1p1 = this.d3.geoPath()
              .projection(map_projection_c1p1);

          // create scale bar
          self.scaleBarTop_c1p1 = self.d3.geoScaleBar()
              .orient(self.d3.geoScaleBottom)
              .projection(map_projection_c1p1)
              .size([map_width_c1p1, map_height_c1p1])
              .left(.05)
              .top(.85)
              .units(self.d3.geoScaleKilometers)
              .distance(150)
              .label("150 kilometers")
              .labelAnchor("middle")
              .tickSize(null)
              .tickValues(null);

          self.scaleBarBottom_c1p1 = self.d3.geoScaleBar()
              .orient(self.d3.geoScaleTop)
              .projection(map_projection_c1p1)
              .size([map_width_c1p1, map_height_c1p1])
              .left(.05)
              .top(.86)
              .units(self.d3.geoScaleMiles)
              .distance(75)
              .label("75 miles")
              .labelAnchor("middle")
              .tickSize(null)
              .tickValues(null);

          //create new svg container for the ch 1 panel 1 map
          this.map_c1p1 = this.d3.select("#DRB_map_c1p1")
              .append("svg")
              .attr("class", "map_c1p1")
              .attr("viewBox", [0, 0, (map_width_c1p1 + map_margin_c1p1.right + map_margin_c1p1.left),
                (map_height_c1p1 + map_margin_c1p1.top + map_margin_c1p1.bottom)].join(' '));

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
          var map_width = 600,
              map_height = window.innerHeight*0.8,
              map_margin = {top: 5, right: 5, bottom: 5, left: 5};

          //create Albers equal area conic projection centered on DRB for ch2 panel 1 map
          var map_projection_c2p1 = this.d3.geoAlbers()
              .center([0, 40.658894445])
              .rotate([75.533333335, 0, 0]) //75.363333335 centered, 76.2 far right, 74.6 far left
              .parallels([39.9352537033, 41.1825351867])
              .scale(map_height*15)
              .translate([map_width / 2, map_height / 2]);

          var map_path_c2p1 = this.d3.geoPath()
              .projection(map_projection_c2p1);

          // create scale bar for ch 2 panel 1 map
          const scaleBarTop_c2p1 = this.d3.geoScaleBar()
              .orient(this.d3.geoScaleBottom)
              .projection(map_projection_c2p1)
              .size([map_width, map_height])
              .left(.3) // .15 centered, .45 far right
              .top(.94)
              .units(this.d3.geoScaleKilometers)
              .distance(50)
              .label("50 kilometers")
              .labelAnchor("middle")
              .tickSize(null)
              .tickValues(null);

          const scaleBarBottom_c2p1 = this.d3.geoScaleBar()
              .orient(this.d3.geoScaleTop)
              .projection(map_projection_c2p1)
              .size([map_width, map_height])
              .left(.3) // .15 centered, .45 far right
              .top(.95)
              .units(this.d3.geoScaleMiles)
              .distance(25)
              .label("25 miles")
              .labelAnchor("middle")
              .tickSize(null)
              .tickValues(null);

          //create Albers equal area conic projection centered on DRB for ch2 panel 2 and 3 maps
          var map_projection = this.d3.geoAlbers()
              .center([0, 40.658894445])
              .rotate([74.6, 0, 0]) //75.363333335 centered, 76.2 far right, 74.6 far left
              .parallels([39.9352537033, 41.1825351867])
              .scale(map_height*15)
              .translate([map_width / 2, map_height / 2]);

          var map_path = this.d3.geoPath()
              .projection(map_projection);

          // create scale bar for ch 2 panel 2 and 3 maps
          const scaleBarTop = d3.geoScaleBar()
              .orient(this.d3.geoScaleBottom)
              .projection(map_projection)
              .size([map_width, map_height])
              .left(.1) // .15 centered, .45 far right
              .top(.94)
              .units(this.d3.geoScaleKilometers)
              .distance(50)
              .label("50 kilometers")
              .labelAnchor("middle")
              .tickSize(null)
              .tickValues(null);

          const scaleBarBottom = this.d3.geoScaleBar()
              .orient(this.d3.geoScaleTop)
              .projection(map_projection)
              .size([map_width, map_height])
              .left(.1) // .15 centered, .45 far right
              .top(.95)
              .units(this.d3.geoScaleMiles)
              .distance(25)
              .label("25 miles")
              .labelAnchor("middle")
              .tickSize(null)
              .tickValues(null);

          //create new svg container for the ch 2 panel 1 map
          this.map_c2p1 = this.d3.select("#DRB_map_c2p1")
              .append("svg")
              .attr("class", "map_c2p1")
              .attr("viewBox", [0, 0, (map_width + map_margin.right + map_margin.left),
                (map_height + map_margin.top + map_margin.bottom)].join(' '));

          //create new svg container for the ch 2 panel 2 map
          this.map_c2p2 = this.d3.select("#DRB_map_c2p2")
              .append("svg")
              .attr("class", "map_c2p2")
              .attr("viewBox", [0, 0, (map_width + map_margin.right + map_margin.left),
                (map_height + map_margin.top + map_margin.bottom)].join(' '));

          // create new svg container for the ch 2 panel 3 map
          this.map_c2p3 = this.d3.select("#DRB_map_c2p3")
              .append("svg")
              .attr("class", "map_c2p3")
              .attr("viewBox", [0, 0, (map_width + map_margin.right + map_margin.left),
                (map_height + map_margin.top + map_margin.bottom)].join(' '));

          let promises = [this.d3.csv("data/segment_maflow.csv"),
            this.d3.csv(this.publicPath + "data/matrix_annual_obs.csv"),
            this.d3.csv(this.publicPath + "data/obs_annual_count.csv"),
            this.d3.csv(this.publicPath + "data/matrix_daily_2019_obs.csv"),
            this.d3.csv(this.publicPath + "data/obs_daily_count_2019.csv"),
            this.d3.csv(this.publicPath + "data/agency_annual_count.csv", this.type), // process data for stacked bar chart as it is loaded
            this.d3.json(this.publicPath + "data/segment_geojson.json"),
            this.d3.json(this.publicPath + "data/observed_site_locations.json"),
            this.d3.json(this.publicPath + "data/NHDWaterbody_DelawareBay_pt6per_smooth.json"),
            this.d3.json(this.publicPath + "data/reservoirs.json"),
            this.d3.json(this.publicPath + "data/dams.json"),
            this.d3.json(this.publicPath + "data/Segments_subset_4per_smooth_10miBuffer_diss.json"),
            this.d3.json(this.publicPath + "data/cb_states_16per.json"),
            this.d3.json(this.publicPath + "data/Segments_subset_1per_smooth.json"),
            this.d3.json(this.publicPath + "data/cb_states_16per_merged.json")
          ];
          Promise.all(promises).then(this.callback);


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
          let json_states = data[12];
          let json_segs_small = data[13];
          let json_states_merged = data[14];

          // translate topojsons
          let segments = json_segments.features; /* topojson.feature(json_segments, json_segments.objects.Segments_subset_4per_smooth).features */
          let stations = json_obs_stations.features;
          let bay = topojson.feature(json_bay, json_bay.objects.NHDWaterbody_DelawareBay_pt6per_smooth);
          let reservoirs = json_reservoirs.features;
          let dams = json_dams.features;
          let basin_buffered = topojson.feature(json_basin_buffered, json_basin_buffered.objects.Segments_subset_4per_smooth_10miBuffer_diss);
          let states = topojson.feature(json_states, json_states.objects.cb_states);
          let segs_small = topojson.feature(json_segs_small, json_segs_small.objects.Segments_subset_1per_smooth).features;
          let states_merged = topojson.feature(json_states_merged, json_states_merged.objects.cb_states_16per_merged);

          // // join csv flow data to geojson segments
          // ch 1 p 1 map segments
          segs_small = this.joinData(segs_small, csv_flow);
          // ch 2 map segments
          segments = this.joinData(segments, csv_flow);

          // // set stroke width scale
          // for ch 1 p 1 map segments
          let widthScale_c1p1 = this.makeWidthScale_c1p1(csv_flow);
          // for ch 2 map segments
          let widthScale_c2 = this.makeWidthScale_c2(csv_flow);

          // // Set up Ch 1 panel 1 -
          this.setMap_c1p1(states, states_merged, segs_small, bay, this.map_c1p1, this.map_path_c1p1, this.scaleBarTop_c1p1, this.scaleBarBottom_c1p1, widthScale_c1p1);

          // // Set up Ch 2 panel 1 -
          // add DRB segments to the panel 1 map
          this.setMap_c2p1(segments, stations, bay, this.map_c2p1, this.map_path_c2p1, this.scaleBarTop_c2p1, this.scaleBarBottom_c2p1, widthScale_c2);
          // add bar chart to panel 1
          setBarChart_c2p1(csv_agency_count);

          // // Set up Ch 2 panel 2 -
          // add DRB segments to the panel 2 map
          setMap_c2p2(map_width, map_height, segments, bay, reservoirs, basin_buffered, map_c2p2, map_path, scaleBarTop, scaleBarBottom, widthScale_c2);
          // create panel 2 matrix
          createMatrix_c2p2(csv_matrix_annual, csv_annual_count, segments, timestep_c2p2);

          // // Set up Ch 2 panel 3 -
          // add DRB segments to the panel 3 map
          setMap_c2p3(map_width, map_height, segments, bay, reservoirs, basin_buffered, map_c2p3, map_path, scaleBarTop, scaleBarBottom, widthScale_c2);
          // create panel 3 matrix
          createMatrix_c2p3(csv_matrix_daily_2019, csv_daily_count_2019, segments, timestep_c2p3);
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
              // if joining regular segments (for c2 maps)
              let geojsonKey;
              if (segments[a].seg_id_nat){
                let geojsonKey = segments[a].seg_id_nat;
                // if joining segments small (v. simplified segments for c1p1 map)
              } else {
                let geojsonKey = geojsonProps.seg_id_nat;
              }
              // where primary keys match, transfer csv data to geojson properties object
              if (geojsonKey == csvKey){
                // assign all attributes and values
                this.flowArray.forEach(function(attr){
                  // get csv attribute value, converting it to a float
                  let val = parseFloat(csvSegment[attr]);
                  // assign attribute and value to geojson properties
                  geojsonProps[attr] = val;
                });
              };
            };

          };
          return segments;
        },
        makeWidthScale_c1p1(data) {
          const self = this;

          // // graduated scale
          // set width classes
          let widthClasses = [
            0.5,
            0.7,
            1.2,
            1.5,
            2
          ];

          // // graduated scale
          // create width scale generator for natural breaks classification
          let widthScale = this.d3.scaleThreshold()
              .range(widthClasses);

          // // BOTH METHODS
          // build array of all values of flow
          let domainArrayFlow = [];
          for (let i=0; i<data.length; i++) {
            let val = parseFloat(data[i]['avg_ann_flow']);
            domainArrayFlow.push(val);
          }

          // graduated scale
          // cluster data using ckmeans clustering algorithm to create natural breaks
          let clusters = ss.ckmeans(domainArrayFlow, 5);

          /// graduated scale
          // reset domain array to cluster minimumns
          domainArrayFlow = clusters.map(function(d) {
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
        setMap_c1p1(states, states_merged, segs_small, bay, map_c1p1, map_path_c1p1, scaleBarTop_c1p1, scaleBarBottom_c1p1, widthScale_c1p1) {
          // add merged surrounding states to map
          var states_merged = map_c1p1.append("path")
              .datum(states_merged)
              .attr("class", "c1p1 states_merged")
              .attr("d", map_path_c1p1)
              .attr("filter", "url(#shadow2)")

          // add surrounding states to map
          var states = map_c1p1.append("path")
              .datum(states)
              .attr("class", "c1p1 states")
              .attr("d", map_path_c1p1)

          // add delaware bay to map
          var drb_bay = map_c1p1.append("path")
              .datum(bay)
              .attr("class", "c1p1 delaware_bay")
              .attr("d", map_path_c1p1)

          // add drb segments to map
          var drb_segments = map_c1p1.selectAll(".river_segments")
              // bind segments to each element to be created
              .data(segs_small)
              // create an element for each datum
              .enter()
              // append each element to the svg as a path element
              .append("path")
              // assign class for styling
              .attr("class", function(d){
                var seg_class = 'c1p1 river_segments seg'
                seg_class += d.seg_id_nat
                return seg_class
              })
              // project segments
              .attr("d", map_path_c1p1)
              // add stroke width based on widthScale function
              .style("stroke-width", function(d){
                var value = d.properties['avg_ann_flow'];
                if (value){
                  return widthScale_c1p1(value);
                } else {
                  return "#ccc";
                }
              })
              // set fill to none
              .style("fill", "None")
      
        // add scale bar
        this.map_c1p1 = map_c1p1;
        this.map_c1p1.append("g").call(this.scaleBarTop_c1p1);
        this.map_c1p1.append("g").call(this.scaleBarBottom_c1p1);
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
                if (d.properties.site_agency == 'USGS'){
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
          this.map_c2p1 = map;
          this.map_c2p1.append("g").call(this.scaleBarTop);
          this.map_c2p1.append("g").call(this.scaleBarBottom);
        }
      }    
  }

</script>

<style scoped lang="scss">
body {
  margin-bottom: 0px;
  font-family: 'Open Sans', arial, sans-serif;
  font-weight: 300;
  font-size: 1em;
  background-color: black;
  color: #525252;
  text-align: center;
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

#intro_row {
  margin-top: 3vh;
  margin-bottom: 3vh;
}
#intro_row h2 {
  color: #cecece;
}

.row {
  margin-top: 10vh;
  margin-bottom: 10vh;
}

#filter_row {
  height: 1vh;
}

#narrative_text {
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

#tip_text {
  font-size: 0.75em;
  color: #858585;
  margin-right: 0.5vh;
}

.states {
  fill: None;
  stroke: #636363;
  stroke-width: 0.5;
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
