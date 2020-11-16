<template id="modeling-template">
  <div id="modeling">
    <section id="scrolly">
      <h1 class="intro__hed">
        Modeling
      </h1>
      <p> so much to say here!!</p>

      <figure ref="figure" class="sticky">
        <div id="bees-container">
          <div id="progress-container">
          <p class="progress"/>
          </div>
        </div>
      </figure>
      <div id="button-container">
        <h4>Color By</h4>
        <button
          id="clear"
          class="cbutton active"
          @click="recolor('none')"
        >
          Clear
        </button>
        <button
          id="seg_id_nat"
          class="cbutton"
          @click="recolor('seg_id_nat')"
        >
          Segment
        </button>
        <button
          id="year"
          class="cbutton"
          @click="recolor('year')"
        >
          Data Year
        </button>
        <button
          id="month"
          class="cbutton"
          @click="recolor('month')"
        >
          Data Month
        </button>         
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
            <p>ANN</p>
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
          <p />
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
            height: 300,
            marginX: 20,
            marginY: 20,
            radius: 5,
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
            month: null
            
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
                  offset: 0.5,
                  progress: true,
                })
                .onStepEnter(this.handleStepEnter)
                .onStepProgress(this.handleStepProgress)
                .onStepExit(this.handleStepExit);

          // 3. setup resize event...
          this.resize();
          window.addEventListener("resize", this.resize);

          this.d3 = Object.assign(d3Base); // this loads d3 plugins with webpack
          this.paddedRadius = 7;
          
          this.getData(); //read in data and then draw chart

        },
        //methods are executed once, not cached as computed properties, rerun everytime deal with new step
        methods: {
          getData() {
            const self = this;

            let promises = [self.d3.csv(self.publicPath + "data/beeswarm_monthly_rmse_cast.csv")];
            Promise.all(promises).then(self.callback);

          },
          callback(data) {
            let rmse_monthly = data[0];
            
            // calculate value arrays for color coding ONCE here and then we're good forever
            this.seg_id_nat = [...new Set(rmse_monthly.map(item => item.seg_id_nat))];
            this.year = [...new Set(rmse_monthly.map(item => item.year))];
            this.month = [...new Set(rmse_monthly.map(item => item.month))];


            // BEGIN BREAK TESTING
            // get parameters of realistic data
                    var setOf_seg_id_nat = [...new Set(rmse_monthly.map(item => item.seg_id_nat))];
                    var setOf_year = [...new Set(rmse_monthly.map(item => item.year))];
                    var setOf_month = [...new Set(rmse_monthly.map(item => item.month))];
                    var setOf_n = [...new Set(rmse_monthly.map(item => item.n))];
                    var setOf_ANN = [...new Set(rmse_monthly.map(item => item.ANN))];
                    var setOf_RGCN = [...new Set(rmse_monthly.map(item => item.RGCN))];
                    var setOf_RGCN_ptrn = [...new Set(rmse_monthly.map(item => item.RGCN_ptrn))];
                    var setOf_RNN = [...new Set(rmse_monthly.map(item => item.RNN))];
                    var setOf_range = [...new Set(rmse_monthly.map(item => item.range))];

                    // random integer function
                    function getRandInt(max){
                      return Math.floor(Math.random() * Math.floor(max));
                    }

                    // Generate empty array for fake data to live in
                    let rmse_monthly_fake = [];

                    // set size of data HERE for testing
                    var size = 500;

                    // create loop that makes objects for the array of length "size" and selects a random occurence from the original data set.  Basically it's a shuffler more than a generator. 
                    for (var i=0; i<size; i++) {
                      rmse_monthly_fake[i] = {
                        seg_id_natL: setOf_seg_id_nat[getRandInt(setOf_seg_id_nat.length)],
                        year: setOf_year[getRandInt(setOf_year.length)],
                        month: setOf_month[getRandInt(setOf_month.length)],
                        n: setOf_n[getRandInt(setOf_n.length)],
                        ANN: setOf_ANN[getRandInt(setOf_ANN.length)], 
                        RGCN: setOf_RGCN[getRandInt(setOf_RGCN.length)],
                        RGCN_ptrn: setOf_RGCN_ptrn[getRandInt(setOf_RGCN_ptrn.length)],
                        RNN: setOf_RNN[getRandInt(setOf_RNN.length)],
                        range: setOf_range[getRandInt(setOf_range.length)]
                      }
                    }
                    console.log(rmse_monthly_fake, "fake!!")

                    // set the initial column read in to the beeswarm
                    var data_set = 'range';


            // END BREAK TESTING
            
            var model_list = ['ANN','RNN','RGCN','ANN', 'RNN', 'RGCN', 'RGCN_ptrn','RGCN_ptrn','ANN'];
            var data_set = model_list[this.step];
                    // THIS IS THE REAL LINE OF CODE! Recomment this back in to use real data
        // this.setChart(rmse_monthly, data_set);
        // INSTEAD, THIS IS THE FAKE CODE
        this.setChart(rmse_monthly_fake, data_set);


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
            
            // Set some forces
            var forceStrength = .3;
            var gravityStrength = 1;
            var friction = 0.6;
            var alpha = .12; // similar to "starting temperature", higher is hotter
            var alphaDecay = 0; // similar to "cool down rate", higher is faster
            var xForceStrength = 2;
            var yForceStrength = .05;
            var timeBeforeKill = 3000;

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
            .attr("stroke-width", 1.5)
            .attr("stroke", "#A3A0A6");
            
          //scale x axis
          this.xScale = this.d3.scaleLinear()
            .range([this.marginX, this.width - this.marginX])
            .domain([0,7]);

          //draw bees
          //use force to push each dot to x position
          this.bees.selectAll("dot")
            .data(data)
          .enter().append("circle").classed('dot', true)
            .attr("r", this.radius)
            .attr("fill", "orchid")
            .attr("opacity", .8)
            .attr('cx', function(d){return self.xScale(d[model]);})
            .attr('cy', function(d){return this.height/2;})

          //apply force to push dots towards central position on yaxis
          this.force_sim = this.d3.forceSimulation(data)
            .force('x', this.d3.forceX(function(d){
                return self.xScale(d[model])
              }).strength(xForceStrength)
            )
            .force('y', this.d3.forceY(this.height/2).strength(yForceStrength))	
            .force('collide', this.d3.forceCollide(this.paddedRadius).strength(1))
            // .force("charge", d3.forceManyBody().strength(gravityStrength))
            .alpha(alpha)
            .alphaDecay(alphaDecay)
            .velocityDecay(friction)
            .on('tick', self.tick);

            //add decay after set time to smoothly end transition

            this.init_decay = setTimeout(function(){
              console.log('init alpha decay')
              this.force_sim
                .alphaDecay(alphaDecay);
            }, timeBeforeKill);

            // add x axis
            this.bees.append("g")
              .attr("transform", "translate(0," + this.height + ")")
              .attr("stroke-width", "2px")
              .call(this.d3.axisBottom(self.xScale));

          },
          recolor(activeButton){
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

          },

          //update x position on scroll
          updateChart(data) {
            const self = this;
            // list models in order of transitions, use step index to select
            var model_list = ['ANN','RNN','RGCN','ANN', 'RNN', 'RGCN', 'RGCN_ptrn','RNN','ANN'];
            var color_list = ['pink','teal','lightgreen','goldenrod','orangered','cadetblue','orchid','blue','transparent'];
            var color_sel = color_list[data];
            var model_sel = model_list[data];

            this.force_sim.force('x', this.d3.forceX(function(d){
                return self.xScale(d[model_sel])
            }).strength(1))

            this.force_sim
              .alphaDecay(0.01)
              .alpha(0.12)
              .restart()
              .on('tick', self.tick);

            clearTimeout(this.init_decay);

            this.init_decay = setTimeout(function(){
              console.log('re-init alpha decay');
              this.force_sim.alphaDecay(0.1);
            }, 3000)

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
          //console.log(response.progress);
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

#button-container {
    z-index: 100;
    bottom: 0;
    position: -webkit-sticky;
    position: sticky;
    top: 85vh;
    .cbutton{
        display: inline-block;
        background-color: black;
        color: #DBDAD9;
        padding: 10px;
        margin:0 10px 10px 0;
        border:0.1em solid #DBDAD9;
        border-radius:0.12em;
        box-sizing: border-box;
        text-decoration:none;
        text-align:center;
        transition: all 0.2s;
        min-width: 110px;
        cursor: pointer;
        font-size: .8em;
    }
    .cbutton.active {
      background: #DBDAD9;
      color: #000000;
    }
    .cbutton:focus {
      outline: 0;
    }
    .cbutton:hover {
      color:#000000;
      background-color:#DBDAD9;
    }


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