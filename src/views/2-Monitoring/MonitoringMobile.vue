<template>
  <div id="monitoring-mobile">
    <br>
    <IntroMap />
    <br>
    <div class="text-content">
      <div class="viz-title-wrapper">
        <p class="viz-title">
          The Delaware River Basin
        </p>
      </div>
      <br>
      <p>The Delaware River Basin covers 13,500 square miles in parts of four states, including New York, New Jersey, Pennsylvania, and Delaware. The Delaware River is rich in history, ecologically diverse, and critical to the regional economy.</p>
      <p>Water managers in this region have a long history of applying innovative, regional solutions to ensure the long-term sustainability of this resource, which provides drinking water to over 15 million people in the region.</p>
    </div>
    <ImportanceIcons />
    <div class="text-content">
      <p>Many species – including economically important game species like Brown trout and endangered species like the Dwarf wedgemussel – thrive or spawn in specific temperature ranges. Increases in river water temperature are happening all over the globe, and in the Delaware River Basin, urbanization, climate change, and human modification of hydrology can all increase water temperature. Fortunately, water managers in the basin can modify stream temperature via cold water releases from reservoirs. The ability to predict water temperature, and therefore make an educated guess at when, where, and how much cold water to release can help protect cold water habitat in the Delaware River basin.</p>
      <p>Basin-wide monitoring of water temperature underpins our understanding of water temperature dynamics in the Delaware River Basin, but modeling water temperature dynamics can help fill gaps in our knowledge. Here, we explore USGS temperature monitoring and state-of-the-art modeling techniques to predict water temperature in the Delaware River Basin.</p>
      <p v-html="text.paragraph1" />
      <p v-html="text.paragraph2" />
      <p v-html="text.paragraph1" />
      <p v-html="text.paragraph2" />
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
      <MonitoringMap1 />
    </div>
    <div class="text-content">
      <p v-html="text.paragraph3" />
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
            <span class="yellow">40 years</span> of temperature data
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
            <span class="yellow">Availability</span> of temperature data
          </p>
          <p class="viz-subtitle">
            Visualizing the count of temperature measurements in stream reaches across the basin.
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
            <span class="yellow">Daily temperature</span> of river reaches in 2019
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
            <span class="yellow">Variability</span> of water temperature in 2019
          </p>
          <p class="viz-subtitle">
            Visualizing measured stream temperature in the basin in 2019.
          </p>
        </div>
      </div>  
      <MatrixTemperature />
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
