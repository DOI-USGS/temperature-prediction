<template>
    <section id="monitoring-router">
        <h2>Hi!  Where shall we go?</h2>
        <div 
            id="monitoring-mobile"
            v-if="isMobile"
        >
            {{ msg }}
            <MonitoringMobile />
        </div>
        <div 
            id="monitoring-desktop"
            v-if="!isMobile"
        >
            {{ msg }}
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
                msg: isMobile ? "I'm on mobile!" : "I'm on desktop!",
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