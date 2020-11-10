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
          <p class="progress"> </p>
          </div>
        </div>
      </div>
      <article>
        <div class="step-container">
          <div
            class="step"
            data-step="1"
          >
            <p>yes</p>
          </div>
        </div>
        <div class="step-container">
          <div
            class="step"
            data-step="2"
          >
            <p>Yes</p>
          </div>
        </div>
        <div class="step-container">
          <div
            class="step"
            data-step="3"
          >
            <p>YES</p>
          </div>
        </div>
        <div class="step-container">
          <div
            class="step"
            data-step="4"
          >
            <p>YAASSSS!!!!</p>
          </div>
        </div>
        <div class="step-container">
          <div
            class="step"
            data-step="5"
          />
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
            
          }
        },
        mounted() {
          this.d3 = Object.assign(d3Base, { geoScaleBar, geoScaleBottom, geoScaleTop, geoScaleKilometers, geoScaleMiles }); // this loads d3 plugins with webpack
          this.setScroller(); //begin script when window loads
          
          this.width = 600 - this.margin.left - this.margin.right;
          this.height = 300 - this.margin.top - this.margin.bottom;
          this.radius = 5;
          
        },
        //methods are executed once, not cached as computed properties, rerun everytime deal with new step
        methods: {
          setScroller() {
            const self = this;

            let promises = [self.d3.csv("data/test.csv"),
            self.d3.csv(self.publicPath + "data/beeswarm_monthly_rmse_cast.csv")];

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
              // set  padding for step heights 
              step.forEach(function(step) {
                var v = 100;
                step.style.padding = v + "px 0px";
              });
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
            let csv_test = data[0];
            let rmse_monthly = data[1];

            this.setChart(rmse_monthly);

            var mappedArray = rmse_monthly.columns;
            var currentCol = mappedArray[4];
            console.log(currentCol);

          },
          // draw beeswarm/scatterplot
          setChart(data) {
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
            

          //transform svg
          //let g = bees.append("g")
           // .attr("class", "bees transDotPlot")
           // .attr("transform", "translate(" + this.margin.left + "," + this.margin.top + ")");

          //scales
          var x = this.d3.scaleLinear().range([0, this.width]).domain(this.d3.extent(data, function(d) { return d.ANN; }));
          //var y = this.d3.scaleLinear().range([this.height, 0]).domain([0, this.d3.max(data, function(d) { return 1; })]);

          var data_set = 'ANN';

          //draw bees
          bees.selectAll("dot")
            .data(data)
          .enter().append("circle").classed('dot', true)
            .attr("r", this.radius)
            .attr("fill", "orchid")
            .attr("opacity", .8)
            .attr('cx', function(d){return x(d[data_set]);})
            .attr('cy', function(d){return this.height/2;})
            .on('click', function(d){
              self.highlight(d)
            });

          var simulation = this.d3.forceSimulation(data)
            .force('x', this.d3.forceX(function(d){
                return x(d[data_set])
              }).strength(0.99)
            )
            .force('y', this.d3.forceY(this.height/2).strength(0.05))	
            .force('collide', this.d3.forceCollide(this.radius))
            .alphaDecay(0)
            .alpha(0.12)
            .on('tick', self.tick)



          // add x axis
          bees.append("g")
            .attr("transform", "translate(0," + this.height + ")")
            .attr("stroke-width", "2px")
            .call(this.d3.axisBottom(x));

          // add y axis
          //bees.append("g")
          //  .attr("stroke-width", "0px")
          //  .call(this.d3.axisLeft(y).ticks(0));
           
          },
          // idea is to highlight point on click to track them through movement, don't know how to self select
          highlight(data) {
            this.d3.selectAll(".dot" + data.i)
              .attr('stroke','yellow')
              .style('stroke-width',2)
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

          var pretty = ["orangered", "pink", "cyan", "yellow", "green"];
          var rgb = pretty[response.index];

          // change dot color on scroll step
          self.d3.selectAll(".dot")
          .transition()
          .duration(800)
          .attr('fill', rgb);

          let beesFly = [this.flyA, this.flyB, this.flyC, this.flyD, this.flyE];
          beesFly[response.index]();

          console.log(beesFly[response.index]);


          
        },
        tick() {
          this.d3.selectAll(".dot")
            .attr('cx', function(d){return d.x})
            .attr('cy', function(d){return d.y})
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
        },
        flyA() {
          this.d3.selectAll(".dot")
            .transition()
              .duration(3000)
              .attr("cx", function(d) { return d.ANN; })
        },
        flyB() {
          this.d3.selectAll(".dot")
            .transition()
              .duration(3000)
              .attr("cx", function(d) { return d.RNN; })
        },
        flyC() {
          this.d3.selectAll(".dot")
            .transition()
              .duration(3000)
              .attr("cx", function(d) { return d.RGCN; })
        },
        flyD() {
          this.d3.selectAll(".dot")
            .transition()
              .duration(3000)
              .attr("cx", function(d) { return d.RGCN_ptrn; })
        },
        flyE() {
          this.d3.selectAll(".dot")
            .transition()
              .duration(3000)
              .attr("cx", function(d) { return d.RGCN_ptrn; })
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
.step:last-child {
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