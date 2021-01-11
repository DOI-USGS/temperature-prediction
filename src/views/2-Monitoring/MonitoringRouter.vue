<template>
  <section id="monitoring-router">
    <div class="text-content section-title-wrapper">
      <h2>Monitoring Stream Temperature in the Delaware River Basin</h2>
    </div>
        
    <div 
      v-if="!mobileView"
      id="monitoring-desktop"
    >
      <MonitoringDesktop />
    </div>
    <div 
      v-if="mobileView"
      id="monitoring-mobile"
    >
      <MonitoringMobile />
    </div>
  </section>
</template>
<script>

    import MonitoringMobile from "./MonitoringMobile";
    import MonitoringDesktop from "./MonitoringDesktop";
    import { isMobile } from 'mobile-device-detect';

    export default {
        name: 'MonitoringRouter',
        components: {
            MonitoringMobile,
            MonitoringDesktop
        },
        data() {
            return {
                msg: isMobile ? "Mobile" : "Desktop",
                mobileView: isMobile
            }
        },
        methods: {
            isMobile() {
                if(/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent)) {
                    return true
                } else {
                    return false
                }
            }
        }
    }
</script>
<style scoped>
</style>