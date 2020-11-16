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
           <!--  <p>Each dot is a monthly RMSE.</p> -->
          </div>
        </div>
        <div class="step-container">
          <div
            class="step"
            data-step="1"
          >
            <!-- <p>RMSE is one way to measure model error/accuracy. RMSE quantifies the distance between predicted and observed values.</p> -->
          </div>
        </div>
        <div class="step-container">
          <div
            class="step"
            data-step="1"
          >
            <!-- <p>Models with RMSE values closer to zero do better at predicting temeprature than models with higher RMSE.</p> -->
          </div>
        </div>
        <div class="step-container">
          <div
            class="step"
            data-step="2"
          >
            <!-- <p>ANN</p> -->
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
            padding: null,
            xScale: null,
            scroller: scrollama(), 
            step: 0,
            progress: 0,
            model_sel: null,
            init_decay: null,
            circles: null,
            rmse_monthly: null,
            rmse_monthly_fake: null
            
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
            this.rmse_monthly = data[0];
            this.rmse_monthly_fake = [];
            var model_list = ['ANN','RNN','RGCN','ANN', 'RNN', 'RGCN', 'RGCN_ptrn','RGCN_ptrn','ANN'];
            this.model_sel = model_list[this.step];

            // BEGIN BREAK TESTING
            // get parameters of realistic data
            var setOf_seg_id_nat = [...new Set(this.rmse_monthly.map(item => item.seg_id_nat))];
            var setOf_year = [...new Set(this.rmse_monthly.map(item => item.year))];
            var setOf_month = [...new Set(this.rmse_monthly.map(item => item.month))];
            var setOf_n = [...new Set(this.rmse_monthly.map(item => item.n))];
            var setOf_ANN = [...new Set(this.rmse_monthly.map(item => item.ANN))];
            var setOf_RGCN = [...new Set(this.rmse_monthly.map(item => item.RGCN))];
            var setOf_RGCN_ptrn = [...new Set(this.rmse_monthly.map(item => item.RGCN_ptrn))];
            var setOf_RNN = [...new Set(this.rmse_monthly.map(item => item.RNN))];
            var setOf_range = [...new Set(this.rmse_monthly.map(item => item.range))];

            // random integer function
            function getRandInt(max){
              return Math.floor(Math.random() * Math.floor(max));
            }
            // Generate empty array for fake data to live in
  
            // set size of data HERE for testing
            var size = 1000;

            // create loop that makes objects for the array of length "size" and selects a random occurence from the original data set.  Basically it's a shuffler more than a generator. 
            for (var i=0; i<size; i++) {
              this.rmse_monthly_fake[i] = {
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
            console.log(this.rmse_monthly, "real")
            console.log(this.rmse_monthly_fake, "fake!!")



             // END BREAK TESTING
           
            // Original data call, Uncomment this once we're done testing
            // this.setChart(this.rmse_monthly, this.model_sel);

            // FAKE DATA CALL! Delete this line once we're done testing
            this.setChart(this.rmse_monthly_fake, this.model_sel);

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
            .attr("class", "bees-dotPlot");
            
          //scale x axis
          this.xScale = this.d3.scaleLinear()
            .range([this.marginX, this.width - this.marginX])
            .domain([0,7]);

           // add x axis
          this.bees.append("g")
              .attr("transform", "translate(0," + this.height + ")")
              .attr("stroke-width", "2px")
              .call(this.d3.axisBottom(self.xScale));

          //draw bees and use dodge function to position vertically in stack
          this.bees.selectAll("dot")
            .data(this.dodge(data, this.radius * 2 + this.padding, this.model_sel))
          .join("circle").classed('dot', true)
            .attr("r", this.radius)
            .attr("fill", "teal")
            .attr("opacity", .8)
            .attr('cx', d => d.x)
            .attr('cy', d => this.height - this.marginY -this.padding - this.padding - d.y)

          },
          // to rearrange overlapping dots
          dodge(data, radius, model) {
             const self = this;
            const radius2 = this.radius ** 3;

            /* //swap x var to set dodge
            if (model === 'ANN') {
              this.circles = data.map(d => ({x: this.xScale(d['ANN']), data: d})).sort((a,b) => a.x - b.x);
            } 
            if (model === 'RNN') {
              this.circles = data.map(d => ({x: this.xScale(d['RNN']), data: d})).sort((a,b) => a.x - b.x);
            } 
            if (model === 'RGCN') {
              this.circles = data.map(d => ({x: this.xScale(d['RGCN']), data: d})).sort((a,b) => a.x - b.x);
            } 
            if (model === 'RGCN_ptrn') {
              this.circles = data.map(d => ({x: this.xScale(d['RGCN_ptrn']), data: d})).sort((a,b) => a.x - b.x);
            }  */

            //need to make this line universal so the dataset can be changed on scroll
            this.circles = data.map(d => ({x: this.xScale(d[model]), data: d})).sort((a,b) => a.x - b.x);

            const epsilon = 1e-3;
            let head = null, tail = null;

            function intersects(x,y) {
              let a = head;
              while (a) {
                if (radius2 - epsilon > (a.x - x) ** 2 + (a.y - y) ** 2) {
                  return true;
                }
                a = a.next;
              }
              return false;
            }

            for (const b of this.circles) {
              // Remove circles from the queue that can’t intersect the new circle b.
              while (head && head.x < b.x - radius2) head = head.next;
              // Choose the minimum non-intersecting tangent.
              if (intersects(b.x, b.y = 0)) {
                let a = head;
                b.y = Infinity;
                do {
                  let y = a.y + Math.sqrt(radius2 - (a.x - b.x) ** 2);
                  if (y < b.y && !intersects(b.x, y)) b.y = y;
                  a = a.next;
                } while (a);
              }
              // Add b to the queue.
              b.next = null;
              if (head === null) head = tail = b;
              else tail = tail.next = b;
            }
            return this.circles;
          },
          
          //update x position on scroll
          updateChart(data) {
            const self = this;
            // list models in order of transitions, use step index to select
            var model_list = ['ANN','RNN','RGCN','ANN', 'RNN', 'RGCN', 'RGCN_ptrn','RNN','ANN'];
            var color_list = ['pink','teal','lightgreen','goldenrod','orangered','cadetblue','orchid','blue','transparent'];
            var color_sel = color_list[data];
            this.model_sel = model_list[data];

          //move bees to new position
            this.d3.selectAll(".dot")
              .data(this.dodge(this.rmse_monthly_fake, this.radius * 2 + this.padding, this.model_sel))
              .transition()
                .duration(1000)
                .attr('cx', d => d.x)
                .attr('cy', d => this.height - this.marginY -this.padding - this.padding - d.y)
                .style('fill', color_sel)
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

          //change chart data w/ transition
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