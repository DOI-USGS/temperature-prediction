<template>
  <div id="app">
    <WindowSize v-if="checkTypeOfEnv === '-test build-'" />
    <HeaderUSWDSBanner />
    <HeaderUSGS />
    <InternetExplorerPage v-if="isInternetExplorer" />
    <WorkInProgressWarning v-if="checkTypeOfEnv !== '' & !isInternetExplorer" /> <!-- an empty string in this case means the 'prod' version of the application   -->
    <router-view
      v-if="!isInternetExplorer"
    />
    <PreFooterVisualizationsLinks v-if="!isInternetExplorer" />
    <PreFooterCodeLinks v-if="!isInternetExplorer" />
    <FooterUSGS />
  </div>
</template>

<script>
    import WindowSize from "./components/WindowSize";
    import HeaderUSWDSBanner from './components/HeaderUSWDSBanner'
    import HeaderUSGS from './components/HeaderUSGS'

    export default {
        name: 'App',
        components: {
            WindowSize,
            HeaderUSWDSBanner,
            HeaderUSGS,
            InternetExplorerPage: () => import( /* webpackPrefetch: true */ /*webpackChunkName: "internet-explorer-page"*/ "./components/InternetExplorerPage"),
            WorkInProgressWarning: () => import( /* webpackPrefetch: true */ /*webpackChunkName: "work-in-progress-warning"*/ "./components/WorkInProgressWarning"),
            PreFooterVisualizationsLinks: () => import( /* webpackPrefetch: true */ /*webpackChunkName: "pre-footer-links-visualizations"*/ "./components/PreFooterVisualizationsLinks"),
            PreFooterCodeLinks: () => import( /* webpackPrefetch: true */ /*webpackChunkName: "pre-footer-links-code"*/ "./components/PreFooterCodeLinks"),
            FooterUSGS: () => import( /* webpackPrefetch: true */ /*webpackChunkName: "usgs-footer"*/ "./components/FooterUSGS") // Have Webpack put the footer in a separate chunk so we can load it conditionally (with a v-if) if we desire
        },
        data() {
            return {
                isInternetExplorer: false
            }
        },
        computed: {
            checkTypeOfEnv() {
                return process.env.VUE_APP_TIER
            }
        },
        created() {
            // We are ending support for Internet Explorer, so let's test to see if the browser used is IE.
            this.$browserDetect.isIE ? this.isInternetExplorer = true : this.isInternetExplorer = false;
            // Add window size tracking by adding a listener and a way to store the values in the Vuex state
            window.addEventListener('resize', this.handleResize);
            this.handleResize();
        },
        destroyed() {
            window.removeEventListener('resize', this.handleResize);
        },
        methods: {
            handleResize() {
                this.$store.commit('recordWindowWidth', window.innerWidth);
                this.$store.commit('recordWindowHeight', window.innerHeight);
            }
        }
    }
</script>

<style lang="scss">
body {
  margin-bottom: 0;
  font-family: 'Open Sans', arial, sans-serif;
  font-weight: 300;
  font-size: 1em;
  background-color: black;
  color: #525252;
  text-align: center;
}
#c2p2_matrix_min {
  font-weight: 700;
  color: #302D85;
}
#c2p2_matrix_max {
  font-weight: 700;
  color: #EBE72C;
}

#c2p2_matrix_bold {
  font-weight: 700;
  font-style: italic;
}

#c2p3_min_t {
  color: #354198;
}

#c2p3_max_t {
  color: #AD1F28;
}

#intro_row_1 {
  margin-top: 3vh;
  margin-bottom: 3vh;
}
#intro_row_1 h2 {
  color: #cecece;
}

#intro_row_2 {
  margin-top: 3vh;
  margin-bottom: 3vh;
}
#intro_row_2 h2 {
  color: #cecece;
}

.row {
  margin-top: 10vh;
  margin-bottom: 10vh;
}

#filter_row {
  height: 1vh;
}

.narrative_text {
  text-align: left;
  color: #cecece;
  margin-right: 7vh;
  font-size: 1.02vw;
}

.narrative {
  color: #cecece;
  font-size: 0.9em;
  text-align: right;
  margin-right: 0.2vh;
}

#tip_text {
  font-size: 0.75em;
  color: #858585;
  margin-right: 0.5vh;
}

.states {
  fill: None;
  stroke: #636363;
  stroke-width: 0.5;
}

.delaware_bay {
  fill: #6079a3;
}


.river_segments {
  stroke: #6079a3;
  stroke-linecap: round;
  stroke-width: 0.5px;
}

.reservoirs {
  fill:  #6079a3;
  stroke: #6079a3;
}

.matrixAxis {
  color: #7a7a7a;
}

.chartAxis {
  color: #999999;
  font-size: .60em;
}

.legend {
  font-family: 'Open Sans', arial, sans-serif;
  font-size: 0.6em;
  fill: #999999;
}

.chartAxisText {
  fill: #999999;
  font-size: 1.2em;
}

.tooltip {
  fill: #ffffff;
  font-family: sans-serif;
  font-size: 0.7em;
  font-weight: bold;
  line-height: 1em;
}
</style>
