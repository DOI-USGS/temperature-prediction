<template id="modeling-template">
  <div id="modeling">
      <section id="scrolly">
        <h1 class="intro__hed">Modeling</h1>

        <div class="sticky">
          <div id="sticky-container">
          <h2 >I'm sticky</h2>
          </div>
          </div>
        <article>
          <div class="step-container">
          <div class="step" data-step="1">
            <p>yes</p>
          </div></div>
          <div class="step-container">
          <div class="step" data-step="2">
            <p>Yes</p>
          </div></div>
          <div class="step-container">
          <div class="step" data-step="3">
            <p>YES</p>
          </div></div>
          <div class="step-container">
          <div class="step" data-step="4">
            <p>YAASSSS!!!!</p>
          </div></div>
          <div class="step-container">
          <div class="step" data-step="5">
              </div></div>
          
        </article>
      </section>
      <section id="outro">
        <h2>bye</h2>
      </section>
      
  </div>
</template>

<script>
    import * as d3Base from "d3";
    import * as scrollama from 'scrollama';

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
          this.d3 = Object.assign(d3Base); // this loads d3 plugins with webpack
          this.setPanels(); //begin script when window loads
        },
        //methods are executed once, not cached as computed properties, rerun everytime deal with new step
        methods: {
          setPanels() {
            const self = this;
            // code to run on load
            // using d3 for convenience
            var scrolly = document.querySelector("#scrolly");
            var article = scrolly.querySelector("article");
            var step = article.querySelectorAll(".step");

            // initialize the scrollama
            var scroller = scrollama();

            // scrollama event handlers

            // add/remove class on enter/exit
            function handleStepEnter(response) {
              // response = { element, direction, index }
              console.log(response);
              // add to color to current step
              response.element.classList.add("is-active");
            }
            function handleStepExit(response) {
              // response = { element, direction, index }
              console.log(response);
              // remove color from current step
              response.element.classList.remove("is-active");
            }

            // track scroll progress 
            function handleStepProgress(response) {
              console.log(response.progress);
              var el = this.d3.select(response.element);

              var val = el.attr("data-step");
              var rgba = "rgba(" + val + ", " + response.progress + ")";
              el.style("background-color", rgba);
              el.select(".progress").text(d3.format(".1%")(response.progress));
            }

            // make scroller
            function init() {
              // set  padding for different step heights 
              step.forEach(function(step) {
                var v = 100;
                step.style.padding = v + "px 0px";
              });
              // 1. setup the scroller with the bare-bones options
              // 		this will also initialize trigger observations
              // 2. bind scrollama event handlers (this can be chained like below)
              scroller
                .setup({
                  step: "#scrolly article .step",
                  debug: false,
                  offset: 0.5
                })
                .onStepEnter(handleStepEnter)
                .onStepProgress(handleStepProgress)
                .onStepExit(handleStepExit);
              // 3. setup resize event
              window.addEventListener("resize", scroller.resize);
            }
            // kick things off
            init();

            function drawCircle() {

            }
          },
          callback(data) {
          // call functions
          },
          fadeIn(response) {
            response
            .transition()
            .duration(500)
            .attr("opacity", 1);
          },
          setScrolls() {
            
          }
        }
  }
</script>

<style scoped lang="scss">
#modeling, #modeling-template {
  background-color:black;
}

#scrolly {
        position: relative;
      }

      article {
        position: relative;
        margin: 0 auto;
        width: 100%;
      }
      .sticky {
        position: -webkit-sticky;
        position: sticky;
        top:20vh;
        height: 60vh;
        left: 0;
        margin: 0;
        color: white;
        width: 100%;
        z-index: 0;
        background-color: cadetblue;
    
      }
      .sticky h2 {
        text-align: center;
        position: relative;
        top: 40vh;

      }
      .step-container {
        width:100%;
      }
      .step {
        position: relative;
        width: 90%;
        margin: 50rem auto 4rem auto;
        color:black;
        z-index: 1;
        background-color: pink;
        opacity: .5;
        height: 50vh;
      }
      // can trigger attribute changes with .is-active
      .step.is-active {

      }
      .step.is-active[data-step="1"] {
        color:purple;
      }
       .step.is-active[data-step="2"] {
        color:yellow;
      }
       .step.is-active[data-step="3"] {
        color:turquoise;
      }
       .step.is-active[data-step="4"] {
        color:rgb(81, 173, 50);
        
      }
      .step:last-child {

        
      }
      .step p {
        text-align: center;
        padding: 1rem;
        font-size: 1.5rem;
      }
#outro {
  text-align: center;
  width: 100%;
  height: 400px;
}
</style>