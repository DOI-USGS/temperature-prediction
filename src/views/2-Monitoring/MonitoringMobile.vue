<template>
  <div id="monitoring-mobile">
    <div class="text-content">
      <h2>Monitoring!</h2>
      <p id="platform-test">
        Can confirm, this is loading the {{ msg }} version.
      </p>
      <h2 v-html="text.title1" />
      <p v-html="text.paragraph1" />
      <p v-html="text.paragraph2" />
    </div>   
    <MonitoringMap1 />
    <div class="text-content">
      <p v-html="text.paragraph3" />
    </div>
    <MonitoringBarChart />
    <div class="text-content">
      <p v-html="text.paragraph4" />
      <p v-html="text.paragraph5" />
      <p>ICONS HERE</p>
      <!-- <Chapter2Icons1 /> -->
      <h2 v-html="text.title2" />
      <p v-html="text.subtitle2" />
      <p v-html="text.paragraph6" />
      <p v-html="text.paragraph7" />
    </div>
    <MonitoringMap2 />
    <div class="text-content">
      <p v-html="text.paragraph8" />
      <p v-html="text.paragraph9" />
    </div>
    <MatrixExplainerSpace />
    <MatrixExplainerTime />
    <MatrixExplainerColor />
    <MatrixAvailability />
    <div class="text-content">
      <h2 v-html="text.title3" />
      <p v-html="text.paragraph10" />
      <p>ICONS HERE</p>
      <!-- <Chapter2Icons2 /> -->
      <p v-html="text.paragraph11" />
    </div>
    <MonitoringLineChart />
    <div class="text-content">
      <p v-html="text.paragraph12" />
      <p v-html="text.paragraph13" />
    </div>
    <MatrixTemperature />
    <div class="text-content">
      <p v-html="text.paragraph14" />
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
      MatrixTemperature
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

  .axis-title {
      font-size: 1.2em;
      font-family: SourceSansPro-Bold, Source Sans Pro;
      font-weight: 700;
      fill: white;
  }

  .axis-subtitle {
        font-family: SourceSansPro-Light, Source Sans Pro;
        font-weight: 300;
        fill: white;
  }

  .tick-label {
        font-family: SourceSansPro-Light, Source Sans Pro;
        font-weight: 300;
        fill: white;
        font-size: .9em;
  }
</style>
