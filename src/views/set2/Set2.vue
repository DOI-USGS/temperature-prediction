<template>
  <section>
    <div class="container-fluid">
      <div id="intro_row" class = "row">
        <div class="col-xl-1 col-md-1 col-xs-0"></div>
        <div class="col-xl-10 col-md-10 col-xs-12">
          <h2>Stream Temperature Monitoring in the Delaware River Basin</h2>
        </div>
        <div class="col-xl-1 col-md-1 col-xs-0"></div>
      </div>
      <div id="intro_row" class = "row">
        <div id="DRB_map_c1p1" class="col-xl-6 col-md-6 col-xs-12"></div>
        <div class="col-xl-6 col-md-6 col-xs-12">
          <br><br>
          <p id="narrative_text">The Delaware River Basin covers 13,500 square miles in parts of four states,
            including New York, New Jersey, Pennsylvania, and Delaware. The Delaware River is rich in history,
            ecologically diverse, and critical to the regional economy. Water managers in this region have a
            long history of applying innovative, regional solutions to insure the long-term sustainability of
            this treasured resource, which provides drinking water to over 15 million people in the region.</p>
          <br>
          <p id="narrative_text">Temperature is a "master factor" in aquatic systems, regulating many processes --
            including fish growth, gas exchange, and evaporation. Increases in summer stream temperature as a
            result of human impacts and climate change may exceed the thermal tolerances of aquatic biota that
            are adapted to colder environments and climates. Modeling temperature in unobserved places and times,
            including forecasting into the future, allows stakeholders to anticipate and understand how water
            temperature has or will affect their resource of interest.</p>
        </div>
      </div>
      <div class = "row">
        <div id="DRB_map_c2p1" class="col-xl-6 col-md-6 col-xs-12"></div>
        <!-- <div class="col-md-1"></div> -->
        <div id="barChart_c2p1" class="col-xl-6 col-md-6 col-xs-12" >
          <br>
          <p id="narrative_text">The USGS and
            state and local agencies monitor stream temperature across the Delaware
            River Basin, collecting continuous and discrete measurements of water temperature.
            In the past 40 years, stream temperature has been measured at more than
            1,300 sites throughout the basin. Expansion to the monitoring network since 2018
            is rapidly increasing the volume of available data.</p>
          <br>
          <p id="narrative_text">This certainly seems like a lot of information, and it does
            represent a large investment of resources on the part of the USGS and stakeholders
            throughout the basin. However, in order to evaluate trends, predict water temperatures,
            or forecast future water temperatures, we must consider how much information is
            available to provide as input to a model at any given point in time, and at any
            given location within the basin.</p>
        </div>
      </div>
      <div class="row">
        <div id="DRB_map_c2p2" class="col-xl-6 col-md-6 col-xs-12"></div>
        <div id="matrixChart_c2p2" class="col-xl-6 col-md-6 col-xs-12" ></div>
      </div>
      <div class="row">
        <div id="DRB_map_c2p3" class="col-xl-6 col-md-6 col-xs-12"></div>
        <div id="matrixChart_c2p3" class="col-xl-6 col-md-6 col-xs-12" ></div>
      </div>
      <div class="row" id="filter_row">
        <div>
          <svg>
            <filter id="shadow1" style="width: 0px; height:0px">
              <feDropShadow dx="0" dy="0" stdDeviation="1.5"
                            flood-color="#ffffff"/>
            </filter>
          </svg>
        </div>
        <div>
          <svg>
            <filter id="shadow2" style="width: 0px; height:0px">
              <feDropShadow dx="0" dy="0" stdDeviation="1.5"
                            flood-color="#303030"/>
            </filter>
          </svg>
        </div>
      </div>
    </div>
  </section>
</template>

<script>
  import $ from 'jquery';
  export default {
      name: 'Set2'
  }

</script>

<style scoped lang="scss">

</style>
