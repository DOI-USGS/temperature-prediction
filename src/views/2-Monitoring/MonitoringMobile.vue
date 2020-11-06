<template>
  <div id="monitoring-desktop">
    <div class="text-content">
      <h2>Monitoring!</h2>
      <div class="hello">{{ msg }}</div>
      <p>This is a whole other vue that renders whent the user is viewing the page on mobile.</p>
    </div>  
    <Set1 />
  </div>
</template>

<script>
  import Set1 from "./../set1/Set1";
  import { isMobile } from 'mobile-device-detect';
  
  export default {
    name: 'MonitoringDesktop',
    components: {
      Set1
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
