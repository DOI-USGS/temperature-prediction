<template>
  <div id="monitoring-mobile">
    <div class="text-content">
      <h2>Monitoring!</h2>
      <p id="platform-test">Can confirm, this is loading the {{ msg }} version.</p>
      <h2 v-html="text.title1"></h2>
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
      <p>ICONS HERE</p>
      <!-- <Chapter2Icons1 /> -->
      <p v-html="text.title2" />
      <p v-html="text.paragraph5" />
      <p v-html="text.paragraph6" />
    </div>
    <MonitoringMap2 />
    <div class="text-content">
      <p v-html="text.paragraph7" />
      <p v-html="text.paragraph8" />
    </div>
    <!-- <MatrixExplainerSpace /> -->
    <!-- <MatrixExplainerTime /> -->
    <!-- <MatrixExplainerCells /> -->
    <div class="text-content">
      <p v-html="text.paragraph9" />
    </div>
    <!-- <MatrixAvailability /> -->
    <div class="text-content">
      <p v-html="text.paragraph10" />
      <!-- <Chapter2Icons2 /> -->
    </div>
    <!-- <MonitoringLineChart /> -->
    <div class="text-content">
      <p v-html="text.paragraph11" />
      <p v-html="text.paragraph12" />
    </div>
    <!-- <MonitoringMatrixTemperature /> -->
    <div class="text-content">
      <p v-html="text.paragraph13" />
    </div>
  </div>
</template>

<script>
  import monitoringText from "./../../assets/text/monitoringText";
  import MonitoringMap1 from "./../../components/2-Monitoring-Mobile/MonitoringMap1";
  import MonitoringBarChart from "./../../components/2-Monitoring-Mobile/MonitoringBarChart";
  import MonitoringMap2 from "./../../components/2-Monitoring-Mobile/MonitoringMap2";
  import { isMobile } from 'mobile-device-detect';
  
  export default {
    name: 'MonitoringMobile',
    components: {
      MonitoringMap1,
      MonitoringBarChart,
      MonitoringMap2
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

</style>
