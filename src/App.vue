<template>
  <div id="app">
    <WindowSize v-if="checkTypeOfEnv === '-test build-'" />
    <HeaderUSWDSBanner />
    <HeaderUSGS />
    <InternetExplorerPage v-if="isInternetExplorer" />
    <NavTitle />
    <router-view
      v-if="!isInternetExplorer"
    />
    <Nav />
    <PreFooterVisualizationsLinks v-if="!isInternetExplorer" />
    <PreFooterCodeLinks v-if="!isInternetExplorer" />
    <FooterUSGS />
  </div>
</template>

<script>
    import WindowSize from "./components/WindowSize";
    import HeaderUSWDSBanner from './components/HeaderUSWDSBanner'
    import HeaderUSGS from './components/HeaderUSGS'
    import NavTitle from './components/Nav_title'
    import Nav from './components/Nav'
    import { isMobile } from 'mobile-device-detect';

    export default {
        name: 'App',
        components: {
            WindowSize,
            HeaderUSWDSBanner,
            HeaderUSGS,
            NavTitle,
            Nav,
            InternetExplorerPage: () => import( /* webpackPrefetch: true */ /*webpackChunkName: "internet-explorer-page"*/ "./components/InternetExplorerPage"),
            PreFooterVisualizationsLinks: () => import( /* webpackPreload: true */ /*webpackChunkName: "pre-footer-links-visualizations"*/ "./components/PreFooterVisualizationsLinks"),
            PreFooterCodeLinks: () => import( /* webpackPreload: true */ /*webpackChunkName: "pre-footer-links-code"*/ "./components/PreFooterCodeLinks"),
            FooterUSGS: () => import( /* webpackPreload: true */ /*webpackChunkName: "usgs-footer"*/ "./components/FooterUSGS") // Have Webpack put the footer in a separate chunk so we can load it conditionally (with a v-if) if we desire
        },
        data() {
            return {
                isInternetExplorer: false,
                mobileView: isMobile
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
            },
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

<style lang="scss">

// IMPORT COLORS
$backgroundCharcoal: #292b30;
$boxCharcoal: #0f0f0f;
$offWhite: #F1F1F1;
$offWhiteBox: #dedede;
$plasmaYellow: #FAB62F;
$plasmaPink: #BE3D7D;
$plasmaPurple: #62039A;
$plasmaBlue: #142167;
$darkBlue: #192c42;
$footerBlue: #00264C;
$mediumBlue: #5D9DC7; 
$grayBlue: #777b80;
$dimGray: #9c9c9c;

// Type
body {
  margin: 0;
  padding: 0;
  color: $offWhite;
  background-color: $backgroundCharcoal;
  line-height: 1.5;
  font-size: 13pt;
  font-family: 'Source Sans Pro', Helvetica, Arial, sans-serif;
  font-weight: 300;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  width: 100%;
}

h1{
  font-size: 2em;
  font-weight: 300;
  @media screen and (max-width: 600px) {
    font-size: 1.4em;
  }  
}

h2{
  color: $mediumBlue;
  font-weight: 700;
  text-align: center;
  font-size: 3em;
  margin-top: 5px;
  line-height: 1.3;
  @media screen and (max-width: 600px) {
    font-size: 2em;
  }

}
h3{
  font-size: 2em;
  padding-top: .5em;
  font-weight: 300;
  @media screen and (max-width: 600px) {
    font-size: 1.4em;
  }  
}

.overall-title {
  padding-top: 0vh;
  margin: 0 auto;
  overflow-x: hidden;
  @media screen and (max-width: 600px) {
    padding: 0 20px 0 20px;
  }
}

.byline {
  font-family: 'Georgia', Helvetica, Arial, sans-serif;
  font-weight: 300;
  font-size: .8em;
  color: $grayBlue; 
}

.chapter {
  text-align: center;
  font-weight: 300;
  font-size: .8em;
  font-style: italic;
}

.subheader {
  padding-top: 1.25em;
  padding-bottom: .75em;
}

.first_subheader {
  padding-top: 0em;
  padding-bottom: .75em;
}
// General Layout  

.text-content {
  min-width: 350px;
  max-width: 700px;
  margin: 0 auto;
  padding: 2em;   
  @media screen and (max-width: 600px) {
    min-width: 50vw;
    max-width: 95vw;
    padding: 10px;
  }  
}
.text-content.move-up {
  padding-bottom: 5px;
}

.box {
  background-color: $boxCharcoal;
  border-radius: 5px;
  max-width: 700px;
  margin: 0 auto;
  padding: 10px;
  @media screen and (max-width: 600px) {
    width: 90%;
    padding: 10px;
  } 
}

.box-matrix {
  background-color: $boxCharcoal;
  border-radius: 5px;
  max-width: 95%;
  margin: 0 auto;
  padding: 1%;
  @media screen and (max-width: 600px) {
      margin: 20px;
  }
}

@media (max-width: 600px) {
  .flex-container {
    flex-direction: column;
  }
  .flex-item {
    flex: none;
    padding: 0 0 1em 0;
    height: 100%;
  }
}

.figure-content {
  border: 1px white;
  display: flex;
  flex-wrap: wrap;
  align-items: flex-start;
  justify-content: space-evenly;
  align-content: space-around;
  max-width: 100%;
  margin: auto;
  @media screen and (max-width: 600px) {
    padding: 0px; 
  }
}

.figure {
  display: flex;
  padding: 20px;
  max-height: 100vh;
  align-items: center;
  justify-content: center; 
  @media screen and (max-width: 600px) {
    padding: 0px;
  }
}

.map {
  min-width: 600px;
  max-width: 800px;
  max-height: 150vh;
  flex: 1 1 30%;
  justify-self: center;
  @media screen and (max-width: 600px) {
    max-width: 300px;
  }
}

.map_monitoring {
  min-width: 400px;
  max-width: 600px;
  max-height: 75vh;
  flex: 1 1 30%;
  justify-self: center;
  @media screen and (max-width: 600px) {
    max-width: 300px;
  }
  @media screen and (max-height: 770px) {
    max-height: 95vh;
  }
}

.chart {
  min-width: 600px;
}

.viz-title-wrapper {
  max-width: 100%;
  z-index: 100;
  @media screen and (max-width: 600px) {
    max-width: 100%;
    padding: 5px 5px 0px 5px;
  }
}

.viz-title {
  font-size: 1.4em;
  font-weight: 700;
  color: $offWhiteBox;
  margin-bottom: 0;
  @media screen and (max-width: 600px) {
    font-size: 1.2em;
    line-height: 1.2em;
  }
}

.viz-subtitle {
  color: $offWhiteBox;
  font-size: .8em;
  text-align: left;
  font-weight: 100;
  margin-bottom: 0;
  padding-top: 4px;
  @media screen and (max-width: 600px) {
    font-size: .8em;
    padding-top: 8px;
  }
}

.legend-text {
  fill: $dimGray;
  font-family: 'Source Sans Pro', Helvetica, Arial, sans-serif;
  font-size: 12pt;
}

.explainer-minor-text {
  fill: $dimGray;
  font-family: 'Source Sans Pro', Helvetica, Arial, sans-serif;
  font-size: 15pt;
}
  
.viz-comment {
  font-family: 'Source Sans Pro', Helvetica, Arial, sans-serif;
  font-size: 26px;
  font-weight: 400;
  fill: $offWhite;
}

.viz-emph {
  font-weight:700;
  fill: white;
  font-family: 'Source Sans Pro', Helvetica, Arial, sans-serif;
  font-size: 26px;
}

.emph {
  font-weight:700;
  fill: white;
  font-family: 'Source Sans Pro', Helvetica, Arial, sans-serif;
  background: linear-gradient(180deg,rgba(255,255,255,0) 60%, $footerBlue 40%);
  line-height: 1.3em;
  padding: 0 5px;
}

.yellow {
  color: $plasmaYellow;
}

.dashed-axis {
  stroke: $backgroundCharcoal;
  stroke-width: 3px;
  fill: none;
  stroke-miterlimit: 10;
  stroke-dasharray: 2 6;
}

.solid-axis {
  stroke: $boxCharcoal;
  stroke-width: 1px;
  fill: none;
  stroke-miterlimit: 10;
}

.tick-marks {
  fill: none;
  stroke-miterlimit: 10;
  stroke: $boxCharcoal;
  stroke-width: 0.75px;
}

a:focus {
  outline: none;
}

</style>
