<template>
  <div id="app">
    <WindowSize v-if="checkTypeOfEnv === '-test build-'" />
    <HeaderUSWDSBanner />
    <HeaderUSGS />
    <InternetExplorerPage v-if="isInternetExplorer" />
    <WorkInProgressWarning v-if="checkTypeOfEnv !== '' & !isInternetExplorer" /> <!-- an empty string in this case means the 'prod' version of the application   -->
    <Nav />
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
    import Nav from './components/Nav'

    export default {
        name: 'App',
        components: {
            WindowSize,
            HeaderUSWDSBanner,
            HeaderUSGS,
            Nav,
            InternetExplorerPage: () => import( /* webpackPrefetch: true */ /*webpackChunkName: "internet-explorer-page"*/ "./components/InternetExplorerPage"),
            WorkInProgressWarning: () => import( /* webpackPrefetch: true */ /*webpackChunkName: "work-in-progress-warning"*/ "./components/WorkInProgressWarning"),
            PreFooterVisualizationsLinks: () => import( /* webpackPreload: true */ /*webpackChunkName: "pre-footer-links-visualizations"*/ "./components/PreFooterVisualizationsLinks"),
            PreFooterCodeLinks: () => import( /* webpackPreload: true */ /*webpackChunkName: "pre-footer-links-code"*/ "./components/PreFooterCodeLinks"),
            FooterUSGS: () => import( /* webpackPreload: true */ /*webpackChunkName: "usgs-footer"*/ "./components/FooterUSGS") // Have Webpack put the footer in a separate chunk so we can load it conditionally (with a v-if) if we desire
        },
        data() {
            return {
                isInternetExplorer: false,
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

// IMPORT COLORS
$backgroundCharcoal: #141414; //#171717
$offWhite: rgb(241, 241, 241);
$monotoneBlue1: #e9eced;
$monotoneBlue2: #c3cccf;
$monotoneBlue3: #88989f;
$monotoneBlue4: #4c656e;
$monotoneBlue5: #285C70; //#10313e
$monotoneBlueTransparent: rgba(76,101,110, .6);

// Type
body {
      margin: 0;
      padding: 0;
      color: $offWhite;
      background-color: $backgroundCharcoal;
      line-height: 1.5;
      font-size: 13pt;
      font-family: 'Source Sans Pro', Helvetica, Arial, sans-serif;
      font-weight: 400;
      -webkit-font-smoothing: antialiased;
      -moz-osx-font-smoothing: grayscale;
      width: 100%;
  }
h1{
  font-size: 4em;
  font-weight: 100;
  @media screen and (max-width: 600px) {
    font-size: 3em;
  }
}

h2{
  font-size: 2em;
  margin-top: 80px;
  font-weight: 600;
  line-height: 1.7;
  @media screen and (max-width: 600px) {
    font-size: 1.2em;
  }

}
h3{
    font-size: 1.4em;
    padding-top: .5em;
    font-weight: 600;
    @media screen and (max-width: 600px) {
        font-size: 1em;
    }
}

// .section-title-wrapper{
//   padding: .5em 10px 0 10px;
//   background-color: $monotoneBlue5;
//   margin-top: 1em;
// }



  // General Layout  

  .text-content {
    min-width: 375px;
    max-width: 700px;
    margin: 0 auto;
    padding: 2em;   
    @media screen and (max-width: 600px) {
        padding: 10px;
    }  
  }

  .flex-container {
    display: flex;
    flex-wrap: wrap;
    align-items: flex-start;
    justify-content: space-evenly;
    align-content: space-around;
    max-width: 30%;
    margin: auto;
    @media screen and (max-width: 600px) {
        max-width: 100%;
    }
  }

  .flex-item {
    padding: 20px;
    min-width: 400px;
    flex: 0 0 auto;
    align-self: center;
   
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
    // padding: 0 100px;
    margin: auto;

    @media screen and (max-width: 600px) {
        padding: 0px; 
    }

  }
  .figure {
    display: block;
    padding: 20px;
  }

  .map {
    min-width: 400px;
    max-width: 700px;
    flex: 1 1 40%;

    @media screen and (max-width: 600px) {
        max-width: 300px;
    }

  }
  .chart {
    min-width: 600px;
    flex: 1 1 40%;
  }

  .matrix {
    min-width: 400px;
    flex: 1 1 40%;
  }

// Specific Design Elements for Charts and Maps

.viz-title-wrapper {
  margin: auto;
  width: 80%;
  max-width: 600px;
  padding: 10px 30px;
  z-index: 100;
  

}

.viz-title {
  font-size: 1.4em;
  font-weight: 600;
  text-align: center;
  color: $offWhite;
  box-shadow: -5px -5px $monotoneBlue5;
  line-height: 1.3em;
  padding-bottom: 0.5em;
}
.viz-subtitle {
  color: $monotoneBlue5; //$offWhite
  font-style: italic;
 font-size: .8em;
 text-align: center;
 font-weight: 100;
}

.legend-text {
    fill: #707070;
    font-family: 'Source Sans Pro', Helvetica, Arial, sans-serif;
    font-size: 16px;
  }
.explainer-minor-text {
    fill: #707070;
    font-family: 'Source Sans Pro', Helvetica, Arial, sans-serif;
    font-size: 1.2em;
  }
.viz-comment {
  font-family: 'Source Sans Pro', Helvetica, Arial, sans-serif;
  font-size: 26px;
  font-weight: 400;
  fill:rgb(224, 222, 222);
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
  background: linear-gradient(180deg,rgba(255,255,255,0) 60%, $monotoneBlueTransparent 40%);
  line-height: 1.3em;
  padding: 0 5px;
}

.dashed-axis {
  stroke: #4d4c4d;
  stroke-width: 3px;
  fill: none;
  stroke-miterlimit: 10;
  stroke-dasharray: 2 6;
}

.solid-axis {
  stroke: #4d4c4d;
  stroke-width: 1px;
  fill: none;
  stroke-miterlimit: 10;
}

.tick-marks {
  fill: none;
  stroke-miterlimit: 10;
  stroke: #707070;
  stroke-width: 0.75px;
}

  // .axis-title {
  //     font-size: 1.2em;
  //     font-family: SourceSansPro-Bold, Source Sans Pro;
  //     font-weight: 700;
  //     fill: white;
  // }

  // .axis-subtitle {
  //       font-family: SourceSansPro-Light, Source Sans Pro;
  //       font-weight: 300;
  //       fill: white;
  //       font-size: 1em;
  // }

</style>
