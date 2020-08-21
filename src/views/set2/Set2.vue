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

  import $ from 'jquery';
  import * as d3Base from "d3";
import { geoScaleBar } from "d3-geo-scale-bar";

  import * as topojson from "topojson-client";

  export default {
      name: 'Set2',
      mounted() {
        const d3 = Object.assign(d3Base, { geoScaleBar })
        // variables for data join
        let flowArray = ['avg_ann_flow'];

        // begin script when window loads
        window.onload = this.setPanels();
      },
      methods: {
        setPanels() {
          // // CHAPTER 1 MAP
          let map_width_c1p1 = 600,
              map_height_c1p1 = window.innerHeight*0.8,
              map_margin_c1p1 = {top: 5, right: 5, bottom: 5, left: 5};

          //create Albers equal area conic projection centered on states surrounding DRB for ch1 maps
          let map_projection_c1p1 = d3.geoAlbers()
              .center([0, 41.27883611]) //41.47883611
              .rotate([76.21902778, 0, 0])
              .parallels([40.31476574, 42.64290648])
              .scale(map_height_c1p1*6.5) // map_height_c1p1*6
              .translate([map_width_c1p1 / 2, map_height_c1p1 / 2]);

          let map_path_c1p1 = d3.geoPath()
              .projection(map_projection_c1p1);
// not working because geoscalebar import is not recognized
          // create scale bar
          const scaleBarTop_c1p1 = d3.geoScaleBar()
              .orient(d3.geoScaleBottom)
              .projection(map_projection_c1p1)
              .size([map_width_c1p1, map_height_c1p1])
              .left(.05)
              .top(.85)
              .units(d3.geoScaleKilometers)
              .distance(150)
              .label("150 kilometers")
              .labelAnchor("middle")
              .tickSize(null)
              .tickValues(null);

          // const scaleBarBottom_c1p1 = d3.geoScaleBar()
          //     .orient(d3.geoScaleTop)
          //     .projection(map_projection_c1p1)
          //     .size([map_width_c1p1, map_height_c1p1])
          //     .left(.05)
          //     .top(.86)
          //     .units(d3.geoScaleMiles)
          //     .distance(75)
          //     .label("75 miles")
          //     .labelAnchor("middle")
          //     .tickSize(null)
          //     .tickValues(null);

          //create new svg container for the ch 1 panel 1 map
          let map_c1p1 = d3.select("#DRB_map_c1p1")
              .append("svg")
              .attr("class", "map_c1p1")
              .attr("viewBox", [0, 0, (map_width_c1p1 + map_margin_c1p1.right + map_margin_c1p1.left),
                (map_height_c1p1 + map_margin_c1p1.top + map_margin_c1p1.bottom)].join(' '));
          // .attr("width", map_width_c1p1)
          // .attr("height", map_height_c1p1);

          // // CHAPTER 2 BAR CHART
          // write function to process data for stacked bar chart in chapter 2 panel 1
          function type(d, i, columns) {
            let t = 0;
            for (i=1, t; i < columns.length; ++i)
                // for each row, which is d, cycle through the columns
              t += d[columns[i]] = +d[columns[i]];
            // create a new column in the data titled "total"
            d.total = t;
            return d;
          }
          // // CHAPTER 2 MAPS
          // set universal map frame dimensions for Ch 2 panel maps
          let map_width = 600,
              map_height = window.innerHeight*0.8,
              map_margin = {top: 5, right: 5, bottom: 5, left: 5};

          //create Albers equal area conic projection centered on DRB for ch2 panel 1 map
          let map_projection_c2p1 = d3.geoAlbers()
              .center([0, 40.658894445])
              .rotate([75.533333335, 0, 0]) //75.363333335 centered, 76.2 far right, 74.6 far left
              .parallels([39.9352537033, 41.1825351867])
              .scale(map_height*15)
              .translate([map_width / 2, map_height / 2]);

          let map_path_c2p1 = d3.geoPath()
              .projection(map_projection_c2p1);

          // doesn't work because geoscalebar import is not recognised
          // create scale bar for ch 2 panel 1 map
          // const scaleBarTop_c2p1 = d3.geoScaleBar()
          //     .orient(d3.geoScaleBottom)
          //     .projection(map_projection_c2p1)
          //     .size([map_width, map_height])
          //     .left(.3) // .15 centered, .45 far right
          //     .top(.94)
          //     .units(d3.geoScaleKilometers)
          //     .distance(50)
          //     .label("50 kilometers")
          //     .labelAnchor("middle")
          //     .tickSize(null)
          //     .tickValues(null);
          //
          // const scaleBarBottom_c2p1 = d3.geoScaleBar()
          //     .orient(d3.geoScaleTop)
          //     .projection(map_projection_c2p1)
          //     .size([map_width, map_height])
          //     .left(.3) // .15 centered, .45 far right
          //     .top(.95)
          //     .units(d3.geoScaleMiles)
          //     .distance(25)
          //     .label("25 miles")
          //     .labelAnchor("middle")
          //     .tickSize(null)
          //     .tickValues(null);

          //create Albers equal area conic projection centered on DRB for ch2 panel 2 and 3 maps
          let map_projection = d3.geoAlbers()
              .center([0, 40.658894445])
              .rotate([74.6, 0, 0]) //75.363333335 centered, 76.2 far right, 74.6 far left
              .parallels([39.9352537033, 41.1825351867])
              .scale(map_height*15)
              .translate([map_width / 2, map_height / 2]);

          let map_path = d3.geoPath()
              .projection(map_projection);
// doesn't work because geoscalebar import is not recognised
          // create scale bar for ch 2 panel 2 and 3 maps
          // const scaleBarTop = d3.geoScaleBar()
          //     .orient(d3.geoScaleBottom)
          //     .projection(map_projection)
          //     .size([map_width, map_height])
          //     .left(.1) // .15 centered, .45 far right
          //     .top(.94)
          //     .units(d3.geoScaleKilometers)
          //     .distance(50)
          //     .label("50 kilometers")
          //     .labelAnchor("middle")
          //     .tickSize(null)
          //     .tickValues(null);
          //
          // const scaleBarBottom = d3.geoScaleBar()
          //     .orient(d3.geoScaleTop)
          //     .projection(map_projection)
          //     .size([map_width, map_height])
          //     .left(.1) // .15 centered, .45 far right
          //     .top(.95)
          //     .units(d3.geoScaleMiles)
          //     .distance(25)
          //     .label("25 miles")
          //     .labelAnchor("middle")
          //     .tickSize(null)
          //     .tickValues(null);

          //create new svg container for the ch 2 panel 1 map
          var map_c2p1 = d3.select("#DRB_map_c2p1")
              .append("svg")
              .attr("class", "map_c2p1")
              .attr("viewBox", [0, 0, (map_width + map_margin.right + map_margin.left),
                (map_height + map_margin.top + map_margin.bottom)].join(' '));
          // .attr("width", map_width)
          // .attr("height", map_height);

          //create new svg container for the ch 2 panel 2 map
          var map_c2p2 = d3.select("#DRB_map_c2p2")
              .append("svg")
              .attr("class", "map_c2p2")
              .attr("viewBox", [0, 0, (map_width + map_margin.right + map_margin.left),
                (map_height + map_margin.top + map_margin.bottom)].join(' '));
          // .attr("width", map_width)
          // .attr("height", map_height);

          // create new svg container for the ch 2 panel 3 map
          var map_c2p3 = d3.select("#DRB_map_c2p3")
              .append("svg")
              .attr("class", "map_c2p3")
              .attr("viewBox", [0, 0, (map_width + map_margin.right + map_margin.left),
                (map_height + map_margin.top + map_margin.bottom)].join(' '));
          // .attr("width", map_width)
          // .attr("height", map_height);


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
