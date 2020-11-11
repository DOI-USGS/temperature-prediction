<template>
  <div id="monitoring-desktop">
    <div class="text-content">
      <h2>Monitoring!</h2>
      <p id="platform-test">
        Can confirm, this is loading the {{ msg }} version.
      </p>
      <p>Aaaaaand here's where we'll put all the code for ✨Chapter 2.✨  Load the components down below here.</p>
    </div>  
    <Set2 />
  </div>
</template>

<script>
  import monitoringText from "./../../assets/text/monitoringText";
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
