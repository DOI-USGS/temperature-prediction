<template>
  <div id="monitoring-desktop">
    <div class="text-content">
      <h2>Monitoring!</h2>
      <div class="hello">{{ msg }}</div>
      <p>Aaaaaand here's where we'll put all the code for ✨Chapter 2.✨  See the components loaded below here?</p>
    </div>  
    <Set2 />
  </div>
</template>

<script>
  import Set2 from "./../set2/Set2";
  import { isMobile } from 'mobile-device-detect';
  
  export default {
    name: 'MonitoringDesktop',
    components: {
      Set2
    },
    data() {
        return {
            msg: isMobile ? "I'm on mobile!" : "I'm on desktop!",
        }
    }
  }

          
</script>

<style scoped lang="scss">

</style>
