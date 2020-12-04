<template id="modeling-template">
  <div id="modeling">
    <section id="scrolly">
      <h1 class="intro__hed">
        Modeling
      </h1>
      <p class="text-intro">Artifical neural networks, which are a form of deep learning, have had huge success in identifying complex relationships and making accurate predictions.</p>

      <figure
        ref="figure"
        class="sticky"
      >
        <div id="bees-container">
          <div id="legend-container">
          </div>
        </div>
      </figure>

      <article>
        <div class="step-container">
          <div
            class="step"
            data-step="1"
          >
            <p>ANN</p>
          </div>
        </div>
        <div class="step-container">
          <div
            class="step"
            data-step="1"
          >
            <p>RNN</p>
          </div>
        </div>
        <div class="step-container">
          <div
            class="step"
            data-step="1"
          >
            <p>RGCN</p>
          </div>
        </div>
        <div class="step-container">
          <div
            class="step"
            data-step="2"
          >
            <p>RGCN_ptrn</p>
          </div>
        </div>
        <div class="step-container">
          <div
            class="step"
            data-step="3"
          >
            <!-- <p>RNN uses time.</p> -->
          </div>
        </div>
        <div class="step-container">
          <div
            class="step"
            data-step="4"
          >
            <!-- <p>RGCN adds space.</p> -->
          </div>
        </div>
        <div class="step-container">
          <div
            class="step"
            data-step="5"
          />
          <!-- <p>RGCN + pretraining</p> -->
        </div>
        <div class="step-container">
          <div
            class="step"
            data-step="6"
          />
         <!--  <p>and that's how we do it!</p> -->
        </div>
        <div class="step-container">
          <div
            class="step"
            data-step="7"
          />
          <p></p>
        </div>
      </article>
      <div id="map-container">
     <img src="@/assets/usa_hex_map_80-01.png" />
     </div>

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
            margin: 20,
            width: 400,
            height: 500,
            marginX: 20,
            marginY: 20,
            radius: 4,
            force_sim: null,
            bees: null,
            xScale: null,
            scroller: scrollama(), 
            step: 0,
            progress: 0,
            model_sel: null,
            init_decay: null,
            activeButton: null,
            seg_id_nat: null,
            year: null,
            month: null,
            color: null,

                        // Set some forces
            forceStrength: .3,
            gravityStrength: 5,
            friction: 0.6,
            alpha: .2, // similar to "starting temperature", higher is hotter
            alphaDecay: .5, // similar to "cool down rate", higher is faster
            xForceStrength: 2,
            yForceStrength: .07,
            timeBeforeKill: 1000,
            exp_color: ["gold", "darkmagenta"],
            
          }
        },
         watch: {
          activeButton: {
            deep: true,
            handler() {this.recolor(); }
          }
        },
        mounted() {
          this.scroller.setup({
                  step: "#scrolly article .step",
                  debug: false,
                  offset: 0.9,
                  progress: true,
                })
                .onStepEnter(this.handleStepEnter)
                .onStepProgress(this.handleStepProgress)
                .onStepExit(this.handleStepExit);
          // 3. setup resize event...
          this.resize();
          window.addEventListener("resize", this.resize);
          this.d3 = Object.assign(d3Base); // this loads d3 plugins with webpack
          this.paddedRadius = 5;
          
          this.getData(); //read in data and then draw chart
        },
        //methods are executed once, not cached as computed properties, rerun everytime deal with new step
        methods: {
          getData() {
            const self = this;
            let promises = [self.d3.csv(self.publicPath + "data/rmse_monthly_experiments.csv")];
            Promise.all(promises).then(self.callback);
          },
          callback(data) {
            let rmse_monthly = data[0];
            
            // calculate value arrays for color coding ONCE here and then we're good forever
            this.seg_id_nat = [...new Set(rmse_monthly.map(item => item.seg_id_nat))];
            this.year = [...new Set(rmse_monthly.map(item => item.year))];
            this.month = [...new Set(rmse_monthly.map(item => item.month))];
            
            var model_list = ['ANN','RNN','RGCN','RGCN_ptrn','ANN', 'RNN', 'RGCN', 'RGCN_ptrn','ANN'];

            var data_set = model_list[this.step];
            this.setChart(rmse_monthly, data_set);
          },
          // resize to keep scroller accurate
          resize () {
            const self = this;
            const bounds = this.$refs.figure.getBoundingClientRect()
            this.width = bounds.width
            this.height = bounds.height
            this.marginX = bounds.width * 0.1
            this.marginY = bounds.height * 0.1
            this.scroller.resize()
          },
          // draw beeswarm/scatterplot
          setChart(data, model) {
            const self = this;

        // append svg
          this.bees = this.d3.select("#bees-container").append("svg")
            .attr("viewBox", [0, 0, (this.width+this.marginX+this.marginX), (this.height+this.marginY+this.marginY)].join(' '))
            .attr("width", this.width)
            .attr("height", this.height)
            .attr("class", "bees_dotPlot");

          this.bees.append("line", 'svg')
            .classed("main_line", true)
            .attr("x1", this.marginX)
            .attr("y1", this.height/2)
            .attr("x2", this.width-this.marginX)
            .attr("y2", this.height/2)
            .attr("opacity", 0)
            .attr("stroke-width", 1.5)
            .attr("stroke", "#A3A0A6");

          //use color scale for experiment
            let experiments = Array.from(new Set(data.map((d) => d.experiment)));
            let color = this.d3.scaleOrdinal().domain(experiments).range(this.exp_color);
            var keys = ["1%", "100%"];

            this.legend = this.d3.select("#legend-container").append("svg")
              .attr("viewBox", [0, 0, 200, 200])
              .attr("width", 100)
              .attr("height", 100)
              .attr("class", "bees_legend");

            //create color legend
            this.legend.selectAll("mydots")
              .data(keys)
              .enter()
              .append("circle")
                .attr("cx", 100)
                .attr("cy", function(d, i){ return 100 + i*50})
                .attr("r", 8)
                .style("fill", function(d){return color(d)});
          
          this.legend.selectAll("mylabels")
            .data(keys)
            .enter()
            .append("text")
              .attr("x", 120)
              .attr("y", function(d,i){ return 100 + i*50})
              .style("fill",  function(d){ return color(d)})
              .text(function(d){ return d})
              .attr("text-anchor", "left")
              .attr("font-size", "50px")
              .style("alignment-baseline", "middle");

          //scale x axis
          this.xScale = this.d3.scaleLinear()
            .range([this.marginX, this.width - this.marginX])
            .domain([0,10]);


          //draw bees
          //use force to push each dot to x position
          this.bees.selectAll("dot")
            .data(data)
          .enter().append("circle").classed('dot', true)
            .attr("r", this.radius)
            .attr("fill", (d) => color(d.experiment))
            .attr("opacity", .8)
            .attr('cx', function(d){return self.xScale(d[model]);})
/*             .attr('cy', function(d){return this.height/2;}) */

          //apply force to push dots towards central position on yaxis
          this.force_sim = this.d3.forceSimulation(data)
            .force('x', this.d3.forceX(function(d){
                return self.xScale(d[model])
              }).strength(this.xForceStrength)
            )
            .force('y', this.d3.forceY(this.height/2).strength(this.yForceStrength))	
            .force('collide', this.d3.forceCollide(this.paddedRadius).strength(1))
            .alpha(this.alpha)
            .alphaDecay(this.alphaDecay)
            .velocityDecay(this.friction)
            .on('tick', self.tick);

            //add decay after set time to smoothly end transition
            this.init_decay = setTimeout(function(){
              console.log('init alpha decay')
              this.force_sim
                .alphaDecay(this.alphaDecay);
            }, this.timeBeforeKill);
            // add x axis
            this.bees.append("g")
              .attr("transform", "translate(0," + this.height + ")")
              .attr("stroke-width", "2px")
              .attr("opacity", 0)
              .call(this.d3.axisBottom(self.xScale));
          },
/*           recolor(activeButton){
            const self = this;
            var transitionTime = 1000; // how long it takes for the color to change
            // BUTTON FUNCTIONALITY
            // select the button with class "active"
            var prevButton = this.d3.select(".active");
            // remove active class from all buttons
            this.d3.selectAll('.cbutton').classed('active', false);
            // Find the button just clicked and give it a class "active"
            this.d3.select("#"+activeButton).classed('active', true);
            // MAKE COLOR RAMPS
            var interpolateColors = this.d3.scaleSequential(this.d3.interpolateWarm);
            //interpolate the color scale to have that many stops
            var colorScale = this.d3.scaleOrdinal((this.d3.schemePastel2));  // This is the one currently hooked up, and it's not really working properly right now. 
            // RECOLORING THE CHART
            if(activeButton == "none") {
              this.d3.selectAll(".dot")
                .transition()
                .duration(transitionTime/5)
                .style('fill', "white");
            } else if (activeButton == "seg_id_nat" || "year" || "month") {
              console.log("color me by", activeButton, "and here's the data", this[activeButton]);
              interpolateColors.domain(this[activeButton])
              this.d3.selectAll(".dot")
                .transition()
                .duration(transitionTime/5)
                .style('fill', function(d) { return interpolateColors(d[activeButton])});
            } 
          }, */
          //update x position on scroll
          updateChart(data) {
            const self = this;
            // list models in order of transitions, use step index to select
            var model_list = ['ANN','RNN','RGCN','RGCN_ptrn','ANN', 'RNN', 'RGCN', 'RGCN_ptrn','ANN'];
           /*  var color_list = ['pink','teal','orangered','goldenrod','orangered','cadetblue','orchid','blue','transparent'];
            var color_sel = color_list[data]; */
            var model_sel = model_list[data];

            self.force_sim
              .force('x', this.d3.forceX(function(d){
                return self.xScale(d[model_sel])
              }).strength(1))

            this.force_sim
              .alphaDecay(0.01)
              .alpha(0.12)
              .restart()
              .on('tick', self.tick);
            
            this.init_decay = setTimeout(function(){
              console.log('re-init alpha decay');
              this.force_sim.alphaDecay(0.7);
            }, 1000)

            clearTimeout(this.init_decay);

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

          if(response.index === 0){

            this.d3.select(".main_line")
              .attr("opacity", 1)
          } /* else {
            this.d3.select(".xaxis")
              .attr("opacity", 1)
          } */

          //update number in sticky to show step number
          //self.d3.select("#bees-container p")
          //.text(response.index + 1);

          //change chart data w/ transition
          this.updateChart(response.index);
          this.scroller.resize();

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
          //console.log(response.progress);
        }
    }
  }
</script>
<style scoped lang="scss">
#modeling, #modeling-template {
  text-align: center;
}
#map-container {
  height: 100vh;
  padding: 5vw;
}
#legend-container {
  position: relative;
  width:100%;
  height: 50px;
  left: 190px;
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
  margin: 2rem auto 4rem auto;
  z-index: 1;
  height: 50vh;

  p {
    padding: 2vw;
  }
}

.text-intro {
  position: relative;
  width: 90%;
  margin: 2rem auto 1rem auto;
  z-index: 1;
  height: 50vh;

  p {
    padding: 2vw;
  }
}

// can trigger attribute changes with .is-active
.step.is-active {

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