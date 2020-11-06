<template>
  <div id="monitoring-desktop">
    <div class="text-content">
      <h2>Monitoring!</h2>
      <div id="platform-test">Can confirm, this is loading the {{ msg }} version.</div>
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
    name: 'MonitoringDesktop',
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
