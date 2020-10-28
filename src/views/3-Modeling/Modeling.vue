<template>
  <div id="modeling">
      <section id="intro">
        <h1 class="intro__hed">Modeling</h1>
        <p class="intro__dek">
          yesssssssss
        </p>
      </section>
      <section id="scrolly">
        <div class="sticky">
          <h2>I'm sticky ;)</h2>
          </div>
        <article>
          <div class="step" data-step="1">
            <p>yes</p>
          </div>
          <div class="step" data-step="2">
            <p>Yes</p>
          </div>
          <div class="step" data-step="3">
            <p>YES</p>
          </div>
          <div class="step" data-step="4">
            <p>YAASSSS!</p>
          </div>
        </article>
      </section>
      <section id="outro"></section>
      
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
                  offset: 0.3
                })
                .onStepEnter(handleStepEnter)
                .onStepExit(handleStepExit);
              // 3. setup resize event
              window.addEventListener("resize", scroller.resize);
            }
            // kick things off
            init();
          },
          callback(data) {
          // call functions
          },
           
          setScrolls() {
            
          }
        }
  }
</script>

<style scoped lang="scss">
#scrolly {
        position: relative;
      }
      article {
        position: relative;
        padding: 0 1rem;
        margin: 0 auto;
        width: 95%;
      }
      .sticky {
        position: -webkit-sticky;
        position: sticky;
        top:0;
        background-color: pink;
        height: 500px;
        padding: 100px;
        width: 100%;
    
      }
      .step {
        margin: 2rem auto 4rem auto;
        background-color: #3b3b3b;
        color:#3b3b3b;
        opacity: .5;
      }
      .step.is-active[data-step="1"] {
        background-color: purple;
        color:violet;
      }
       .step.is-active[data-step="2"] {
        background-color: orangered;
        color:yellow;
      }
       .step.is-active[data-step="3"] {
        background-color: forestgreen;
        color:turquoise;
      }
       .step.is-active[data-step="4"] {
        background-color: navy;
        color:rgb(49, 234, 240);
        
      }
      .step p {
        text-align: center;
        padding: 1rem;
        font-size: 1.5rem;
      }
</style>