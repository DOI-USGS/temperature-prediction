<template>
  <div id="monitoring-desktop"> 
    <Set2 />
  </div>
</template>

<script>
  import monitoringText from "./../../components/2-Monitoring/monitoringText";
  import Set2 from "./../set2/Set2";
  import { isMobile } from 'mobile-device-detect';
  
  export default {
    name: 'MonitoringDesktop',
    components: {
      Set2
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
