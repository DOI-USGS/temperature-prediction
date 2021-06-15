<template>
  <div>
    <div id="modeling">
      <figure
        class="sticky intro"
      >
        <br>
        <div
          id="intro-container"
          class="text-intro"
        >
          <div
            class="text-content"
          >
            <p>
              Data sparsity and variability in stream temperature dynamics are not unique to the Delaware River Basin; relative to most of the continental United States, the Delaware River Basin is well monitored for water temperature.
            </p>
          </div>
          <div class="box-matrix">
            <div class="text-content">
              <div class="viz-title-wrapper">
                <p class="viz-title">
                  <span class="yellow">Monitoring</span> throughout the continental United States
                </p>
                <p class="viz-subtitle">
                  USGS, state, or local agency stream temperature observations since 1985.
                </p>
              </div>
            </div>
            <div
              id="map-container"
              class="figure-content"
            >
              <DesktopHexMap />
            </div>
          </div>
          <div
            class="text-content"
          >
            <p>The Delaware River Basin is therefore an ideal place to develop new methods for stream temperature prediction. The challenges we described in the Monitoring section – leveraging existing data, capturing diverse cause-and-effect relationships, predicting stream temperature in unmonitored systems and at broad scales – require innovation in modeling. The USGS, along with our academic computer science partners, have been developing new modeling techniques called "knowledge-guided deep learning".</p>
            <p>Knowledge-guided deep learning is, at its core, a machine learning approach. It uses a specific type of machine learning model called an artificial neural network (ANN). ANNs have been used with great success to identify complex relationships and make accurate predictions in a number of scientific fields.</p>       
          </div>
        </div>
      </figure>
      <!--  figure contains all the sticky elements -->
      <figure
        ref="figure"
        class="sticky charts stuck"
      >
      <div
      class="area"
       id="sticky-titles"
      >
      <div
        class="title-container"
             
            >
              <h3 class="viz-title-sticky">{{ title_text }} 
              </h3>
            </div>
            </div>
        <div 
          id="flubber-container"
          class="figure-content"
        >
          <FlubberVisuals />
        </div>
        <div
          id="bees-container"
        />
        <div
          id="legend-container"
        >
          <svg
            id="bees-legend"
            viewBox="0 0 1000 500"
            width="100%"
            height="100%"
            xmlns="http://www.w3.org/2000/svg" 
          />
        </div>
      </figure>
      <!--     all the scrolling elements are created from modelingText.js content -->
      <article>
        <div 
          v-if="!mobileView"
          id="scrollama-container-desktop"
        >
          <!-- create scrolling/sticky headers for each model section -->
          <div 
            v-for="(models, model_group) in text" 
            :key="model_group" 
            :class="model_group" 
            class="step-container model-text-content"
          >

            <!-- populate nested steps using text about each model -->
            <div class="scrollama-steps">
              <div
                v-for="model in models" 
                :id="model.flubber_id" 
                :key="model" 
                class="step"
              >
                <p
                  class="step-text"
                  v-html="model.method"
                />
              </div>
            </div>
          </div>
        </div>
        <div 
          v-if="mobileView"
          id="scrollama-container-mobile"
        >
          <!-- create scrolling/sticky headers for each model section -->
          <div 
            v-for="(models, model_group) in mobile_text" 
            :key="model_group" 
            :class="model_group" 
            class="step-container model-text-content"
          >
            <div
              class="scroll-sticky"
            >
              <h3 class="viz-title-scrolly">
                {{ }}
              </h3>
            </div>
            <!-- populate nested steps using text about each model -->
            <div class="scrollama-steps">
              <div
                v-for="model in models" 
                :id="model.flubber_id" 
                :key="model" 
                class="step"
              >
                <p
                  class="step-text"
                  v-html="model.method"
                />
              </div>
            </div>
          </div>
        </div>
      </article>
    </div>
    
    <figure
      class="sticky"
    >
      <div
        id="outro-container"
        class="text-outro"
      >
        <div class="step-container model-text-content">
          <div
            class="scroll-sticky"
          >
            <h3 class="viz-title-scrolly">
              What's next?
            </h3>
            <div
              class="text-content"
            >
              <p>
                Knowledge-guided machine learning models shine in new scenarios. When trained on only cold-season data, the model is able to predict warm-season dynamics. This is one piece of evidence that these models can make accurate predictions into the future where conditions might be different than we've ever seen before.  <br> <br>
                These models could be used to answer pressing water questions: How will climate change impact available fish habitat? Will increases in water use change stream temperature dynamics? What will happen to stream temperature if we add or remove a dam?   <br> <br>
                What’s next for knowledge-guided water temperature modeling at the U.S. Geological Survey? We’re actively working to incorporate real-time data to improve temperature forecasts, modify the machine learning architecture to accommodate reservoirs, and expand to new basins across the U.S.   <br> <br>
                To learn more about knowledge-guided deep learning, see recent publications by the USGS and collaborators in <a
                  href="https://agupubs.onlinelibrary.wiley.com/doi/pdfdirect/10.1029/2019WR024922"
                  target="”_blank”"
                  class="pub_link"
                >lakes</a> and <a
                  href="https://arxiv.org/pdf/2009.12575.pdf"
                  target="”_blank”"
                  class="pub_link"
                >streams</a>.
              </p>
            </div>
          </div>
        </div>
      </div>
    </figure>
  </div>
</template>



<script>
    import * as d3Base from "d3";
    import * as scrollama from 'scrollama';
    import * as flubber from "flubber";
    import { isMobile } from 'mobile-device-detect';
    import modelingText from "./../../components/2-Modeling/modelingText";
    import modelingText_mobile from "./../../components/2-Modeling/modelingText_mobile";
    import DesktopHexMap from "./../../components/2-Modeling/HexMap";
    import FlubberVisuals from "./../../components/2-Modeling/flubber";

  export default {
    name: 'Modeling',
    components: {
      DesktopHexMap,
      FlubberVisuals,
    },
    data() {
          return {
            mobileView: isMobile, // test if mobile

            // pull title, text, and methods 
            text: modelingText.textContents,
            mobile_text: modelingText_mobile.textContents,
            title_text: 'Training an artificial neural network (ANN)',

            publicPath: process.env.BASE_URL, // this is need for the data files in the public folder, this allows the application to find the files when on different deployment roots
            d3: null, // this is used so that we can assign d3 plugins to the d3 instance

            // dimensions
            height: 500,
            width: 1000,
            margin: 50,
            svg: null,

            // string keys to modify chart appearance
            chartState: {},
            chart_x: {error: 'error_x', mid: 'rmse_x', ANN: 'ANN', RNN: 'RNN', RGCN: 'RGCN', RGCN_ptrn: 'RGCN_ptrn', low: 'low', high: 'hi'},
            chart_y: {mid: 'mid', error_exp: "error_exp", error_obs: "error_obs_new", obs: "obs", exp: "exp"},
            color_bees: {exp: 'experiment', error:'group'},
            label_o: 1, //error axis labels
            label_o_rmse: 0, // rmse axis labels
            o_pred: 1, //legend predicted
            o_obs: 0, // legend observed
            o_train: 0, // legend training data
            o_exp: 0, // legend added experiments
            o_arrow: 0,
            o_rmse_title: 0,
            model_current:  '',
            obs_pos: 0,

            // beeswarm
            step_start: null,
            radius: 6,
            set_colors: null,
            color_exp: null, 
            paddedRadius: null,
            bees: null,
            xScale: null,
            yScale: null,
            rmse_exp: [],
            rmse_ann: [],
            error_data: [],
            simulation: null,
            yAxis: null,
            xAxis: null,
            link: null,

            // scroll options
            scroller: null,
            step: 0, // causing elements to refresh at step 0

            // flubber
            flubber_dict: {},
            flubber_id_order: [],
            current_flubber_id: null,

            time_fade: 500,
            axis_label: null,
            legend_predicted: null,
            legend_observed: null,
            axis_label_rmse: null,
            legend_model: null,
            legend_training:  null, 
            legend_training_d100: null,
            legend_training_d001: null,

          }
        },
        mounted() {
          // this all happens before the page is rendered
          this.d3 = Object.assign(d3Base); // load d3 plugins with webpack

          // // // SCROLL FRAMEWORK SET UP // // //
          // set up scrollama scoller
          this.scroller = scrollama(), 
          this.scroller.setup({
                  step: "article .step",
                  debug: false, // draw trigger line on page
                  offset: 0.90, //bottom of the page to trigger onStepEnter events
                  progress: false, //whether or not to fire incremental step progress updates within root step
                })
                .onStepEnter(this.handleStepEnter)
                .onStepExit(this.handleStepExit);

          // setup resize event
          window.addEventListener("resize", this.resize);
          this.resize();

          // // // FLUBBER SET UP // // //
          // Populate flubber dictionary
          // add path number as key to nested dictionary
          document.querySelectorAll("#flubber-svg g path").forEach(path => this.flubber_dict[path.classList[0]]={});
          // add flubber model id as key in nested dictionary, with path and color as nested keys
          document.querySelectorAll("#flubber-svg g path").forEach(path => this.flubber_dict[path.classList[0]][path.id] = {})
          document.querySelectorAll("#flubber-svg g path").forEach(path => this.flubber_dict[path.classList[0]][path.id]['path_code'] = path.getAttribute("d"));
          document.querySelectorAll("#flubber-svg g path").forEach(path => this.flubber_dict[path.classList[0]][path.id]['fill_color'] = path.style.fill);
          
          // set order of flubber components
          this.flubber_id_order = ['ANN1','ANN2','ANN3','ANN4','ANN5','ANN6','ANN7','ANN8','ANN9','ANN10','ANN11','ANN12','ANN13','RNN','RGCN','RGCN_2','RGCN_ptrn'];

          // // // BEESWARM SET UP // // //
          // set step for beeswarm start
          this.step_start = (this.mobileView) ? 19 : 13

          /////////// stage chart step sequence
          // update data and trigger events based on the active step
          this.step_error_exp = this.step_start; // the error chart appears
          this.step_error_obs = this.step_error_exp + 1; // highlight difference between observed and expected
          this.step_rmse = (this.mobileView) ? (this.step_error_obs + 2) : (this.step_error_obs + 1); ///    data points to single RMSE
          this.step_ann = (this.mobileView) ? (this.step_rmse + 4) : (this.step_rmse + 3); ///    show RMSE for ANN d100 experiment
          this.step_ann_exp = (this.mobileView) ? (this.step_ann + 4) : (this.step_ann + 3); //    show RMSE for ANN with 3 experiments
          this.step_rnn = (this.mobileView) ? (this.step_ann_exp + 9) : (this.step_ann_exp + 5); // RNN with some flubber and narrative steps
          this.step_rgcn = (this.mobileView) ? (this.step_rnn + 7) : (this.step_rnn + 3); // RGCN
          this.step_rgcn_ptrn = (this.mobileView) ? (this.step_rgcn + 9) : (this.step_rgcn + 4); //RGCN_ptrn
          this.step_end = (this.mobileView) ? (this.step_rgcn_ptrn + 4) : (this.step_rgcn_ptrn + 3);
          this.step_rnn_title = this.step_rnn -1;
          this.step_rgcn_title = this.step_rgcn -2;
          this.step_rgcn_ptrn_title = this.step_rgcn_ptrn -3;


        // colors for chart
          this.color_d100 = "#FAB62F"; 
          this.color_d001 = "#FAB62F";
          this.color_obs = "#5191bd";  
          this.color_exp = "#5191bd"; 
          this.color_fill = "#292b30"; // to fill open circles same as background
          this.stroke_w = "2px"

          // once everything is set up and the component is added to the DOM, read in data and make it dance
          this.loadData(); // this reads in data and then calls function to draw beeswarm chart

        },
        
        methods: {
          isMobile() {
              if(/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent)) {
                  return true
              } else {
                  return false
              }
          },
          loadData() {
            const self = this;
            // read in data 
            let promises = [self.d3.csv(self.publicPath + "data/rmse_monthly_experiments.csv", this.d3.autoType),
            self.d3.csv(self.publicPath + "data/rmse_monthly_experiments_d100.csv", this.d3.autoType),
            self.d3.csv(self.publicPath + "data/rmse_monthly_experiments_error.csv", this.d3.autoType),
            self.d3.csv(self.publicPath + "data/rmse_links.csv", this.d3.autoType)];
            Promise.all(promises).then(self.callback); 
          },
          callback(data) {
            const self = this;
            // organize data and draw chart
            this.rmse_exp = data[0]; // by model typ, e.g. ANN, RNN, RGCN, RGCN_ptrn
            this.rmse_ann = data[1]; // by model type x experiment with only data from d100 experiment, same variable names
            this.error_data = data[2];
            this.links = data[3];

            // computed properties
            this.paddedRadius = this.radius* 1.4;
            this.errorRadius = 10;

            // define initial state of chart - default is an error chart to start
            this.chartState.strengthr = 0;
            this.chartState.domain_y = 30;
            this.chartState.domain_x = 30;
            //this.chartState.radius = this.paddedRadius;
            this.chartState.alpha = 1;
            this.chartState.aDecay = 0.1;
            this.chartState.strengthlink = 0;

            // draw the chart
            this.setChartState(); // pull fadein/out start state based on step
            this.setDataVars(); // pull data for first draw
            this.makeBeeswarm(); // build chart based on step
          },
          // resize to keep scroller accurate with window size changes
          resize () {
            const self = this;
            const bounds = this.$refs.figure.getBoundingClientRect()
            this.width_screen = bounds.width
            this.scroller.resize()
          },
          // animate flubber svg
          animateFlubber(step_id, step_direction) {
            const self = this;
            // The { maxSegmentLength: X } parameter controls the smoothness of the animation 
            // From the documentation: 
            // // // "maxSegmentLength: the lower this number is, the smoother the resulting animation 
            // // // will be, at the expense of performance. Represents a number in pixels (if no 
            // // // transforms are involved). Set it to false or Infinity for no smoothing. (default: 10)"

            // If the step has an id (in this case all the ids are in the flubber id array)
            // if were ids, would have to add check that id is in flubber_id_order array
            if (step_id) {
              let animationLength = 1600; // original was 2400

              // identify which flubber id to transition to
              // get id of current step w/i flubber_id_order array
              let next_id_index = self.flubber_id_order.indexOf(step_id)
              let previous_id;
              if (step_direction == "down") {
                // if the step direction is down, and
                // if the index of the current step is 0, 
                // OR the step_id matches the previous step id (as stored at the end of this function)
                // set the previous_id to be the same as the step_id
                // otherwise, set the previous_id to be the preceding item in the flubber_id_order array
                // // // NOTE: Wil leave as is for now, but now that I am storing the 'current id' at the end of this function, 
                // // // we could potentially just use that to define the previous step, unless it is null (beginning)?
                previous_id = (next_id_index == 0 || step_id == self.current_flubber_id) ? step_id : self.flubber_id_order[next_id_index - 1]
              } else {
                // if the step direction is up, and
                // if the current step is the final element in the flubber_id_order array, 
                // OR the step_id matches the previous step id (as stored at the end of this function)
                // set the previous_id to the step_id
                // otherwise, set the previous_id to be the subsequent item in the flubber_id_order array
                // // // NOTE: Will leave as is for now, but now that I am storing the 'current id' at the end of this function, 
                // // // we could potentially just use that to define the previous step?
                previous_id = (next_id_index == self.flubber_id_order.length-1 || step_id == self.current_flubber_id) ? step_id : self.flubber_id_order[next_id_index + 1]  
              }

              // if the step_id differs from the previous id...
              if (step_id != previous_id) {
                  // loop through the paths in the dictionary for the current step id
                  let path_num;
                  for (path_num in self.flubber_dict) {
                    if (path_num == "f_arrow") {

                    } else {
                      // define path end using the CURRENT STEP ID
                      let path_end = self.flubber_dict[path_num][step_id]['path_code']
                      // define path end using the PREVIOUS STEP ID (as defined above)
                      let path_start = self.flubber_dict[path_num][previous_id]['path_code']

                      // transition between the two
                      // select path in the group element for that path number
                      self.d3.select("#" + path_num + ' path')
                        .style("display", "block")
                        .datum({ path_start, path_end })
                        .transition()
                        .duration(animationLength)
                        .style("fill", self.flubber_dict[path_num][step_id]['fill_color'])
                        .attrTween("d", function(d){
                          return flubber.interpolate(d.path_start, d.path_end, { maxSegmentLength: 2.5 })
                        })
                    }
                  }

                  // select associated annotations
                  let previous_annotation_id = previous_id + "_annotations"
                  // console.log(previous_annotation_id)
                  let next_annotation_id = step_id + "_annotations"
                  // console.log(next_annotation_id)

                  // set length of annotation transition
                  let transition_duration = animationLength/2

                  if (next_annotation_id != previous_annotation_id) {
                    // hide visual associated with previous model id
                    self.d3.selectAll("#" + previous_annotation_id)
                      .transition()
                      .duration(animationLength)
                      .style("opacity", "0");

                    // show visual associated with next model id
                    self.d3.selectAll("#" + next_annotation_id)
                      .transition()
                      .duration(animationLength)
                      .style("opacity", "1");
                  }
              }

              // store current id
              self.current_flubber_id = step_id

            }
          },
          setChartState() {
              /////////////////////////
              // define which labels and annotations are drawn initially based on scroll step
              // setting opacity
              if (this.mobileView) {
                // steps with opacity = 1
          
                  switch(this.step) {
                      case this.step_error_exp:
                        this.label_o = 1; //error axis labels
                        this.label_o_rmse = 0; // rmse axis labels
                        this.o_pred = 1; //legend predicted
                        this.o_obs = 0; // legend observed
                        this.o_train = 0; // legend training data
                        this.o_exp = 0; // legend added experiments
                        this.o_arrow = 0; // rmse arrow legend
                        this.o_rmse_title = 0; // rmse model naming
                        this.obs_pos = 0; 
                        this.link_o = 1; 
                        break;
                      case this.step_error_obs:
                      case this.step_error_obs+1:
                        this.label_o = 1;
                        this.label_o_rmse = 0;
                        this.o_pred = 1;
                        this.o_obs = 1;
                        this.o_train = 0;
                        this.o_exp = 0;
                        this.o_arrow = 0;
                        this.o_rmse_title = 0;
                        this.obs_pos = 30;
                        this.link_o = 1; 
                        break;
                      case this.step_rmse:
                      case this.step_rmse+1:
                      case this.step_rmse+2:
                      case this.step_rmse+3:
                        this.label_o = 0;
                        this.label_o_rmse = 1;
                        this.o_pred = 0;
                        this.o_obs = 0;
                        this.o_train = 0;
                        this.o_exp = 0;
                        this.o_arrow = 0;
                        this.o_rmse_title = 1;
                        this.obs_pos = 30;
                        this.link_o = 0; 
                        break;
                      case this.step_ann:
                      case this.step_ann+1:
                      case this.step_ann+2:
                      case this.step_ann+3:
                        this.label_o = 0;
                        this.label_o_rmse = 1;
                        this.o_pred = 0;
                        this.o_obs = 0;
                        this.o_train = 1;
                        this.o_exp = 0;
                        this.o_arrow = 1;
                        this.o_rmse_title = 1;
                        this.obs_pos = 30;
                        this.link_o = 0; 
                        break;
                      case this.step_ann_exp:
                      case this.step_ann_exp+1:
                      case this.step_ann_exp+2:
                      case this.step_ann_exp+3:
                      case this.step_ann_exp+4:
                      case this.step_ann_exp+5:
                      case this.step_ann_exp+6:
                      case this.step_ann_exp+7:
                      case this.step_ann_exp+8:
                        this.label_o = 0;
                        this.label_o_rmse = 0;
                        this.o_pred =0;
                        this.o_obs = 0;
                        this.o_train = 1;
                        this.o_exp = 1;
                        this.o_arrow = 1;
                        this.o_rmse_title = 1;
                        this.obs_pos = 30;
                        this.link_o = 0; 
                        break;
                      case this.step_rnn:
                      case this.step_rnn+1:
                      case this.step_rnn+2:
                      case this.step_rnn+3:
                      case this.step_rnn+4:
                      case this.step_rnn+5:
                      case this.step_rnn+6:
                        this.label_o = 0;
                        this.label_o_rmse = 1;
                        this.o_pred = 0;
                        this.o_obs = 0;
                        this.o_train = 1;
                        this.o_exp = 1;
                        this.o_arrow = 1;
                        this.o_rmse_title = 1;
                        this.obs_pos = 30;
                        this.link_o = 0; 
                        break;
                      case this.step_rgcn:
                      case this.step_rgcn+1:
                      case this.step_rgcn+2:
                      case this.step_rgcn+3:
                      case this.step_rgcn+4:
                      case this.step_rgcn+5:
                      case this.step_rgcn+6:
                      case this.step_rgcn+7:
                      case this.step_rgcn+8:
                        this.label_o = 0;
                        this.label_o_rmse = 0;
                        this.o_pred = 0;
                        this.o_obs = 0;
                        this.o_train = 1;
                        this.o_exp = 1;
                        this.o_arrow = 1;
                        this.o_rmse_title = 1;
                        this.obs_pos = 30;
                        this.link_o = 0; 
                        break;
                      case this.step_rgcn_ptrn:
                      case this.step_rgcn_ptrn+1:
                      case this.step_rgcn_ptrn+2:
                      case this.step_rgcn_ptrn+3:
                        this.label_o = 0;
                        this.label_o_rmse = 0;
                        this.o_pred = 0;
                        this.o_obs = 0;
                        this.o_train = 1;
                        this.o_exp = 1;
                        this.o_arrow = 1;
                        this.o_rmse_title = 1;
                        this.obs_pos = 30;
                        this.link_o = 0; 
                        break;
                      default:
                        this.label_o = 0;
                        this.label_o_rmse = 0;
                        this.o_pred = 0;
                        this.o_obs = 0;
                        this.o_train = 0;
                        this.o_exp = 0;
                        this.o_arrow = 0;
                        this.o_rmse_title = 0;
                        this.obs_pos = 0;
                        this.link_o = 0; 
                  }
              } else {
                  switch(this.step) {
                      case this.step_error_exp:
                        this.label_o = 1; //error axis labels
                        this.label_o_rmse = 0; // rmse axis labels
                        this.o_pred = 1; //legend predicted
                        this.o_obs = 0; // legend observed
                        this.o_train = 0; // legend training data
                        this.o_exp = 0; // legend added experiments
                        this.o_arrow = 0; // rmse arrow legend
                        this.o_rmse_title = 0; // rmse model naming
                        this.obs_pos = 0; // 
                        this.link_o = 1; 
                        break;
                      case this.step_error_obs:
                        this.label_o = 1;
                        this.label_o_rmse = 0;
                        this.o_pred = 1;
                        this.o_obs = 1;
                        this.o_train = 0;
                        this.o_exp = 0;
                        this.o_arrow = 0;
                        this.o_rmse_title = 0;
                        this.obs_pos = 30;
                        this.link_o = 1; 
                        break;
                      case this.step_rmse:
                      case this.step_rmse+1:
                      case this.step_rmse+2:
                        this.label_o = 0;
                        this.label_o_rmse = 1;
                        this.o_pred = 0;
                        this.o_obs = 0;
                        this.o_train = 0;
                        this.o_exp = 0;
                        this.o_arrow = 0;
                        this.o_rmse_title = 1;
                        this.obs_pos = 30;
                        this.link_o = 0; 
                        break;
                      case this.step_ann:
                      case this.step_ann+1:
                      case this.step_ann+2:
                        this.label_o = 0;
                        this.label_o_rmse = 1;
                        this.o_pred = 0;
                        this.o_obs = 0;
                        this.o_train = 1;
                        this.o_exp = 0;
                        this.o_arrow = 1;
                        this.o_rmse_title = 1;
                        this.obs_pos = 30;
                        this.link_o = 0; 
                        break;
                      case this.step_ann_exp:
                      case this.step_ann_exp+1:
                      case this.step_ann_exp+2:
                      case this.step_ann_exp+3:
                      case this.step_ann_exp+4:
                        this.label_o = 0;
                        this.label_o_rmse = 0;
                        this.o_pred =0;
                        this.o_obs = 0;
                        this.o_train = 1;
                        this.o_exp = 1;
                        this.o_arrow = 1;
                        this.o_rmse_title = 1;
                        this.obs_pos = 30;
                        this.link_o = 0; 
                        break;
                      case this.step_rnn:
                      case this.step_rnn+1:
                      case this.step_rnn+2:
                        this.label_o = 0;
                        this.label_o_rmse = 1;
                        this.o_pred = 0;
                        this.o_obs = 0;
                        this.o_train = 1;
                        this.o_exp = 1;
                        this.o_arrow = 1;
                        this.o_rmse_title = 1;
                        this.obs_pos = 30;
                        this.link_o = 0; 
                        break;
                      case this.step_rgcn:
                      case this.step_rgcn+1:
                      case this.step_rgcn+2:
                      case this.step_rgcn+3:
                        this.label_o = 0;
                        this.label_o_rmse = 0;
                        this.o_pred = 0;
                        this.o_obs = 0;
                        this.o_train = 1;
                        this.o_exp = 1;
                        this.o_arrow = 1;
                        this.o_rmse_title = 1;
                        this.obs_pos = 30;
                        this.link_o = 0; 
                        break;
                      case this.step_rgcn_ptrn:
                      case this.step_rgcn_ptrn+1:
                      case this.step_rgcn_ptrn+2:
                        this.label_o = 0;
                        this.label_o_rmse = 0;
                        this.o_pred = 0;
                        this.o_obs = 0;
                        this.o_train = 1;
                        this.o_exp = 1;
                        this.o_arrow = 1;
                        this.o_rmse_title = 1;
                        this.obs_pos = 30;
                        this.link_o = 0; 
                        break;
                      default:
                        this.label_o = 0;
                        this.label_o_rmse = 0;
                        this.o_pred = 0;
                        this.o_obs = 0;
                        this.o_train = 0;
                        this.o_exp = 0;
                        this.o_arrow = 0;
                        this.o_rmse_title = 0;
                        this.obs_pos = 0;
                        this.link_o = 0; 
                  }
              }
          },
          setDataVars(){
            let margin = 50;
              // setting data variables
              if (this.mobileView) {
                  switch(this.step) {
                      case this.step_error_exp:
                        this.chartState.dataset = this.error_data;
                        this.chartState.grouped = this.color_bees.error;
                        this.chartState.var_x = this.chart_x.error;
                        this.chartState.var_y = this.chart_y.error_exp;
                        this.chartState.domain_x = 30;
                        this.chartState.domain_y = 30;
                        this.model_current = '';
                        this.chartState.axis_x = 0; // x end for axis
                        this.chartState.axis_y = 0;
                        this.chartState.axis_x_on_y = this.height+margin;
                        this.chartState.rad = this.errorRadius;
                        break;
                      case this.step_error_obs:
                      case this.step_error_obs+1:
                        this.chartState.dataset = this.error_data;
                        this.chartState.grouped = this.color_bees.error;
                        this.chartState.var_x = this.chart_x.error;
                        this.chartState.var_y = this.chart_y.error_obs;
                        this.chartState.domain_x = 30;
                        this.chartState.domain_y = 30;
                        this.model_current = '';
                        this.chartState.axis_x = 0;
                        this.chartState.axis_y = 0;
                        this.chartState.axis_x_on_y = this.height+margin;
                        this.chartState.rad = this.errorRadius;
                        break;                      
                      case this.step_rmse:
                        this.chartState.dataset = this.error_data;
                        this.chartState.grouped = this.color_bees.exp;
                        this.chartState.var_x = this.chart_x.mid;
                        this.chartState.var_y = this.chart_y.mid;
                        this.chartState.domain_x = 30;
                        this.chartState.domain_y = 30;
                        this.model_current = '  quantifies model prediction error';
                        this.chartState.axis_x = 0;
                        this.chartState.axis_y = 0;
                        this.chartState.axis_x_on_y = (this.height/2);
                        this.chartState.rad = this.radius;
                        break;
                      case this.step_rmse+1:
                        this.chartState.dataset = this.error_data;
                        this.chartState.grouped = this.color_bees.exp;
                        this.chartState.var_x = this.chart_x.low;
                        this.chartState.var_y = this.chart_y.mid;
                        this.chartState.domain_x = 30;
                        this.chartState.domain_y = 30;
                        this.model_current = '  quantifies model prediction error';
                        this.chartState.axis_x = 0;
                        this.chartState.axis_y = 0;
                        this.chartState.axis_x_on_y = (this.height/2);
                        this.chartState.rad = this.radius;
                        break;
                      case this.step_rmse+2:
                      case this.step_rmse+3:
                        this.chartState.dataset = this.error_data;
                        this.chartState.grouped = this.color_bees.exp;
                        this.chartState.var_x = this.chart_x.high;
                        this.chartState.var_y = this.chart_y.mid;
                        this.chartState.domain_x = 30;
                        this.chartState.domain_y = 30;
                        this.model_current = '  quantifies model prediction error';
                        this.chartState.axis_x = 0;
                        this.chartState.axis_y = 0;
                        this.chartState.axis_x_on_y = (this.height/2);
                        this.chartState.rad = this.radius;
                        break;
                      case this.step_ann:
                      case this.step_ann+1:
                      case this.step_ann+2:
                      case this.step_ann+3:
                        this.chartState.dataset = this.rmse_ann;
                        this.chartState.grouped = this.color_bees.exp;
                        this.chartState.var_x = this.chart_x.ANN;
                        this.chartState.var_y = this.chart_y.mid;
                        this.chartState.domain_x = 8;
                        this.chartState.domain_y = 30;
                        this.model_current = ': ANN';
                        this.chartState.axis_x = 0;
                        this.chartState.axis_y = 0;
                        this.chartState.axis_x_on_y = (this.height/2);
                        this.chartState.rad = this.radius;
                        break;
                      case this.step_ann_exp:
                      case this.step_ann_exp+1:
                      case this.step_ann_exp+2:
                      case this.step_ann_exp+3:
                      case this.step_ann_exp+4:
                      case this.step_ann_exp+5:
                      case this.step_ann_exp+6:
                      case this.step_ann_exp+7:
                      case this.step_ann_exp+8:
                        this.chartState.dataset = this.rmse_exp;
                        this.chartState.grouped = this.color_bees.exp;
                        this.chartState.var_x = this.chart_x.ANN;
                        this.chartState.var_y = this.chart_y.mid;
                        this.chartState.domain_x = 8;
                        this.chartState.domain_y = 30;
                        this.model_current = ': ANN';
                        this.chartState.axis_x = 0;
                        this.chartState.axis_y = 0;
                        this.chartState.axis_x_on_y = (this.height/2);
                        this.chartState.rad = this.radius;
                        break;
                      case this.step_rnn:
                      case this.step_rnn+1:
                      case this.step_rnn+2:
                      case this.step_rnn+3:
                      case this.step_rnn+4:
                      case this.step_rnn+5:
                      case this.step_rnn+6:
                        this.chartState.dataset = this.rmse_exp;
                        this.chartState.grouped = this.color_bees.exp;
                        this.chartState.var_x = this.chart_x.RNN;
                        this.chartState.var_y = this.chart_y.mid;
                        this.chartState.domain_x = 8;
                        this.chartState.domain_y = 30;
                        this.model_current = ': ANN + time';
                        this.chartState.axis_x = 0;
                        this.chartState.axis_y = 0;
                        this.chartState.axis_x_on_y = (this.height/2);
                        this.chartState.rad = this.radius;
                        break;
                      case this.step_rgcn:
                      case this.step_rgcn+1:
                      case this.step_rgcn+2:
                      case this.step_rgcn+3:
                      case this.step_rgcn+4:
                      case this.step_rgcn+5:
                      case this.step_rgcn+6:
                      case this.step_rgcn+7:
                      case this.step_rgcn+8:
                        this.chartState.dataset = this.rmse_exp;
                        this.chartState.grouped = this.color_bees.exp;
                        this.chartState.var_x = this.chart_x.RGCN;
                        this.chartState.var_y = this.chart_y.mid;
                        this.chartState.domain_x = 8;
                        this.chartState.domain_y = 30;
                        this.model_current = ': ANN + time + space';
                        this.chartState.axis_x = 0;
                        this.chartState.axis_y = 0;
                        this.chartState.axis_x_on_y = (this.height/2);
                        this.chartState.rad = this.radius;
                        break;
                      case this.step_rgcn_ptrn:
                      case this.step_rgcn_ptrn+1:
                      case this.step_rgcn_ptrn+2:
                      case this.step_rgcn_ptrn+3:
                        this.chartState.dataset = this.rmse_exp;
                        this.chartState.grouped = this.color_bees.exp;
                        this.chartState.var_x = this.chart_x.RGCN_ptrn;
                        this.chartState.var_y = this.chart_y.mid;
                        this.chartState.domain_x = 8;
                        this.chartState.domain_y = 30;
                        this.model_current = ': ANN + time + space + physics';
                        this.chartState.axis_x = 0;
                        this.chartState.axis_y = 0;
                        this.chartState.axis_x_on_y = (this.height/2);
                        this.chartState.rad = this.radius;
                        break;
                      default:
                        this.chartState.dataset = this.error_data;
                        this.chartState.grouped = this.color_bees.error;
                        this.chartState.var_x = this.chart_x.error;
                        this.chartState.var_y = this.chart_y.exp;
                        this.chartState.domain_x = 30;
                        this.chartState.domain_y = 30;
                        this.model_current = '';
                        this.chartState.axis_x = this.width+margin; // if not on a beeswarm step, the axis is recoiled
                        this.chartState.axis_y = this.height+margin;// if not on a beeswarm step, the axis is recoiled
                        this.chartState.axis_x_on_y = this.height+margin;
                        this.chartState.rad = this.radius;

                  }
              } else {
                  switch(this.step) {
                      case this.step_error_exp:
                        this.chartState.dataset = this.error_data;
                        this.chartState.grouped = this.color_bees.error;
                        this.chartState.var_x = this.chart_x.error;
                        this.chartState.var_y = this.chart_y.error_exp;
                        this.chartState.domain_x = 30;
                        this.chartState.domain_y = 30;
                        this.model_current = '';
                        this.chartState.axis_x = 0; // x end for axis
                        this.chartState.axis_y = 0;
                        this.chartState.axis_x_on_y = this.height+margin;
                        this.chartState.rad = this.errorRadius;
                        break;
                      case this.step_error_obs:
                        this.chartState.dataset = this.error_data;
                        this.chartState.grouped = this.color_bees.error;
                        this.chartState.var_x = this.chart_x.error;
                        this.chartState.var_y = this.chart_y.error_obs;
                        this.chartState.domain_x = 30;
                        this.chartState.domain_y = 30;
                        this.model_current = '';
                        this.chartState.axis_x = 0;
                        this.chartState.axis_y = 0;
                        this.chartState.axis_x_on_y = this.height+margin;
                        this.chartState.rad = this.errorRadius;
                        break;
                      case this.step_rmse:
                        this.chartState.dataset = this.error_data;
                        this.chartState.grouped = this.color_bees.exp;
                        this.chartState.var_x = this.chart_x.mid;
                        this.chartState.var_y = this.chart_y.mid;
                        this.chartState.domain_x = 30;
                        this.chartState.domain_y = 30;
                        this.model_current = '  quantifies model prediction error';
                        this.chartState.axis_x = 0;
                        this.chartState.axis_y = 0;
                        this.chartState.axis_x_on_y = (this.height/2);
                        this.chartState.rad = this.radius;
                        break;
                      case this.step_rmse+1:
                        this.chartState.dataset = this.error_data;
                        this.chartState.grouped = this.color_bees.exp;
                        this.chartState.var_x = this.chart_x.low;
                        this.chartState.var_y = this.chart_y.mid;
                        this.chartState.domain_x = 30;
                        this.chartState.domain_y = 30;
                        this.model_current = '  quantifies model prediction error';
                        this.chartState.axis_x = 0;
                        this.chartState.axis_y = 0;
                        this.chartState.axis_x_on_y = (this.height/2);
                        this.chartState.rad = this.radius;
                        break;
                      case this.step_rmse+2:
                        this.chartState.dataset = this.error_data;
                        this.chartState.grouped = this.color_bees.exp;
                        this.chartState.var_x = this.chart_x.high;
                        this.chartState.var_y = this.chart_y.mid;
                        this.chartState.domain_x = 30;
                        this.chartState.domain_y = 30;
                        this.model_current = '  quantifies model prediction error';
                        this.chartState.axis_x = 0;
                        this.chartState.axis_y = 0;
                        this.chartState.axis_x_on_y = (this.height/2);
                        this.chartState.rad = this.radius;
                        break;
                      case this.step_ann:
                      case this.step_ann+1:
                      case this.step_ann+2:
                        this.chartState.dataset = this.rmse_ann;
                        this.chartState.grouped = this.color_bees.exp;
                        this.chartState.var_x = this.chart_x.ANN;
                        this.chartState.var_y = this.chart_y.mid;
                        this.chartState.domain_x = 8;
                        this.chartState.domain_y = 30;
                        this.model_current = ': ANN';
                        this.chartState.axis_x = 0;
                        this.chartState.axis_y = 0;
                        this.chartState.axis_x_on_y = (this.height/2);
                        this.chartState.rad = this.radius;
                        break;
                      case this.step_ann_exp:
                      case this.step_ann_exp+1:
                      case this.step_ann_exp+2:
                      case this.step_ann_exp+3:
                      case this.step_ann_exp+4:
                        this.chartState.dataset = this.rmse_exp;
                        this.chartState.grouped = this.color_bees.exp;
                        this.chartState.var_x = this.chart_x.ANN;
                        this.chartState.var_y = this.chart_y.mid;
                        this.chartState.domain_x = 8;
                        this.chartState.domain_y = 30;
                        this.model_current = ': ANN';
                        this.chartState.axis_x = 0;
                        this.chartState.axis_y = 0;
                        this.chartState.axis_x_on_y = (this.height/2);
                        this.chartState.rad = this.radius;
                        break;
                      case this.step_rnn:
                      case this.step_rnn+1:
                      case this.step_rnn+2:
                        this.chartState.dataset = this.rmse_exp;
                        this.chartState.grouped = this.color_bees.exp;
                        this.chartState.var_x = this.chart_x.RNN;
                        this.chartState.var_y = this.chart_y.mid;
                        this.chartState.domain_x = 8;
                        this.chartState.domain_y = 30;
                        this.model_current = ': ANN + time';
                        this.chartState.axis_x = 0;
                        this.chartState.axis_y = 0;
                        this.chartState.axis_x_on_y = (this.height/2);
                        this.chartState.rad = this.radius;
                        break;
                      case this.step_rgcn:
                      case this.step_rgcn+1:
                      case this.step_rgcn+2:
                      case this.step_rgcn+3:
                        this.chartState.dataset = this.rmse_exp;
                        this.chartState.grouped = this.color_bees.exp;
                        this.chartState.var_x = this.chart_x.RGCN;
                        this.chartState.var_y = this.chart_y.mid;
                        this.chartState.domain_x = 8;
                        this.chartState.domain_y = 30;
                        this.model_current = ': ANN + time + space';
                        this.chartState.axis_x = 0;
                        this.chartState.axis_y = 0;
                        this.chartState.axis_x_on_y = (this.height/2);
                        this.chartState.rad = this.radius;
                        break;
                      case this.step_rgcn_ptrn:
                      case this.step_rgcn_ptrn+1:
                      case this.step_rgcn_ptrn+2:
                        this.chartState.dataset = this.rmse_exp;
                        this.chartState.grouped = this.color_bees.exp;
                        this.chartState.var_x = this.chart_x.RGCN_ptrn;
                        this.chartState.var_y = this.chart_y.mid;
                        this.chartState.domain_x = 8;
                        this.chartState.domain_y = 30;
                        this.model_current = ': ANN + time + space + physics';
                        this.chartState.axis_x = 0;
                        this.chartState.axis_y = 0;
                        this.chartState.axis_x_on_y = (this.height/2)
                        this.chartState.rad = this.radius;
                        break;
                      default:
                        this.chartState.dataset = this.error_data;
                        this.chartState.grouped = this.color_bees.error;
                        this.chartState.var_x = this.chart_x.error;
                        this.chartState.var_y = this.chart_y.exp;
                        this.chartState.domain_x = 30;
                        this.chartState.domain_y = 30;
                        this.model_current = '';
                        this.chartState.axis_x = this.width+margin; // if not on a beeswarm step, the axis is recoiled
                        this.chartState.axis_y = this.height+margin;// if not on a beeswarm step, the axis is recoiled
                        this.chartState.axis_x_on_y = this.height+margin;
                        this.chartState.rad = this.radius;
                  }
              }
          },
          makeBeeswarm() {
          // define core chart elements that are constant and only need to be run this one time
          const self = this;
          let margin = 50;

          // add svg for beeswarm 
          this.svg = this.d3.select('#bees-container').append('svg')
              .attr("id", "bees-chart")
              .attr("viewBox", [0, -50, (this.width+margin*2), (this.height+margin*3)].join(' '))
              .attr("height", "100%")
              .attr("width", "100%")

          ////////////////////// set scales
          // x axis 
          this.xScale = this.d3.scaleLinear()
            .range([margin, this.width+margin])
            .domain([0,this.chartState.domain_x]);

          // y axis scale for error plot only
          this.yScale = this.d3.scaleLinear()
            .range([this.height+margin,-50])
            .domain([0,this.chartState.domain_y]);

           // define beeswarm colors
           this.set_colors = this.d3.scaleOrdinal()
            .domain(["d100","d001","obs","exp"])
            .range([this.color_d001, this.color_fill, this.color_fill, this.color_exp]);

          // separate scale for stroke color to create open and filled points
            this.stroke_colors = this.d3.scaleOrdinal()
            .domain(["d100","d001","obs","exp"])
            .range([this.color_d001,  this.color_d001, this.color_obs, this.color_exp]);

          ///////////////////
          // generate axes
          let yGen = this.d3.axisLeft(self.yScale).ticks(0).tickSize(0);
          let xGen = this.d3.axisBottom(self.xScale).ticks(0).tickSize(0);

          // draw on chart
          this.yAxis = this.svg.append("g")
            .attr("class", "y-axis")
            .call(yGen);

          this.xAxis = this.svg.append("g")
            .attr("class", "x-axis")
            .call(xGen);

        // style modifications and set up axis drawing animation
         this.xAxis
          .attr("transform", "translate(" + 0 + "," + this.chartState.axis_x_on_y + ")")
          .style("stroke-width", "3px")
          .style("stroke-dasharray", this.width+margin)
          .style("stroke-dashoffset", this.width+margin) // initially draw axis pulled back, then animate drawing depending on step
          .style("color", "#9c9c9c")

         this.yAxis
          .attr("transform", "translate(" + margin + "," + 0 + ")")
          .style("stroke-width", "3px")
          .style("stroke-dasharray", this.height+margin*2)
          .style("stroke-dashoffset", this.height+margin*2)// initially draw axis pulled back, then animate drawing depending on step
          .style("color", "#9c9c9c")

          /// define arrow head for rmse label
        this.svg.append("svg:defs").append("svg:marker")
          .attr("id", "triangle")
          .attr("refX", 10)
          .attr("refY", 5)
          .attr("markerWidth", 16)
          .attr("markerHeight", 16)
          .attr("orient", "auto-start-reverse")
          .append("path")
          .attr("d", "M 0 0 L 10 5 L 0 10 z")
          .style("fill", "#9c9c9c");
          
          // draw arrow and labels opacity 0 unless 
          this.svg
          .append("line")
            .attr("x1", margin)
            .attr("y1", (this.height))
            .attr("x2", this.width+margin)
            .attr("y2", (this.height))
            .attr("stroke-width", 2)
            .attr("stroke", "#9c9c9c")
            .attr("stroke-dasharray", "5px")
            .attr("marker-end", "url(#triangle)")
            .attr("marker-start", "url(#triangle)")
            .classed("arrow", true)
            .style("opacity", this.o_rmse_title);

          // text labels for the rmse axis
          this.svg.append("text")             
              .attr("transform","translate(" + margin + " ," + (this.height- 40) + ")")
              .style("text-anchor", "left")
              .text("accurate")
              .style("fill", "#9c9c9c")
              .style("font-size", "24px")
              .style("opacity", this.o_rmse_title)
              .classed("rmse-label", true);

            this.svg.append("text")             
              .attr("transform","translate(" + (this.width-margin) + " ," + (this.height-40) + ")")
              .style("text-anchor", "right")
              .text("inaccurate")
              .style("fill", "#9c9c9c")
              .style("font-size", "24px")
              .style("opacity", this.o_rmse_title)
              .classed("rmse-label", true);

        // if refreshed on any of the error chart views, do the line drawing animation to put it on the page
        let error_steps = [this.step_error_exp, this.step_error_obs];
        if (error_steps.indexOf(this.step) !== -1) {
             self.drawAxes(this.xAxis, this.chartState.axis_x); // line drawing animation
             self.drawAxes(this.yAxis, this.chartState.axis_y); // line drawing animation

        // if starts on any rmse steps, draw the rmse axis only
        } else if (this.step >= this.step_rmse) {
           this.yAxis 
            .style("opacity", 0)
          this.xAxis 
            .style("opacity", 0)
            
          self.drawAxes(this.xAxis, this.chartState.axis_x); // line drawing animation
          self.drawAxes(this.yAxis, this.chartState.axis_y); // draw invisible so exist on potential scrollback
        }

        let font_item = "30px";

          // text label for the x axis
          this.svg.append("text")             
              .attr("transform","translate(" + (this.width/2) + " ," + (this.height + margin*2) + ")")
              .style("text-anchor", "middle")
              .text("time")
              .style("fill", "#9c9c9c")
              .style("font-size", font_item)
              .attr("opacity", this.label_o)
              .classed("error", true)
              .classed("axis-label", true);

          // text label for the y axis
          this.svg.append("text")
              .attr("transform", "rotate(-90)")
              .attr("x", -((this.height+margin)/2))
              .attr("y",0)
              .attr("dy", "1em")
              .style("text-anchor", "middle")
              .text("temperature")
              .style("fill", "#9c9c9c")
              .attr("opacity", this.label_o)
              .classed("error", true)
              .style("font-size", font_item)
              .classed("axis-label", true);    

            ////////////////////////////// colors + legends
              // create legend for error plot colors
              var legend_error = this.d3.select("#bees-legend")
                .append("g").classed("legend_color", true)
                .classed("error", true)
              
                 var nudge_x = 2*margin;
                 var nudge_y = this.height*.05;

                var error_stroke = this.d3.scaleOrdinal()
                  .domain(["Predicted","Observed"])
                  .range([this.color_obs, this.color_exp]);

                  var error_fill = this.d3.scaleOrdinal()
                  .domain(["Predicted","Observed"])
                  .range([this.color_exp,"#292b30"]);

               // draw link between legend items
               legend_error
                  .append("line").classed("leg-link", true)
                  .attr("x1", nudge_x+20)
                  .attr("x2", nudge_x+20)
                  .attr("y1", nudge_y+30)
                  .attr("y2", nudge_y+30)
                  .attr("stroke",this.color_d100)
                  .attr("stroke-width", "8px")
                  .style("opacity", this.link_o);

              legend_error.append("text")
                .text("Temperature")
                .attr("x", nudge_x)
                .attr("y", nudge_y)
                .style("fill", "white")
                 .style("font-size", font_item)
                 .style("font-weight","bold")
                 .style("opacity", this.o_pred)
                 .classed("error_1" , true)

                // set positioning for error legend
                var legend = legend_error.selectAll(".legend")
                  .data(error_fill.domain().slice().reverse())
                  .enter().append("g")
                    .attr("class", "legend")
                    .attr("transform", function(d,i) {
                      return "translate(" + (nudge_x+20) + " ,"  + (nudge_y + 30) + ")";
                    });

                legend.append("circle")
                  .attr("x", nudge_x)
                  .attr("y", nudge_y)
                  .attr("r", this.errorRadius)
                  .style("fill", error_fill)
                  .style("stroke", error_stroke)
                  .style("stroke-width",  this.stroke_w)
                  .style("opacity", this.o_pred)

                  legend.append("text")
                  .attr("x", "25px")
                  .attr("y", "8px")
                  .text(function(d) { return d; })
                  .style("fill", "white")
                  .style("font-size", "20px")

                   this.d3.select("g.legend:nth-child(4) text")
                  .attr("opacity", this.o_pred)
                  .classed("error_1" , true)

                  this.d3.select("g.legend:nth-child(4) circle")
                  .attr("opacity", this.o_pred)
                  .classed("error_1" , true)


                  this.d3.select("g.legend:nth-child(3) text")
                  .attr("opacity", this.o_obs)
                  .classed("error_2" , true)

                  this.d3.select("g.legend:nth-child(3) circle")
                  .attr("opacity", this.o_obs)
                  .classed("error_2" , true)

                  // rmse updating model label
                  legend_error.append("text")
                  .text("Root mean square error (RMSE)")
                  .attr("x", margin)
                  .attr("y", this.height+nudge_y)
                  .style("fill", "white")
                  .style("font-size", font_item)
                  .attr("line-height", "35px")
                  .style("font-weight","bold")
                  .style("opacity", this.o_rmse_title)
                  .classed("rmse-name" , true)

              //updating label
                 legend_error.append("text")
                  .text(this.model_current)
                  .attr("x", 510)
                  .attr("y", this.height+nudge_y)
                  .style("fill", "white")
                  .style("font-size", font_item)
                  .attr("line-height", "35px")
                  .style("font-weight","100")
                  .style("opacity", this.o_rmse_title)
                  .classed("rmse-name" , true)
                  .classed("model" , true)

             /// rmse legend
                  var legend_rmse = this.d3.select("#bees-legend")
                    .append("g").classed("rmse-legend", true)
                    .classed("rmse", true)
              
                 var nudge_x_rmse = 780;

                var rmse_stroke = this.d3.scaleOrdinal()
                  .domain(["100%","0.1%"])
                  .range([this.color_d100,  this.color_d001]);

                  var rmse_fill = this.d3.scaleOrdinal()
                  .domain(["100%","0.1%"])
                  .range([this.color_d100,  this.color_fill]);

              legend_rmse.append("text")
                .text("Training data")
                .attr("text-anchor", "end")
                .attr("x", this.width-margin)
                .attr("y", nudge_y)
                .style("fill", "white")
                 .style("font-size", font_item)
                 .style("font-weight","bold")
                 .style("opacity", this.o_train)
                 .classed("rmse-title", true)

                var legend_r = legend_rmse.selectAll(".legend-rmse")
                  .data(rmse_fill.domain().slice())
                  .enter().append("g")
                    .attr("class", "legend-rmse")
                    .attr("transform", function(d,i) {
                      return "translate(" + (nudge_x_rmse) + " ,"  + (nudge_y + 25 + i * 25) + ")";
                    });

                legend_r.append("circle")
                  .attr("x", nudge_x_rmse)
                  .attr("y", nudge_y)
                  .attr("r", this.radius)
                  .style("fill", rmse_fill)
                  .style("stroke", rmse_stroke)
                  .style("stroke-width",  this.stroke_w)

                  legend_r.append("text")
                  .attr("x", "20px")
                  .attr("y", "8px")
                  .text(function(d) { return d; })
                  .style("fill", "white")
                  .style("font-size", "20px")

                  this.d3.selectAll("g.legend-rmse:nth-child(2)") //
                  .style("opacity", this.o_train)
                  .classed("d_100", true)

                  this.d3.selectAll("g.legend-rmse:nth-child(3)") //
                  .style("opacity", this.o_exp)
                  .classed("d_001", true)

          // update axes based on active data
          this.xScale = this.d3.scaleLinear()
            .range([margin, this.width+margin])
            .domain([0,this.chartState.domain_x]);

          this.yScale = this.d3.scaleLinear()
            .range([this.height, margin])
            .domain([0,this.chartState.domain_y]);

          // define for updating axes and labels
            this.time_fade = 500;
            this.axis_label = this.d3.selectAll("text.axis-label");
            this.legend_predicted = this.d3.selectAll(".error_1");
            this.legend_observed = this.d3.selectAll(".error_2");
            this.axis_label_rmse = this.d3.selectAll("text.rmse-label");
            this.axis_arrow = this.d3.select("line.arrow")
            this.legend_model = this.d3.selectAll("text.rmse-name");
            this.legend_training = this.d3.selectAll("text.rmse-title");
            this.legend_training_d100 = this.d3.selectAll("g.legend-rmse.d_100"); //
            this.legend_training_d001 = this.d3.selectAll("g.legend-rmse.d_001"); // 0.1% dot and label

            ////////////////
            // initiate force simulation
            self.simulation = this.d3.forceSimulation(self.chartState.dataset, function(d) { return d.seg })
            .force("x", this.d3.forceX((d) => self.xScale(d[this.chartState.var_x])).strength(this.chartState.strengthx))
            .force('y', this.d3.forceY((d) => self.yScale(d[this.chartState.var_y])).strength(this.chartState.strengthx))
            .force("collide", this.d3.forceCollide(this.chartState.radius).strength(this.chartState.strengthr))
            .force("link", this.d3.forceLink(this.links).id(function(d) { return d.seg; }).strength(this.chartState.strengthlink))
      
            // draw links
            self.drawDiff();

          // tick to make sure dots are poistioned on first draw
            self.simJumpStart();
          },
          drawDiff() {
            const self = this;

         this.link = this.svg.append("g")
            .selectAll("line")
            .data(this.links)
            .enter().append("line").classed("link", true)
            .attr("stroke",this.color_d100)
            .attr("stroke-width", "8px")
            .style("opacity", this.link_o);

          },
          simJumpStart(){
            const self = this;
            // tick to make sure dots are poistioned on first draw

            let vdecay;
            if (this.step >= this.step_ann) {
              vdecay = 0.4;
            } else {
              vdecay = 0.5;
            }
            self.simulation
              .alpha(this.chartState.alpha)
              .alphaDecay(this.chartState.aDecay)
              .velocityDecay(vdecay)
              .restart()
              .on("tick", self.tick);
          },
          drawAxes(element, end) {
            const self = this;
            let time_slide = 500;
            element
              .transition()
              .duration(time_slide)
              .ease(this.d3.easeCircle)
              .style("stroke-dashoffset", end)

          },
          moveLegend(direction) {
            const self = this;
            let margin = 50;

            var nudge_x = margin*2;
            var nudge_y = this.height*.05;

            if (direction == "down"){
                  this.d3.select("g.legend:nth-child(3) circle")
                  .transition()
                  .duration(150)
                  .style("opacity", 1)

                  this.d3.select("g.legend:nth-child(3)")
                  .transition()
                  .duration(400)
                  .attr("transform", "translate(" + (nudge_x+20) + " ,"  + (nudge_y + 75) + ")")

                  this.d3.select("g.legend:nth-child(3) text")
                  .transition()
                  .duration(150)
                  .style("opacity", 1)

                  // draw link between legend items
                  this.d3.select("line.leg-link")
                    .transition()
                    .duration(400)
                    .attr("y2", nudge_y+75)

            } else if (direction == "up") {
             this.d3.select("g.legend:nth-child(2) text")
                  .transition()
                  .duration(150)
                  .style("opacity", 0)

                this.d3.select("g.legend:nth-child(2)")
                  .transition()
                  .duration(400)
                  .attr("transform", "translate(" + (nudge_x+20) + " ,"  + (nudge_y + 30) + ")")

                  this.d3.select("g.legend:nth-child(2) circle")
                  .transition()
                  .duration(150)
                  .style("opacity", 0)

                  // draw link between legend items
                  this.d3.select("line.leg-link")
                    .transition()
                    .duration(400)
                    .attr("y2", nudge_y+30)

            }
          },
          moveAxes(alpha, ht) {
            const self = this;
            let time_slide = 500;
            // controls axis aniamtions between error chart and beeswarm
              this.xAxis
                .transition()
                .duration(time_slide)
                .ease(this.d3.easeCircle)
                .attr("transform", "translate(" + 0 + "," + (ht) + ")")
                .style("opacity", alpha)
          },
          updateChart() {
            //controls decision making for the error >> beeswarm chart
            const self = this;
            let margin = 50;

          // update axes based on active data
          this.xScale = this.d3.scaleLinear()
            .range([margin, this.width+margin])
            .domain([0,this.chartState.domain_x]);

          this.yScale = this.d3.scaleLinear()
            .range([this.height+margin,0])
            .domain([0,this.chartState.domain_y]);
            // this totally works but hardly see movement vs scaling??

            // update label under beeswarm with current model data in view
            this.d3.selectAll("text.rmse-name.model")
              .transition()
              .duration(500)
              .style("opacity", 0)
              .remove()

            // redraw label
            this.d3.select("g.legend_color.error")
              .append("text")
              .classed("rmse-name" , true)
              .classed("model" , true)
              .text(this.model_current) // pulls current step model
              .attr("x", 510)
              .attr("y", this.height+25)
              .style("fill", "white")
              .style("font-size", "30px")
              .attr("line-height", "30px")
              .style("font-weight","100")
              .style("opacity", 0)
              .transition()
                .duration(200)
                .style("opacity", 1)

        // bind data
          let chart = this.svg.selectAll(".bees") // puts out error on intial draw until scrolled
          .data(this.chartState.dataset, function(d) { return d.seg }) // use seg as a key to bind and update data
          .attr("fill", (d) => self.set_colors(d[this.chartState.grouped])) // transitions color
           .attr("stroke", (d) => self.stroke_colors(d[this.chartState.grouped]))
           .attr("stroke-width", "3px")

        // modify forces to update chart
       // // first restart all forces and then define force velocity and ticking
      self.simulation = this.d3.forceSimulation(self.chartState.dataset, function(d) { return d.seg }) // is the key needed here?
          .force("x",null)
          .force('y', null)
          .force("collide", null)
          .force("link", null)
          .stop();

        self.simulation = this.d3.forceSimulation(self.chartState.dataset, function(d) { return d.seg }) // is the key needed here?
          .force("x", this.d3.forceX((d) => self.xScale(d[this.chartState.var_x])).strength(this.chartState.strengthx))
          .force('y', this.d3.forceY((d) => self.yScale(d[this.chartState.var_y])).strength(this.chartState.strengthy))
          .force("collide", this.d3.forceCollide(this.chartState.radius).strength(this.chartState.strengthr).iterations(1))
          .force("link", this.d3.forceLink(this.links).id(function(d) { return d.seg; }).strength(this.chartState.strengthlink))
          .stop();

        // define how elements are added and remove from view
        // attributes and positioning define the starting point
          chart.exit()
              .transition()
                .duration(500)
                .delay(function(d,i) { return 5* i})
                .attr("r", 0)
                .remove();

          chart
            .transition()
            .duration(500)
            .attr("r", this.chartState.rad)
            .attr("fill", (d) => self.set_colors(d[this.chartState.grouped])) // define entering color before appears
            .attr("stroke", (d) => self.stroke_colors(d[this.chartState.grouped]))
            .attr("stroke-width",  this.stroke_w)

            chart.enter()
              .append("circle")
              .classed("bees", true)
              .classed("fixed", function(d) { return d.fixed })
              .attr("cx", (d) => self.xScale(d[this.chartState.var_x]))
              .attr("fill", (d) => self.set_colors(d[this.chartState.grouped])) // define entering color before appears
              .attr("stroke", (d) => self.stroke_colors(d[this.chartState.grouped]))
              .attr("r", 0) 
              .attr("stroke-width",  this.stroke_w)
              .transition()
                .duration(800)
                .delay(function(d,i) { return 5* i})
                .attr("r", this.chartState.rad)

          // anything that should happen after points are updated
            chart
              .merge(chart)
              .transition()
                .duration(800)
                .delay(function(d,i) { return 5* i})
                .attr("fill", (d) => self.set_colors(d[this.chartState.grouped])) // transitions color
                .attr("stroke", (d) => self.stroke_colors(d[this.chartState.grouped]))
                .attr("r", this.chartState.rad)

          /////////// run sim
          self.simJumpStart();
          },
          tick() {
            // ticking the simulation moves the dots and link together
          const self = this;

          this.d3.selectAll(".bees")
            .attr('cx', function(d){return d.x})
            .attr('cy', function(d){return d.y})


          
            if (this.step >= this.step_error_exp-1 && this.step <= this.step_rmse+1) {
               this.link
                .attr('x1', function(d) { return d.source.x; })
                .attr('y1', function(d) { return d.source.y; })
                .attr('x2', function(d) { return d.target.x; })
                .attr('y2', function(d) { return d.target.y; });
            }

        }, 
        // scrollama event handler functions
        // add class on enter, update charts based on step
        handleStepEnter(response) {
          const self = this;
          this.now_step = this.last_step+1;

          // update step variable to match step in view
          this.step = response.index;
          console.log(response);

          ///////////          // assign forces
          // error chart steps
          if (this.mobileView) {
            if (this.step <= this.step_error_obs) {
              this.chartState.strengthy = 1;
              this.chartState.radius = 0;
              this.chartState.strengthr = 0;
              this.chartState.alpha = 1;
              this.chartState.aDecay = 0.1;
            }
            if (response.direction == "up" && this.step === this.step_error_obs ) {
              this.chartState.strengthy = 1;
              this.chartState.radius = 0;
              this.chartState.strengthr = 0;
              this.chartState.alpha = 1;
              this.chartState.aDecay = 0.1;
            }
            // push to overlap as single RMSE
            if (this.step === this.step_rmse && this.step <= this.step_rmse+3) {
              this.chartState.strengthy = 1;
              this.chartState.radius = 0;
              this.chartState.strengthr = 2;
              this.chartState.alpha = 1;
              this.chartState.aDecay = 0.1;
            }
            if (response.direction == "up" && this.step <= this.step_rmse + 3) {
              this.chartState.strengthy = 1.5;
              this.chartState.strengthy = 2;
              this.chartState.radius = 0;
              this.chartState.strengthr = 0;
              this.chartState.alpha = 1;
              this.chartState.aDecay = 0.1;
            }
            // intro beeswarm, adding experiments
            if (this.step <= this.step_ann_exp && this.step >= this.step_ann) {
              this.chartState.strengthy = 0.9;
              this.chartState.radius = this.paddedRadius;
              this.chartState.alpha = .2;
              this.chartState.aDecay = 0.15;
            }
            // RNN to end
            if (this.step >= this.step_rnn)  {
              this.chartState.strengthy = 0.3;
              this.chartState.radius = this.paddedRadius;
              this.chartState.alpha = 0.3;
              this.chartState.aDecay = 0.15;
            }
          }else {
         if (this.step <= this.step_error_obs) {
            this.chartState.strengthy = 1;
            this.chartState.radius = 0;
            this.chartState.strengthr = 0;
             this.chartState.alpha = 1;
             this.chartState.aDecay = 0.1;
          }
           if (response.direction == "up" && this.step === this.step_error_obs ) {
            this.chartState.strengthy = 1;
            this.chartState.radius = 0;
             this.chartState.strengthr = 0;
             this.chartState.alpha = 1;
             this.chartState.aDecay = 0.1;
          }
          // push to overlap as single RMSE
          if (this.step >= this.step_rmse && this.step <= this.step_rmse+2) {
            this.chartState.strengthy = 1;
            this.chartState.radius = 0;
             this.chartState.strengthr = 2;
             this.chartState.alpha = 1;
             this.chartState.aDecay = 0.1;
          }
          if (response.direction == "up" && this.step <= this.step_rmse+2) {
            this.chartState.strengthy = 1.5;
            this.chartState.strengthy = 2;
            this.chartState.radius = 0;
             this.chartState.strengthr = 0;
             this.chartState.alpha = 1;
             this.chartState.aDecay = 0.1;
          }

          // intro beeswarm, adding experiments
          if (this.step <= this.step_ann_exp && this.step >= this.step_ann) {
            this.chartState.strengthy = 0.9;
            this.chartState.radius = this.paddedRadius;
            this.chartState.alpha = .3;
            this.chartState.aDecay = 0.15;
          }
          // RNN to end
          if (this.step >= this.step_rnn ) {
            this.chartState.strengthy = 0.3;
            this.chartState.radius = this.paddedRadius;
            this.chartState.alpha = 0.3;
            this.chartState.aDecay = 0.15;
          }
          }

          /////////// REDRAW beessawrm
          this.chartState.strengthx = 1;
          this.setDataVars(); /// refresh data chart is based on step

          // array of transition steps on down scroll
          var down_transitions = [this.now_step, this.step_error_exp, this.step_error_obs, this.step_rmse,this.step_rmse+1,this.step_rmse+2, this.step_ann, this.step_ann_exp, this.step_rnn, this.step_rgcn, this.step_rgcn_ptrn];
          // for upscroll subtract 1 from each step
          var up_transitions = down_transitions.map( function(value) { 
              return value - 1; 
          } );
          // run update function only if the active step has a chart transition
          if (this.step >= this.step_error_exp) {
            if (response.direction == "down" && down_transitions.indexOf(this.step) !== -1){
              self.updateChart(response.direction);
            } else if (response.direction == "up" && up_transitions.indexOf(this.step) !== -1) {
              self.updateChart(response.direction);
            }
          };

        // updates to go with downscroll
          if (response.direction == "down"){
            if (this.step == this.step_error_exp) {
                self.drawAxes(this.xAxis, 0); // draw axes
                self.drawAxes(this.yAxis, 0); // draw axes
                //self.moveAxes(1, this.height+this.margin); 

                self.fadeIn(this.d3.selectAll(".link"), this.time_fade);
                 self.fadeIn(this.d3.select("line.leg-link"), this.time_fade);
                self.fadeIn(this.axis_label, this.time_fade); // show error axis labels
                self.fadeIn(this.legend_predicted, this.time_fade); // show predicted in legend

              }  else if (this.step == this.step_error_obs) {
                self.moveLegend("down"); // add observed to legend
              }  else if (this.step == this.step_rmse) {
                self.moveAxes(0, this.height/2);  // move axis up to center plot for RMSEs
                self.fadeOut(this.xAxis, this.time_fade);
                self.fadeOut(this.yAxis, this.time_fade);

                // rmse legend in and error legend out
                self.fadeOut(this.d3.select("line.leg-link"), this.time_fade);
                self.fadeOut(this.axis_label, this.time_fade); // remove error axis labels
                self.fadeOut(this.legend_predicted, this.time_fade); // remove error legend
                self.fadeOut(this.legend_observed, this.time_fade); // remove error legend
                //arrow appears for rmse axis labelling
                self.fadeIn(this.axis_arrow);
                self.fadeIn(this.axis_label_rmse, this.time_fade);// add rmse accurate to inaccurate labels
                self.fadeIn(this.legend_model, this.time_fade); // show rmse model type
              } else if (this.step == this.step_ann) {
                // half of rmse legend appears for beeswarm
                self.fadeIn(this.legend_training, this.time_fade) 
                self.fadeIn(this.legend_training_d100, this.time_fade)

              } else if (this.step == this.step_ann_exp) {
                self.fadeIn(this.legend_training_d001, this.time_fade) 
              } 

              //updating title
              if (this.step < this.step_error_exp-2) {
                this.title_text = "Training an artificial neural network"
                } else if (this.step >= this.step_error_exp && this.step < this.step_rnn_title) {
                this.title_text = "Testing an artificial neural network (ANN)"
              } else if (this.step >= this.step_rnn_title && this.step < this.step_rgcn_title) {
                this.title_text = "Recurrent neural network (RNN)"
              } else if (this.step >= this.step_rgcn_title && this.step < this.step_rgcn_ptrn_title) {
                this.title_text = "Graph convolutional network"
              } else if (this.step >= this.step_rgcn_ptrn_title ) {
                this.title_text = "Knowledge-guided deep learning"
              } 
             
          }

           // add class to active step
          response.element.classList.add("is-active");

          // trigger flubber
          this.animateFlubber(response.element.id, response.direction);

        },
        handleStepExit(response) {
          const self = this;
          // changes css for class
          response.element.classList.remove("is-active");// add remove class on exit

        if (response.direction == "up") {

          if (this.step == this.step_error_exp) {
            self.drawAxes(this.yAxis, this.height+this.margin*2);
            self.drawAxes(this.xAxis, this.width+this.margin);

            this.d3.selectAll(".bees").remove()
            self.fadeOut(this.d3.selectAll(".link"), this.time_fade);
            self.fadeOut(this.axis_label, this.time_fade);
            self.fadeOut(this.legend_predicted, this.time_fade);
          }  else if (this.step == this.step_error_obs ) {
            self.moveLegend("up");
           self.fadeOut(this.legend_observed, this.time_fade);
          } else if (this.step == this.step_rmse) {
            self.fadeIn(this.xAxis, this.time_fade);
            self.fadeIn(this.yAxis, this.time_fade);
            self.moveAxes(1, this.height+this.margin); 

            self.fadeIn(this.d3.select("line.leg-link"), this.time_fade);
            self.fadeIn(this.axis_label, this.time_fade);
            self.fadeIn(this.legend_predicted, this.time_fade);
            self.fadeIn(this.legend_observed, this.time_fade);
            self.fadeOut(this.axis_label_rmse, this.time_fade);
            self.fadeOut(this.axis_arrow, this.time_fade);
            self.fadeOut(this.legend_model, this.time_fade);

          } else if (this.step == this.step_ann) {
            // half of legend for beeswarm
             self.fadeOut(this.legend_training, this.time_fade) 
             self.fadeOut(this.legend_training_d100, this.time_fade)
          } else if (this.step == this.step_ann_exp) {
             self.fadeOut(this.legend_training_d001, this.time_fade) 
          } 
          //updating title
              if (this.step < this.step_error_exp+1) {
                this.title_text = "Training an artificial neural network"
                } else if (this.step >= this.step_error_exp+1 && this.step < this.step_rnn_title+1) {
                this.title_text = "Testing an artificial neural network (ANN)"
              } else if (this.step >= this.step_rnn_title+1 && this.step < this.step_rgcn_title+1) {
                this.title_text = "Recurrent neural network (RNN)"
              } else if (this.step >= this.step_rgcn_title+1 && this.step < this.step_rgcn_ptrn_title+1) {
                this.title_text = "Graph convolutional network"
              } else if (this.step >= this.step_rgcn_ptrn_title+1 ) {
                this.title_text = "Knowledge-guided deep learning"
              } 
        }
 
        },
        fadeOut(element, time) {
          element
          .transition()
          .duration(time)
          .style("opacity",0)
        },
         fadeIn(element, time) {
          element
          .transition()
          .duration(time)
          .style("opacity",1)
        }
    }
  }
</script>
<style scoped lang="scss">

// IMPORT COLORS
$backgroundCharcoal: #292b30;
$boxCharcoal: #0f0f0f;
$offWhite: #F1F1F1;
$offWhiteBox: #dedede;
$plasmaYellow: #FAB62F;
$plasmaPink: #BE3D7D;
$plasmaPurple: #62039A;
$plasmaBlue: #142167;
$darkBlue: #192c42;
$footerBlue: #00264C;
$mediumBlue: #5D9DC7; 
$grayBlue: #777b80;
$dimGray: #9c9c9c;

//style steps
#outro-container {
    position: relative;
  top: 0;
  left: 0;
  height: auto;
}
.model-text-content {
  margin: 0 auto;
  padding: 2em;   
  @media screen and (max-width: 600px) {
      padding: 10px;
  }  
}

article {
  position: relative;
  margin: 10vh auto;
  height: 100%;
  width: auto;
  top: -110vh;
}

.viz-title-scrolly {
  @media screen and (max-width: 600px) {
    font-size: 14pt;
  }
}
@media screen and (max-width: 600px) {
.title-container {
  position: absolute;
  display: table;
  height: 10vh;
}
.area {
  position: realtive;
  height: 10vh;
  width: 10vh;  
}
}
#sticky-titles {
    grid-column: 1 / span 3;
    grid-row: 1 / 1;
    height: 100%;
    width: auto;
    min-width: 0;
    min-height: 0;
    @media screen and (min-height: 600px) {
      grid-column: 1 / span 3;
      grid-row: 1 / 1;
    }
    @media screen and (max-width: 600px) {
      grid-column: 2 / 2;
      grid-row: 1 / 1;
    }
  }
.viz-title-sticky {
  margin: 0 auto;
  padding: .7em;  
  @media screen and (min-height: 770px) {
  }
  @media screen and (max-width: 600px) {

    font-size: 16pt;
    text-align: center;
    display: table-cell;
    vertical-align: middle;
  }
}
.step-container {
  width:100vw;
  height: auto;
}

.step {
  position: relative;
  //width: 28vw;
  padding-top: 1.1em;
  z-index: 1;
  height: 100vh;
  border: 1px;
  @media screen and (max-width: 600px) {
    width: 90%;
    margin: auto;
  }
  .step-text {
    color: $offWhiteBox;
    padding: 1em;
    background-color: $boxCharcoal;
    border-radius: 5px;
    @media screen and (max-width: 600px) {
      font-size: 12.5pt;
    }
  }
}

#end.step {
  height: 0px;
  opacity: 0;
  //margin-bottom: 50vh; // adding this to trigger hidden later since there's a space here  regardless
}
#last.step {
  height: auto;
}
.step:first-of-type {
  margin-top: 10vh;
}
// add sticky header to steps to maintain while given model is shown
.scroll-sticky {
  z-index: 1;
  position: -webkit-sticky;
  position: sticky;
  top: 25px;
  left: 0;
  padding-top: 0px;
}
.stuck {
  position: -webkit-sticky;
  position: sticky;
}

//start at beginning
//grid layout
#modeling {
  width: 100vw;
  height: auto;
}

// set up structure for sticky elements
// beeswarm and flubber contained in sticky figure
figure.sticky.intro {
  top: 0;
  width: 100vw;
  height: auto;
  margin-bottom: 0vh;
}

#intro-container.text-content.text-intro h2 {
  margin: 0;
}

figure.sticky.charts {
  display: grid;
  padding-top: 1.1em;
  grid-template-rows: 15% 70% 15%;
  grid-template-columns: 2% 1fr 1fr 2%;
  z-index: 1;
  
  top: 0vh; 
  height: 100vh;
  width: auto;
  @media screen and (min-height: 800px) {
    grid-template-rows: 10% 30% 50% 10%;
    grid-template-columns: 2% 1.5fr 2%;
  }
  @media screen and (max-width: 600px) {
    top: 0.5vh;
    height: 99.5vh;
    grid-template-rows: 13% 30% 30% 35%;
    grid-template-columns: 2% auto 2%;
    padding-top: 0.5em;
  }
 
 
  #flubber-container {
    grid-column: 2 / 2;
    grid-row: 2 / 2;
    height: 100%;
    width: auto;
    min-width: 0;
    min-height: 0;
    @media screen and (min-height: 800px) {
      grid-column: 2 / 2;
      grid-row: 2 / 2;
    }
    @media screen and (max-width: 600px) {
      grid-column: 2 / 2;
      grid-row: 2 / 2;
    }
  }

  #flubber-svg {
    height: 100%;
    width: 100%;
  }

  #error-container {
    grid-column: 3 / 3;
    grid-row: 2 / 2;
    @media screen and (min-height: 800px) {
      grid-column: 2 / 2;
      grid-row: 3 / 3
    }
    @media screen and (max-width: 600px) {
      grid-column: 2 / 2;
      grid-row: 3 / 3;
    }
  }

  #bees-container {
    grid-column: 3 / 3;
    grid-row: 2 / 2;
    height: 100%;
    width: 90%;
    max-width: 700px;
    margin: auto;
    @media screen and (min-height: 800px) {
      grid-column: 2 / 2;
      grid-row: 3 / 3;
    }
    @media screen and (max-width: 600px) {
      grid-column: 2 / 2;
      grid-row: 3 / 3;
    }
  }

  #legend-container {
    grid-column: 3 / 3;
    grid-row: 2 / 2;
    height: 100%;
    width: 90%;
    max-width: 700px;
    margin: auto;
    @media screen and (min-height: 800px) {
      grid-column: 2 / 2;
      grid-row: 3 / 3;
    }
    @media screen and (max-width: 600px) {
      grid-column: 2 / 2;
      grid-row: 3 / 3;
    }
  }
}

.x-axis {
  fill: #9c9c9c;
  color: #9c9c9c;
  stroke: #9c9c9c;
}

.axis-label text {
  fill:white;
  font-weight: 300;
  font-size: 20px;
}

.axis-line {
  stroke-width: 5px;
}
.axis-label {
  fill: #9c9c9c;
  font-weight: 300;
  font-size: 20px;
}
.arrow {
  fill: $offWhite;
  opacity: 0;
}

.text-annotate {
  fill:$offWhite;
  font-weight: 300;
  font-size: 20px;
  .left {
    text-anchor: left;

  }
  .right {
    text-anchor: right;
  }
}
</style>
