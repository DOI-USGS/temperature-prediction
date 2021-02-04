<template>
  <div id="monitoring-mobile">
    <div class="text-content">
      <div class="viz-title">
        <h3 v-html="text.title1" />
      </div>
      <br>
      <p v-html="text.paragraph1" />
      <p v-html="text.paragraph2" />
    </div>
    <div class="box">
      <div class="text-content move-up">
        <div class="viz-title-wrapper">
          <p class="viz-title">
            Temperature Monitoring <span class="yellow">Sites</span> in the Delaware River Basin
          </p>
          <p class="viz-subtitle" />
        </div>
      </div>   
      <MonitoringMap1 />
    </div>
    <div class="text-content">
      <p v-html="text.paragraph3" />
    </div>
    <div class="box">
      <div class="text-content move-up">
        <div class="viz-title-wrapper">
          <p class="viz-title">
            <span class="yellow">Number of Temperature Measurements</span> by Year
          </p>
          <p class="viz-subtitle">
            Data from USGS streamgages or other state/local agencies.
          </p>
        </div>
      </div>
      <MonitoringBarChart />
    </div>
    <div class="text-content">
      <p v-html="text.paragraph4" />
      <p v-html="text.paragraph5" />
      <Chapter2Icons1 />
      <br>
      <br>
      <div class="viz-title">
        <h3 v-html="text.title2" />
      </div>
      <br>
      <p v-html="text.subtitle2" />
      <p v-html="text.paragraph6" />
      <p v-html="text.tiptextMobile" />
    </div>
    <div class="box">
      <div class="text-content move-up">
        <div class="viz-title-wrapper">
          <p class="viz-title">
            <span class="yellow">40 Years</span> of Temperature Data
          </p>
          <p class="viz-subtitle">
            Every reach with data in each of the last 40 years.
          </p>
        </div>
      </div>
      <MonitoringMap2 />
    </div>
    <br>
    <div class="text-content">
      <p v-html="text.paragraph8" />
      <p v-html="text.paragraph9" />
    </div>
    <div class="box">
      <div class="text-content move-up">
        <div class="viz-title-wrapper">
          <p class="viz-title">
            <span class="yellow">Availability</span> of Temperature Data
          </p>
          <p class="viz-subtitle">
            Visualizing the count of temperature measurements of all stream reaches in the basin.
          </p>
        </div>
      </div>
      <MatrixExplainerSpace />
      <MatrixExplainerTime />
      <MatrixExplainerColor />
      <MatrixAvailability />
    </div>
    <div class="text-content">
      <br>
      <div class="viz-title">
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
            <span class="yellow">Daily Temperature</span> of River Reaches in 2019
          </p>
          <p class="viz-subtitle">
            Each line = one reach.
          </p>
          <p class="viz-subtitle" />
        </div>
      </div>
      <MonitoringLineChart />
    </div>
    <br>
    <div class="text-content">
      <p v-html="text.paragraph12" />
      <p v-html="text.paragraph13" />
    </div>
    <div class="box">
      <div class="text-content move-up">
        <div class="viz-title-wrapper">
          <p class="viz-title">
            <span class="yellow">Variability</span> of Temperature Data in 2019
          </p>
          <p class="viz-subtitle">
            Visualizing measured stream temperature in the basin in 2019.
          </p>
        </div>
      </div>  
      <MatrixTemperature />
    </div>
    <div class="text-content">
      <br>
      <div class="viz-title">
        <h3 v-html="text.title4" />
      </div>
      <br>
      <p v-html="text.paragraph14" />
      <p v-html="text.paragraph15" />
    </div>
    <div class="box">
      <div class="text-content">
        <div class="viz-title-wrapper">
          <p class="viz-title">
            <span class="yellow">Most Observed</span> Areas in Continental United States
          </p>
          <p class="viz-subtitle">
            USGS, state, or local agency stream temperature observations since 1985.
          </p>
        </div>
      </div>
      <!-- div class="hex-container" -->
      <img
        id="hex-map"
        src="@/assets/temp_hex_map_mobile_transparent.png"
      >
      <!-- /div -->
    </div>
    <div class="text-content">
      <p v-html="text.paragraph16" />
    </div>
  </div>
</template>

<script>
  import monitoringText from "./../../assets/text/monitoringText";
  import MonitoringMap1 from "./../../components/2-Monitoring-Mobile/MonitoringMap1";
  import MonitoringBarChart from "./../../components/2-Monitoring-Mobile/MonitoringBarChart";
  import MonitoringMap2 from "./../../components/2-Monitoring-Mobile/MonitoringMap2";
  import MatrixExplainerSpace from "./../../components/2-Monitoring-Mobile/MatrixExplainerSpace";
  import MatrixExplainerTime from "./../../components/2-Monitoring-Mobile/MatrixExplainerTime";
  import MatrixExplainerColor from "./../../components/2-Monitoring-Mobile/MatrixExplainerColor";
  import MatrixAvailability from "./../../components/2-Monitoring-Mobile/MatrixAvailability";
  import MonitoringLineChart from "./../../components/2-Monitoring-Mobile/MonitoringLineChart";
  import MatrixTemperature from "./../../components/2-Monitoring-Mobile/MatrixTemperature";
  import { isMobile } from 'mobile-device-detect';
  
  export default {
    name: 'MonitoringMobile',
    components: {
      MonitoringMap1,
      MonitoringBarChart,
      MonitoringMap2,
      MatrixExplainerSpace,
      MatrixExplainerTime,
      MatrixExplainerColor,
      MatrixAvailability,
      MonitoringLineChart,
      MatrixTemperature,
      Chapter2Icons1: () => import( /* webpackPreload: true */ /*webpackChunkName: "chapter2icons1"*/ "./../../components/2-Monitoring/Chapter2Icons1"),
      Chapter2Icons2: () => import( /* webpackPreload: true */ /*webpackChunkName: "chapter2icons2"*/ "./../../components/2-Monitoring/Chapter2Icons2")
    },
    data() {
        return {
            msg: isMobile ? "mobile" : "desktop",
            text: monitoringText.textContents
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
$lightBlue: #AAD1EC;
$grayBlue: #576069; //#4F5C67

  // .axis-title {
  //     font-size: 1.2em;
  //     font-family: SourceSansPro-Bold, Source Sans Pro;
  //     font-weight: 700;
  //     fill: white;
  // }

  // .axis-subtitle {
  //       font-family: SourceSansPro-Light, Source Sans Pro;
  //       font-weight: 300;
  //       fill: white;
  // }

  // .tick-label {
  //       font-family: SourceSansPro-Light, Source Sans Pro;
  //       font-weight: 300;
  //       fill: white;
  //       font-size: .9em;
  // }
  // .hex-container {
  //   text-align: center;
  // }
  // #hex-map {
  //   padding: 0em; //1em
  //   width: 80vw;
  //   height: auto;
  // }
</style>
