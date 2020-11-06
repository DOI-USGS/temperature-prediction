<template>
    <section id="monitoring-router">
        <div class="text-content">
            <h2>This heading is in the component "Router Testing"</h2>
            <p>{{ msg }} version will be loaded below conditionally.</p>
            <p>When we're done testing, delete this div and all that will be left will be the {{ msg }} component. </p>
        </div>
        <div 
            id="monitoring-mobile"
            v-if="isMobile"
        >
            <MonitoringMobile />
        </div>
        <div 
            id="monitoring-desktop"
            v-if="!isMobile"
        >
            <MonitoringDesktop />
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
                MobileView: false // Assume the viewer is on desktop
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
<style></style>