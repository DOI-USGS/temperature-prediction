<template>
  <div id="monitoring-mobile">
    <br>
    <IntroMap />
    <div class="text-content">
      <div class="subheader">
        <h3 v-html="text.title1" />
      </div>
      <p v-html="text.paragraph1" />
      <p v-html="text.paragraph2" />
      <ImportanceIcons />
      <p v-html="text.paragraph3" />
      <p v-html="text.paragraph4" />
      <div class="subheader">
        <h3 v-html="text.title2" />
      </div>
      <p v-html="text.paragraph5" />
    </div>
    <div class="box">
      <div class="viz-title-wrapper">
        <p class="viz-title">
          Temperature monitoring <span class="yellow">sites</span> in the Delaware River Basin
        </p>
        <p class="viz-subtitle" />
      </div>
      <MonitoringMap1 />
    </div>
    <div class="text-content">
      <p v-html="text.paragraph6" />
    </div>
    <div class="box">
      <div class="viz-title-wrapper">
        <p class="viz-title">
          Number of <span class="yellow">daily temperature measurements</span> by year
        </p>
        <p class="viz-subtitle">
          Number of unique site-days measured by USGS streamgages or other state/local agencies.
        </p>
      </div>
      <MonitoringBarChart />
    </div>
    <div class="text-content">
      <p v-html="text.paragraph7" />
      <p v-html="text.paragraph8" />
      <Chapter2Icons1 />
      <div class="first_subheader">
        <h3 v-html="text.title3" />
      </div>
      <p v-html="text.paragraph9" />
      <p v-html="text.paragraph10" />
      <p v-html="text.tiptextMobile" />
    </div>
    <div class="box">
      <div class="viz-title-wrapper">
        <p class="viz-title">
          <span class="yellow">40 years</span> of temperature data
        </p>
        <p class="viz-subtitle">
          Every reach with data in each of the last 40 years.
        </p>
      </div>
      <MonitoringMap2 />
    </div>
    <br>
    <div class="text-content">
      <p v-html="text.paragraph11" />
    </div>
    <div class="box">
      <div class="viz-title-wrapper">
        <p class="viz-title">
          <span class="yellow">Availability</span> of stream temperature data
        </p>
        <p class="viz-subtitle">
          Visualizing the count of temperature measurements in stream reaches across the basin.
        </p>
      </div>
      <MatrixExplainerSpace />
      <MatrixExplainerTime />
      <MatrixExplainerColor />
      <MatrixAvailability />
    </div>
    <div class="text-content">
      <div class="subheader">
        <h3 v-html="text.title4" />
      </div>
      <p v-html="text.paragraph12" />
      <Chapter2Icons2 />
      <p v-html="text.paragraph13" />
    </div>
    <div class="box">
      <div class="viz-title-wrapper">
        <p class="viz-title">
          <span class="yellow">Daily temperature</span> of river reaches in 2019
        </p>
        <p class="viz-subtitle">
          Each line = one reach.
        </p>
        <p class="viz-subtitle" />
      </div>
      <MonitoringLineChart />
    </div>
    <br>
    <div class="text-content">
      <p v-html="text.paragraph14" />
      <p v-html="text.paragraph15" />
    </div>
    <div class="box">
      <div class="viz-title-wrapper">
        <p class="viz-title">
          <span class="yellow">Variability</span> of stream temperature in 2019
        </p>
        <p class="viz-subtitle">
          Visualizing measured stream temperature in the basin.
        </p>
      </div>
      <MatrixTemperature />
    </div>
    <div class="text-content">
      <p v-html="text.paragraph16" />
    </div>
  </div>
</template>

<script>
  import monitoringText from "./../../components/2-Monitoring/monitoringText";
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
      IntroMap: () => import( /* webpackPreload: true */ /*webpackChunkName: "intromap"*/ "./../../components/1-Importance/IntroMap"),
      ImportanceIcons: () => import( /* webpackPreload: true */ /*webpackChunkName: "importanceicons"*/ "./../../components/1-Importance/ImportanceIcons"),
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

</style>
