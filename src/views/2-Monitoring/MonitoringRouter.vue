<template>
    <section id="monitoring-router">
        <div class="text-content">
            <h2>This heading is in the component "Router Testing"</h2>
            <p>Content below will be loaded conditionally, in this case, it'll be the {{ msg }} version.</p>
            <p>When we're done testing, delete this whole div and all that will be left will be the {{ msg }} component. </p>
        </div>
        
        <div 
            id="monitoring-desktop"
            v-if="!mobileView"
        >
            <MonitoringDesktop />
        </div>
        <div 
            id="monitoring-mobile"
            v-if="mobileView"
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
                mobileView: isMobile ? "false" : "true"
            }
        },
        methods: {
            isMobile() {
                if(/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent)) {
                    return true
                } else {
                    return false
                }
            },
            testRouter(msg) {
                console.log(msg);
            }
        }
    }
</script>
<style></style>