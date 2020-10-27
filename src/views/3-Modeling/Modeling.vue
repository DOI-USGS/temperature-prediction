<template>
  <div id="modeling">
      <div class="text-content">
        <h2>Modeling!!!</h2>
        <p>💥BOOM💥 that's right! We've made it to Chapter 3 where we're gonna do all sorts of wild stuff.</p>
        <p>Ta ta for now 👋</p>
      </div>
      
  </div>
</template>

<script>
    import * as d3Base from "d3";
    // polyfill for IntersectionObserver
    import 'intersection-observer';
    import scrollama from 'scrollama';

  export default {
    name: 'Modeling',
    components: {
    },
    data() {
          return {
            publicPath: process.env.BASE_URL, // this is need for the data files in the public folder, this allows the application to find the files when on different deployment roots
            d3: null, // this is used so that we can assign d3 plugins to the d3 instance
            // global variables instantiated in next section
          }
        },
        mounted() {
          this.d3 = Object.assign(d3Base, { geoScaleBar, geoScaleBottom, geoScaleTop, geoScaleKilometers, geoScaleMiles }); // this loads d3 plugins with webpack

          this.setPanels(); //begin script when window loads
          this.setScrolls();
        },
        //methods are executed once, not cached as computed properties, rerun everytime deal with new step
        methods: {

          setPanels() {
            const self = this;
            //code to run on load
             
          },
          callback(data) {
          // call functions
            this.setScrolls();

          },
           
          setScrolls() {
            
          }
        }
  }
</script>

<style scoped lang="scss">

</style>
