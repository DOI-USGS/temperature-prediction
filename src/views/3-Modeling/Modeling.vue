<template id="modeling-template">
  <div id="modeling">
    <section id="scrolly">
      <h1 class="intro__hed">
        Modeling
      </h1>
      <p> so much to say here!</p>

      <div class="sticky">
        <div id="bees-container">
          <div id="progress-container">
          <p class="progress"/>
          </div>
        </div>
      </div>
      <article>
        <div class="step-container">
          <div
            class="step"
            data-step="1"
          >
            <p>Each dot is a monthly RMSE.</p>
          </div>
        </div>
        <div class="step-container">
          <div
            class="step"
            data-step="1"
          >
            <p>RMSE is one way to measure model error/accuracy. RMSE quantifies the distance between predicted and observed values.</p>
          </div>
        </div>
        <div class="step-container">
          <div
            class="step"
            data-step="1"
          >
            <p>Models with RMSE values closer to zero do better at predicting temeprature than models with higher RMSE.</p>
          </div>
        </div>
        <div class="step-container">
          <div
            class="step"
            data-step="2"
          >
            <p>Using an artificial neural network (ANN) we learn a lot, but there is always room for improvement.</p>
          </div>
        </div>
        <div class="step-container">
          <div
            class="step"
            data-step="3"
          >
            <p>RNN uses time.</p>
          </div>
        </div>
        <div class="step-container">
          <div
            class="step"
            data-step="4"
          >
            <p>RGCN adds space.</p>
          </div>
        </div>
        <div class="step-container">
          <div
            class="step"
            data-step="5"
          />
          <p>RGCN + pretraining</p>
        </div>
        <div class="step-container">
          <div
            class="step"
            data-step="6"
          />
          <p>and that's how we do it!</p>
        </div>
        <div class="step-container">
          <div
            class="step"
            data-step="7"
          />
          <p></p>
        </div>
      </article>
    </section>
    <section id="outro">
      <h2>bye</h2>
    </section>
  </div>
</template>

<script>
    import * as d3Base from "d3";
    import * as d3Force from "d3-force";
    import {geoScaleBar, geoScaleBottom, geoScaleTop, geoScaleKilometers, geoScaleMiles} from "d3-geo-scale-bar";
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
            margin: {top: 20, right: 20, bottom: 20, left: 20},
            width: null,
            height: null,
            radius: null,
            force_sim: null,
            x: null,
            
          }
        },
        mounted() {
          this.d3 = Object.assign(d3Base, { geoScaleBar, geoScaleBottom, geoScaleTop, geoScaleKilometers, geoScaleMiles }); // this loads d3 plugins with webpack
          this.setScroller(); //begin script when window loads
          
          this.width = 600 - this.margin.left - this.margin.right;
          this.height = 500 - this.margin.top - this.margin.bottom;
          this.radius = 5;
          
        },
        //methods are executed once, not cached as computed properties, rerun everytime deal with new step
        methods: {
          setScroller() {
            const self = this;

            let promises = [self.d3.csv(self.publicPath + "data/beeswarm_monthly_rmse_cast.csv")];
            Promise.all(promises).then(self.callback);

            // code to run on load
            // using d3 for convenience
            var scrolly = document.querySelector("#scrolly");
            var article = scrolly.querySelector("article");
            var step = article.querySelectorAll(".step");
            var sticky = document.querySelector(".sticky");

            // initialize the scrollama
            var scroller = scrollama();

            // make scroller
            function init() {

              // 1. setup the scroller and initialize trigger observations
              // 2. bind scrollama event handlers (this can be chained like below)
              scroller
                .setup({
                  step: "#scrolly article .step",
                  debug: false,
                  offset: 0.5
                })
                .onStepEnter(self.handleStepEnter)
                .onStepProgress(self.handleStepProgress)
                .onStepExit(self.handleStepExit);
              // 3. setup resize event
              window.addEventListener("resize", scroller.resize);
            }
            // kick things off
            init();
          },
          callback(data) {
            let rmse_monthly = data[0];
            var data_set = 'range';
            this.setChart(rmse_monthly, data_set);

          },
          // draw beeswarm/scatterplot
          setChart(data, model) {
            const self = this;

        // append svg
          var bees = this.d3.select("#bees-container").append("svg")
            .attr("viewBox", [0, 0, (this.width+this.margin.left+this.margin.right), (this.height+this.margin.top+this.margin.bottom)].join(' '))
            .attr("width", this.width)
            .attr("height", this.height)
            .attr("class", "bees dotPlot");

          bees.append("line", 'svg')
            .classed("main_line", true)
            .attr("x1", 0)
            .attr("y1", this.height/2)
            .attr("x2", this.width)
            .attr("y2", this.height/2)
            .attr("stroke-width", 1.5)
            .attr("stroke", "#A3A0A6");
            
          //scales
          this.x = this.d3.scaleLinear()
            .range([this.margin.left, this.width + this.margin.right])
            .domain([0,7]);

          //draw bees
          //use force to push each dot to x position
          bees.selectAll("dot")
            .data(data)
          .enter().append("circle").classed('dot', true)
            .attr("r", this.radius)
            .attr("fill", "orchid")
            .attr("opacity", .8)
            .attr('cx', function(d){return self.x(d[model]);})
            .attr('cy', function(d){return this.height/2;})

          //apply force to push dots towards central position on yaxis
          this.force_sim = this.d3.forceSimulation(data)
            .force('x', this.d3.forceX(function(d){
                return self.x(d[model])
              }).strength(5)
            )
            .force('y', this.d3.forceY(this.height/2).strength(0.01))	
            .force('collide', this.d3.forceCollide(this.radius).strength(0.5))
            .alphaDecay(0)
            .alpha(0.12)
            .on('tick', self.tick);

   /*        this.force_sim = this.d3.forceSimulation(data)
            .force('charge', this.d3.forceManyBody())
            .force('center', this.d3.forceCenter(this.width / 2, this.height / 2))
            .force('x', this.d3.forceX(d => d.x))
            .force('y', this.d3.forceY(d => d.y))
            .force('collide', this.d3.forceCollide(10))
            .alphaDecay(0)
            .alpha(0.22)
            .on('tick', self.tick); */

            //add decay after set time to smoothly end transition
            var init_decay; 
            init_decay = setTimeout(function(){
              console.log('init alpha decay')
              this.force_sim
                .alphaDecay(0.05);
            }, 3000);

            // add x axis
            bees.append("g")
              .attr("transform", "translate(0," + this.height + ")")
              .attr("stroke-width", "2px")
              .call(this.d3.axisBottom(self.x));

          },

          //update x position on scroll
          updateChart(data) {
            const self = this;
            // list models in order of transitions, use step index to select
            var model_list = ['range','range','range','ANN', 'RNN', 'RGCN', 'RGCN_ptrn','RGCN_ptrn','RGCN_ptrn'];
            var color_list = ['teal','teal','teal','goldenrod','orangered','cadetblue','orchid','blue','transparent'];
            var color_sel = color_list[data];
            var model_sel = model_list[data];

            this.force_sim
              .force('x', this.d3.forceX(function(d){
                return self.x(d[model_sel])
            }).strength(2))

            this.d3.selectAll(".dot")
              .transition()
                .duration(1000)
                .style('fill', color_sel)

          },
          tick() {
          const self = this;
          this.d3.selectAll(".dot")
            .attr('cx', function(d){return d.x})
            .attr('cy', function(d){return d.y})
        },
        // scrollama event handler functions

        // add class on enter
        handleStepEnter(response) {
          const self = this;
          // response = { element, direction, index }
          console.log(response);
           // changes css for class
          response.element.classList.add("is-active");

          //update number in sticky to show step number
          self.d3.select("#bees-container p")
          .text(response.index + 1);

          this.updateChart(response.index);

        },
        
        // add remove class on exit
        handleStepExit(response) {
          const self = this;
          // response = { element, direction, index }
          console.log(response);
          // changes css for class
          response.element.classList.remove("is-active");
        },
        // track scroll progress - not returning anything?
        handleStepProgress(response) {
          console.log(response.progress);
        }
      }
  }
  
</script>

<style scoped lang="scss">
#modeling, #modeling-template {
  text-align: center;
}
#progress-container {
  position: relative;
  width:80%;
  height: 30px;
  margin-left:10%;
  line-height: 2em;
}
.progress {
  position: relative;
  background-color:transparent;
  top:1%;
  left:50%;
  font-size: .51em;
  line-height: 1em;
  color: red;
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
  padding: 1em;
  left: 0;
  margin: 0;
  color: white;
  width: 100vw;
  z-index: 0;

}
.sticky h2 {
  text-align: center;
  position: relative;
  top: 40vh;
}
.step-container {
  width:100vw;
}
.step {
  position: relative;
  width: 90%;
  margin: 50rem auto 4rem auto;
  color:white;
  z-index: 1;
  height: 50vh;
}

// can trigger attribute changes with .is-active
.step.is-active {
  color: orange;
}

// could add changes by step here
.step.is-active[data-step="1"] {
}
.step.is-active[data-step="2"] {
}
.step.is-active[data-step="3"] {
}
.step.is-active[data-step="4"] {
}
.step.is-active[data-step="7"] {
  margin-bottom: 600px;
}
.step:last-child {
  margin-bottom: 600px;
}


.step p {
  text-align: center;
  padding: 1rem;
  font-size: 2.5rem;
}
#outro {
  text-align: center;
  width: 100%;
  height: 400px;
}
#bees-container {
  position: absolute;
  width: 90%;
  height: 80%;
  left: 5%;
  top: 10%;

}
</style>