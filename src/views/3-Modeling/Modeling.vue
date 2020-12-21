<template>
  <div id="modeling">
    <div
      id="intro-container"
      class="text-content"
    >
      <h2>Modeling!</h2>
    </div>
    <!--  figure contains all the sticky elements -->
    <figure
      ref="figure"
      class="sticky"
    >
      <div id="flubber-container">
          <svg
            id="flubber"
            xmlns="http://www.w3.org/2000/svg"
            width="100%"
            height="100%"
          >
            <g
              id="Path1"
              style="stroke: orangered"
            >
              <path
                id="river"
                class="step_1"
                d="M4.4,166.9.5,166c.8-3,18.3-72.2,59.7-83.5,20.4-5.6,43,4.1,67,28.7l-2.9,2.8c-22.9-23.5-44.1-32.8-63-27.7C22.1,97,4.6,166.2,4.4,166.9Z"
              />
              <path
                id="river"
                class="step_2"
                d="M145.4,126.3c-9-18.1-21.7-20.5-35.2-23-9.1-1.7-15.9-3.1-23.8-9.9-6.1-5.3-7.9-15.4-9.5-27.2-1.4-10.1-2.2-19.7-7.4-35.4l6.5-6c5.3,16.1,7.1,28.8,8.5,39.1S87,82.6,92,86.9c7.1,6.1,15.6,7.7,24.5,9.4,13.9,2.6,28.2,5.3,38.1,25.1Z"
              />
              <path
                id="river"
                class="step_3"
                d="M46,59.8A13.2,13.2,0,0,1,33,73.2,13.3,13.3,0,0,1,19.9,59.8c0-7.4,10.7-15.9,13.1-30.1C35.3,43.6,46,52.4,46,59.8Z"
              />
            </g>
            <g
              id="Path2"
              style="stroke: teal"
            >
              <path
                id="river"
                class="step_1"
                d="M190.1,153.1c-19.1,0-41.2-13.2-65.8-39.2l2.9-2.7c26.6,28.1,49.8,40.7,69.1,37.3,24.5-4.3,37-33.1,43.8-48.6a74.9,74.9,0,0,1,3.6-7.7l3.4,2c-.8,1.5-2,4.1-3.4,7.3-7,16.2-20.1,46.3-46.7,51A40.2,40.2,0,0,1,190.1,153.1Z"
              />
              <path
                id="river"
                class="step_2"
                d="M182.9,242.6l-22.4-.3c.2-2.5,4.3-52.3-16.9-72.3-12.8-12-9.3-54.9-5.5-67,5-15.7,19.9-15.1,18-27.4-1.4-9.2-25.2-28.1-21.8-47.1C136.1,18,139,12.1,144.4,5.7l18.2,4.1c-5.5,6.4-8,11.6-8,20.6,0,16.1,12.4,23.1,21.1,38.9,3.3,6,2.4,16.3-12.1,32.1-8.7,9.4-12.7,44.8.7,57C187,178.9,183.2,240.3,182.9,242.6Z"
              />
              <path
                id="river"
                class="step_3"
                d="M18.1,222.9l-7.3-51c93.1-8.5,91.3,16,153.3,6.4,22.8-5.5-2.2-44.2-3.1-64.6-2.1-47.9,19.8-75.7,72.4-85.5V67.3c-32.6-1.3-39.1,35.6-23.2,69.8,15.2,32.5,19.9,63.3,2.8,84.3S87.1,208.7,18.1,222.9Z"
              />
            </g>
            <g
              id="Path3"
              style="stroke: orangered"
            >
              <path
                id="other"
                class="step_1"
                d="M78.6,84.4a5.5,5.5,0,1,0,11,0C89,76.9,79,77.5,78.6,84.4Z"
              />
              <path
                id="other"
                class="step_2"
                d="M157.1,209a5.5,5.5,0,0,0,10.9,0c-.5-7.6-10.5-7-10.9,0"
              />
              <path
                id="other"
                class="step_3"
                d="M126.6,53V49.9H109.3a16.6,16.6,0,0,0-3.2-9.4l11.8-11.7-2.2-2.2L104,38.1a15.7,15.7,0,0,0-9.7-4.2V17.6h-3V33.9a16.5,16.5,0,0,0-9.6,4.2L70,26.4l-2.2,2.2L79.7,40.4a17.4,17.4,0,0,0-3.4,9.5H59V53H76.5a15.3,15.3,0,0,0,4.2,8.4L67.8,74.2l2.1,2.2L83,63.4a17.5,17.5,0,0,0,8.3,3.3V85.3h3V66.7a16.8,16.8,0,0,0,8.4-3.2l12.9,13,2.2-2.2L104.9,61.4a16.8,16.8,0,0,0,4.2-8.4Z"
              />
            </g>
            <g
              id="Path4"
              style="stroke: orangered"
            >
              <path
                id="other"
                class="step_1"
                d="M121.7,114.5c.2,7.2,10.4,7.5,10.9,0A5.5,5.5,0,0,0,121.7,114.5Z"
              />
              <path
                id="other"
                class="step_2"
                d="M156.1,50.3c.2,7.2,10.4,7.5,10.9,0s-10.5-6.9-10.9,0"
              />
              <path
                id="other"
                class="step_3"
                d="M65.4,212h3.5l-7.7,7-7.9-7h4.4V177.5H53.8l7.7-7,7.9,7h-4Z"
              />
            </g>
            <g
              id="Path5"
              style="stroke: teal"
            >
              <path
                id="other"
                class="step_1"
                d="M165,147c.2,7.1,10.4,7.4,10.9,0S165.4,140,165,147Z"
              />
              <path
                id="other"
                class="step_2"
                d="M156.1,50.3c.2,7.2,10.4,7.5,10.9,0s-10.5-6.9-10.9,0"
              />
              <path
                id="other"
                class="step_3"
                d="M227,214.3l-11.2,6.4-2.1,1.1-9.1,5.2-2,1.2-11.2,6.4V219l11.2,6.8V212.6l11.3,6.8V206.2Z"
              />
            </g>
          </svg>
      </div>
      <div id="error-container" />
      <div id="bees-container" />
      <div id="legend-container" >
        <svg id="bees_legend" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1000 1000">
        <g id="legend-scale" transform="translate(0, 700)">
        <path d="M228,643.5H807" transform="translate(-28.24 -627.46)" style="fill: none;stroke: white;stroke-miterlimit: 10;stroke-width: 3px"/>
        <text class="text-annotate" transform="translate(50 27.42)" >accurate</text>
        <text class="text-annotate" transform="translate(795 27.42)" >inaccurate</text>
        <path d="M247.5,656.5l-23-12,22-15" transform="translate(-28.24 -627.46)" style="fill: none;stroke: white;stroke-linecap: round;stroke-linejoin: round;stroke-width: 3px"/>
        <path d="M722.5,657.5l24-14-25-13" transform="translate(30 -627.46)" style="fill: none;stroke: white;stroke-linecap: round;stroke-linejoin: round;stroke-width: 3px"/>
      </g>
      </svg>
      </div>
    </figure>
    <!--     all the scrolling elements are created from modelingText.js content -->
    <article>
      <div
        v-for="text in text.methods"
        :key="text.title"
        class="step-container text-content">
        <div class="step" >
          <h3> {{ text.title }} </h3>
          <p> {{ text.method }} </p>
        </div>
        </div>
    </article>
    <div id="map-container">
    <!--  <img src="@/assets/usa_hex_map_80-01.png" /> -->
    </div>
  </div>
</template>



<script>
    import * as d3Base from "d3";
    import * as scrollama from 'scrollama';
    import { interpolatePath } from 'd3-interpolate-path';
    import * as flubber from "flubber";

    import modelingText from "./../../assets/text/modelingText";


  export default {
    name: 'Modeling',
    components: {
    },
    data() {
          return {
            text: modelingText.textContents,
            publicPath: process.env.BASE_URL, // this is need for the data files in the public folder, this allows the application to find the files when on different deployment roots
            d3: null, // this is used so that we can assign d3 plugins to the d3 instance

            // dimensions
            margin: 20,
            width: 1000,
            height: 1000,
            marginX: 20,
            marginY: 20,

            // beeswarm
            radius: 4,
            bees: null,
            svg: null,
            xScale: null,
            model_sel: null,
            rmse_monthly: null,
            rmse_monthly_cast: null,

            // scroll options
            scroller: null,
            step: 0,
            progress: 0,

            // force
            force_sim: null,
            init_decay: null,

            timeBeforeKill: 5000,
            exp_color: ["orangered", "teal"],

           // flubber
            path1_strings: null,
            path2_strings: null,
            path3_strings: null,
            path4_strings: null,
            path5_strings: null,

          //listing model steps in order
            model_list: ['ANN','ANN','ANN','ANN','ANN','ANN', 'ANN', 'ANN', 'RNN','RNN', 'RGCN', 'RGCN', 'RGCN_ptrn','RGCN_ptrn'],
            model_list_cast: ['ANN_d001','ANN_d001','ANN_d001','ANN_d001','ANN_d001', 'ANN_d001', 'ANN_d001', 'RNN_d001','RNN_d001', 'RGCN_d001', 'RGCN_d001', 'RGCN_ptrn_d001','RGCN_ptrn_d001'],
            
          }
        },
        mounted() {
          this.scroller = scrollama(), 
          this.scroller.setup({
                  step: "article .step",
                  debug: false,
                  offset: 0.9, //bottom of the page to trigger onStepEnter events
                  progress: false,
                })
                .onStepEnter(this.handleStepEnter)
                .onStepProgress(this.handleStepProgress)
                .onStepExit(this.handleStepExit);
          

          // 3. setup resize event...is this working as expected?
          this.resize();
          window.addEventListener("resize", this.resize);
          this.d3 = Object.assign(d3Base); // load d3 plugins with webpack
          this.paddedRadius = this.radius*1.2;
          
          this.getData(); //read in data and then draw chart

        },
        //methods are executed once, not cached as computed properties, rerun everytime deal with new step
        methods: {
          getData() {
            const self = this;
            let promises = [self.d3.csv(self.publicPath + "data/rmse_monthly_experiments.csv"),
            self.d3.csv(self.publicPath + "data/rmse_monthly_experiments_cast.csv")];
            Promise.all(promises).then(self.callback);
          },
          callback(data) {
            let rmse_monthly = data[0];
            let rmse_monthly_cast = data[1];

            var data_set = this.model_list[this.step];

            this.force_sim = this.d3.forceSimulation(rmse_monthly);

            this.force_sim.on('tick', self.tick)
            this.setChart(rmse_monthly, data_set);

            //triggered events
            this.makePop(this.step);
          },
          // resize to keep scroller accurate
          resize () {
            // need to move ALL sizing aspects to this section...charts, legends.
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
            this.height = 1000;
            this.width = 1000;
            this.margin = 50;

          // append svg
            this.bees = this.d3.select("#bees-container").append("svg")
              .attr("viewBox", [0, 0, this.width, this.height].join(' '))
              .attr("class", "bees_dotPlot");

            //add mid line for horizontal clustering
            this.bees.append("line", 'svg')
              .classed("main_line", true)
              .attr("x1", this.margin)
              .attr("y1", this.height/2)
              .attr("x2", this.width-this.margin)
              .attr("y2", this.height/2)
              .attr("stroke-width", 4)
              .attr("stroke", "#A3A0A6");

          //use color scale for experiment
            let experiments = Array.from(new Set(data.map((d) => d.experiment)));
            let color = this.d3.scaleOrdinal().domain(experiments).range(this.exp_color);
            var scale_keys = ["1%", "100%"];

          /* // add color legend - different svg that is stacked on top of the beeswarm
            this.legend = this.d3.select("#bees_legend")
            //draw an arrow to RMSES
            var arrows = this.legend.append("g").classed("arrow", true)

          //rmse arrow - should jsut add these as svg?
            arrows
              .append('path')
              .attr('d', "M36.9.4a77 77 0 00-19.1 30 113.5 113.5 0 00-5 34 132.7 132.7 0 00.9 19c.2 1.9 3.2 2 3 0a151.3 151.3 0 01-.1-32.7A78.5 78.5 0 0126.8 18 76 76 0 0139 2.5C40.4 1 38.3-1 37 .4z")
              .attr("fill","white")
              .attr("transform", "rotate(140, 500, 500) translate(600, 400)")
              
            arrows.append('path')
              .attr('d', "M.4 66.6a100.7 100.7 0 0113.5 19.2 1.5 1.5 0 002.3.4A169 169 0 0133.6 68c1.4-1.3-.7-3.4-2.2-2.1a169 169 0 00-17.3 18l2.4.3a103.5 103.5 0 00-14-19.8c-1.3-1.4-3.4.7-2.1 2.1z")
              .attr("fill","white")
              .attr("transform", "rotate(140, 500, 500) translate(600, 400)")

            arrows.append('text').classed('text-annotate', true)
              .text("RMSEs")
              .attr("transform", "translate(400, 700)")
              .style("fill", "white")
              .attr("font-size", "32px")

            //create color legend dots
            this.legend.selectAll("mydots")
              .data(scale_keys)
              .enter()
              .append("circle").classed("legend", true)
                .attr("cx", function(d,i){return 250 + i*250})
                .attr("cy", function(d, i){ return 800 })
                .attr("r", 8)
                .style("fill", function(d){return color(d)});

          //legend labels
          this.legend.selectAll("mylabels")
            .data(scale_keys)
            .enter()
            .append("text").classed("legend", true)
              .attr("x", function(d,i){return 280 + i*250})
              .attr("y", function(d,i){ return 800})
              .style("fill",  function(d){ return color(d)})
              .text(function(d){ return d})
              .attr("text-anchor", "left")
              .attr("font-size", "50px")
              .style("alignment-baseline", "middle"); */

          //scale x axis
          this.xScale = this.d3.scaleLinear()
            .range([this.margin, this.width-this.margin])
            .domain([0,10]);

          //draw bees
          //use force to push each dot to x position
          this.bees.selectAll("circle")
            .data(data)
            .enter().append("circle").classed('dot', true)
            .attr("r", this.radius)
            .attr("fill", (d) => color(d.experiment))
            .attr('cx', function(d){return self.xScale(d[model]);})

          //apply force to push dots towards central position on yaxis

          self.force_sim  // start force simulation from array of nodes
            .force('x', this.d3.forceX(function(d){
                return self.xScale(d[model])
              }).strength(.95)
            )
            .force('y', this.d3.forceY(this.height/2).strength(0.15)) //strength.1 keeping on horiz line
            //collide helps with jitteriness, keep iterations between 5-10, stength close to 1
            .force('collide', this.d3.forceCollide(this.paddedRadius).strength(1).iterations(8))
            .alphaDecay(0)
            .alpha(0.2)
            .on('tick', self.tick) // listen for tick events

            //decay is used to smoothly kill the simulation after a defined time
            var init_decay;
            init_decay = setTimeout(function(){
              console.log('init alpha decay');
              self.force_sim
                .alphaDecay(0.1);
            }, 3000);


          },
          addPts(selection) {
            const self = this;
/* 
            const circles = selection.selectAll("circle.dot")
              .data(this.rmse_monthly, function (d) { return d.ANN })
              .join(
                enter => enter.append("circle")
                  .attr("fill", "green")
                  .attr(d => d.ANN),
                update => update
                  .attr("fill", "gray")
                  .classed("new", true)
                ); */ // select all the svg circles in beeswarm

            var circles = self.d3.selectAll("circle")
              .data(this.rmse_monthly);

            const t = selection.transition()
              .duration(1000);

            circles.join(
              enter => enter
                .append("circle").classed("new", true)
                .attr("cx", function(d) { return self.xScale(d.ANN)})
                .call(enter => enter.transition(t)),
              update => update  
                .attr("cx", function(d) { return self.xScale(d.ANN)})
                .call(update => update.transition(t))

            )

          },
          //update bee x position on scroll
          updateChart(data, data_step) {
            const self = this;

            // list models in order of transitions, use step index to select
            var model_sel = this.model_list[data_step];

            // stop previous simulation
           //this.force_sim.stop()

          //modify the force depending on step
          
          //move all points to center when model is introduced?
              if (data_step === 2){

              console.log(model_sel);

                  self.force_sim
                    .force('x', this.d3.forceX(500).strength(.4))
                    .force('y', this.d3.forceY(500).strength(.4))
                    .alpha(0.2)
                    .alphaDecay(0.05)
                  
              } else {

            console.log(model_sel);

            // move points along x axis according to model, when "ticked"
            // this should only happen if the model is different than the previous

            this.force_sim
              .force('x', this.d3.forceX(function(d){
                return self.xScale(d[model_sel])
              }).strength(1))
              .alpha(0.5)

            this.init_decay = setTimeout(function(){
              console.log('re-init alpha decay');
              this.force_sim.alphaDecay(0.1);
            }, 500)
            clearTimeout(this.init_decay);

              }
              // reheat the simulation to make thigns move
              this.force_sim.restart()

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
          //console.log(response);
           // changes css for class
          response.element.classList.add("is-active");

        // update step variable to match step in view
          this.step = response.index;
          console.log(response.index);
          

        // trigger style changes
          //this.makePop(this.step);

          //change chart data w/ transition
          this.updateChart(response, response.index);
          this.scroller.resize();

          if (response.index >= 3) {
            
            this.addPts(this.d3.select("svg.bees_dotPlot"));
          }

        },
        
        // add remove class on exit
        handleStepExit(response) {
          const self = this;
          // response = { element, direction, index }
          //console.log(response);
          // changes css for class
          response.element.classList.remove("is-active");
        },
        // track scroll progress - not returning anything?
        handleStepProgress(response) {
          //console.log(response.progress);
        },
        fadeOut(element, time) {
          element
          .transition()
          .duration(time)
          .attr("opacity",0)
        },
         fadeIn(element, time) {
          element
          .transition()
          .duration(time)
          .attr("opacity",1)
        },
        //style changes by step
        makePop(action) {
          //make beeswarm and legend fade in 
          // all are initially drawn with opacity 0
          // thi sis not a good approach - the the page is refreshed in scroll, it resets to step 0
          // rather than the current step - need to address that throughout
          //how to pull current step on page load???
           var time = 1000;
          if (action >= 1 ) {
            // make beeswarm appear with legend

            this.fadeIn(this.d3.selectAll(".dot"), time);
            this.fadeIn(this.d3.select(".main_line"), time);
            this.fadeIn(this.d3.select(".arrow"), time);

          }
          // fade out if scrolls back
          if (action === 0) {
            //beeswarm fadeout
            this.fadeOut(this.d3.selectAll(".dot"), time);
            this.fadeOut(this.d3.selectAll(".legend"), time);
            this.fadeOut(this.d3.select(".main_line"), time);
            this.fadeOut(this.d3.select(".arrow"), time);

          }
          if (action >= 2 ) {

          this.fadeIn(this.d3.selectAll(".legend"), time);
           this.fadeOut(this.d3.select(".arrow"), time);

           this.fadeIn(this.d3.select("#legend-scale"), time);

          }
          if (action <= 1) {
            //disappearing elements
            this.fadeOut(this.d3.selectAll(".legend"), time/2);
            this.fadeOut(this.d3.selectAll("#legend-scale"), time/2);
          }

        }
    }
  }
</script>
<style scoped lang="scss">

//style steps
article {
  position: relative;
  margin: 0 auto;
  width: 100%;

//this locks in the scroll to center page like a magnet if working
  -webkit-overflow-scrolling: touch;
  overflow-y: scroll;
  scroll-snap-type: y proximity;
}

.step-container {
  width:100vw;
  scroll-snap-align: top; //not working?
  
}
.step {
  position: relative;
  width: 90%;
  margin: 2rem auto 4rem auto;
  z-index: 1;
  height: 50vh;
  border: 1px;

  p {
  text-align: left;
  padding: 1rem;
  font-size: 2rem;
}

}
.step:last-child {
  margin-bottom: 600px;
}

//start at beginning
//grid layout
#modeling {
  width: 100vw;

}
// set up structure for sticky elements
// beeswarm and flubber contained in sticky figure
figure.sticky {
  display: grid;
  grid-template-rows: 5% 1fr 10% 1fr 5%;
  grid-template-columns: 2% auto 2%;
  row-gap:20px;

  position: -webkit-sticky;
  position: sticky;
  top: 0;
  height: 100vh;
  width: 100vw;

  #flubber-container {
    grid-column: 2 / 2;
    grid-row: 2 / 2;
  }
  #flubber {
    display: block;
    margin: auto;
    width: auto;
  }
  #error-container {
    grid-column: 2 / 2;
    grid-row: 4 / 4;
  }
  #bees-container {
    grid-column: 2 / 2;
    grid-row: 4 / 4;
  }
  #bees_dotPlot {
    width: 100%;
    height: 100%;

  }
  #legend-container {
    grid-column: 2 / 2;
    grid-row: 4 / 4;

  }
}

.text-annotate {
  fill:white;
  font-size: 32px;
  font-family: NotoSans-Medium, Noto Sans;
  font-weight: 300;
}

// step-triggered transitions
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
}

</style>