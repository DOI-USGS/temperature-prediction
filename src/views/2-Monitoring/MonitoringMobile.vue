<template>
  <div id="monitoring-mobile">
    <div class="text-content">
      <h2>Monitoring!</h2>
      <p id="platform-test">Can confirm, this is loading the {{ msg }} version.</p>
      <h2 v-html="text.title1"></h2>
      <p v-html="text.paragraph1" />
      <p v-html="text.paragraph2" />
    </div>   
    <Set1 />
    <MonitoringMap1 />
  </div>
</template>

<script>
  import monitoringText from "./../../assets/text/monitoringText";
  import Set1 from "./../set1/Set1";
  import MonitoringMap1 from "./../../components/2-Monitoring-Mobile/MonitoringMap1";
  import { isMobile } from 'mobile-device-detect';
  
  export default {
    name: 'MonitoringMobile',
    components: {
      Set1,
      MonitoringMap1
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
