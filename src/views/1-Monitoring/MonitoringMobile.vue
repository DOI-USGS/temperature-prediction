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
      <Chapter1Icons1 />
      <p v-html="text.paragraph3" />
      <p v-html="text.paragraph4" />
      <div class="subheader">
        <h3 v-html="text.title2" />
      </div>
      <p v-html="text.paragraph5" />
    </div>
    <div class="box">
      <div class="text-content move-up">
        <div class="viz-title-wrapper">
          <p class="viz-title">
            Temperature monitoring <span class="yellow">sites</span> in the Delaware River Basin
          </p>
          <p class="viz-subtitle" />
        </div>
      </div>
      <MonitoringMap />
    </div>
    <br>
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
      <MonitoringBarChart />
    </div>
    <br>
    <div class="text-content">
      <p v-html="text.paragraph7" />
      <p v-html="text.paragraph8" />
      <Chapter1Icons2 />
      <div class="first_subheader">
        <h3 v-html="text.title3" />
      </div>
      <p v-html="text.paragraph9" />
      <p v-html="text.paragraph10" />
    </div>
    <div class="box">
      <div class="text-content move-up">
        <div class="viz-title-wrapper">
          <p class="viz-title">
            <span class="yellow">Availability</span> of temperature data in space and time
          </p>
        </div>
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
      <p v-html="text.paragraph11" />
      <Chapter1Icons3 />
      <p v-html="text.paragraph12" />
    </div>
    <div class="box">
      <div class="text-content move-up">
        <div class="viz-title-wrapper">
          <p class="viz-title">
            Stream temperature <span class="yellow">variability</span> in 2019
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
      <p v-html="text.paragraph13" />
      <p v-html="text.paragraph14" />
    </div>
  </div>
</template>

<script>
  import monitoringText from "./../../components/1-Monitoring/monitoringText";
  import MonitoringMap from "./../../components/1-Monitoring-Mobile/MonitoringMap";
  import MonitoringBarChart from "./../../components/1-Monitoring-Mobile/MonitoringBarChart";
  import MatrixExplainerSpace from "./../../components/1-Monitoring-Mobile/MatrixExplainerSpace";
  import MatrixExplainerTime from "./../../components/1-Monitoring-Mobile/MatrixExplainerTime";
  import MatrixExplainerColor from "./../../components/1-Monitoring-Mobile/MatrixExplainerColor";
  import MatrixAvailability from "./../../components/1-Monitoring-Mobile/MatrixAvailability";
  import MonitoringLineChart from "./../../components/1-Monitoring-Mobile/MonitoringLineChart";
  import { isMobile } from 'mobile-device-detect';
  
  export default {
    name: 'MonitoringMobile',
    components: {
      MonitoringMap,
      MonitoringBarChart,
      MatrixExplainerSpace,
      MatrixExplainerTime,
      MatrixExplainerColor,
      MatrixAvailability,
      MonitoringLineChart,
      IntroMap: () => import( /* webpackPreload: true */ /*webpackChunkName: "intromap"*/ "./../../components/1-Monitoring/IntroMap"),
      Chapter1Icons1: () => import( /* webpackPreload: true */ /*webpackChunkName: "chapter1icons1"*/ "./../../components/1-Monitoring/Chapter1Icons1"),
      Chapter1Icons2: () => import( /* webpackPreload: true */ /*webpackChunkName: "chapter1icons2"*/ "./../../components/1-Monitoring/Chapter1Icons2"),
      Chapter1Icons3: () => import( /* webpackPreload: true */ /*webpackChunkName: "chapter1icons3"*/ "./../../components/1-Monitoring/Chapter1Icons3")
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
