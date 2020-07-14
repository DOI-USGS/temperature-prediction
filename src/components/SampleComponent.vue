<template>
  <section id="sample-component">
    <h3>A Very simple component example</h3>
    <button @click="changeColor">
      change
    </button>
    <div id="radialCharts" />
  </section>
</template>

<script>
    import * as d3 from "d3";

    export default {
        name: 'SampleComponent',
        data() {
            return {
                indexOfColorArray: 0
            }
        },
        mounted() {
                var w = 300, h = 300;
                var viz = d3.select("#radialCharts").append("div").append("svg").attr("width", w).attr("height", h);
                // circle math constants (assuming that Jan 1 = top of circle and moving clockwise)
                var centroid_x = 150, centroid_y = 150,
                        angle_per_day = 2*Math.PI/365,
                        inner_r = 40,
                        bar_length_max = 100,
                        bar_length_min = 0;

                function add_bars(data) {
                    var wu_min = d3.min(data, d => d.wu_total),
                            wu_max = d3.max(data, d => d.wu_total);
                    data.forEach(function(d) {
                        d.wu_rescaled = ( ((d.wu_total - wu_min) * (bar_length_max - bar_length_min)) / (wu_max - wu_min) ) + bar_length_min;
                        d.angle = (Math.PI/2 - angle_per_day*(d.day_nu - 1)); // calculate the angle from the top of the circle to the day
                        d.x1 = centroid_x + inner_r*Math.cos(d.angle); // x position on the inner circle to start the line segment representing wu
                        d.y1 = centroid_y + inner_r*-Math.sin(d.angle); // y position on the inner circle to start the line segment representing wu
                        d.x2 = d.x1 + d.wu_rescaled*Math.cos(d.angle); // x position to end the line segment for each day (based on WU value)
                        d.y2 = d.y1 + d.wu_rescaled*-Math.sin(d.angle); // y position to end the line segment for each day (based on WU value)
                    });

                    viz.append("g").selectAll("line")
                            .data(data)
                            .enter()
                            .append("line")
                            .attr("stroke","grey")
                            .attr("stroke-width","1")
                            .attr("x1", function(d) {return d.x1})
                            .attr("y1", function(d) {return d.y1})
                            .attr("x2", function(d) {return d.x2})
                            .attr("y2", function(d) {return d.y2});
                }
                // Add Thermoelectric radial chart
                d3.csv("https://maptiles-prod-website.s3-us-west-2.amazonaws.com/misc/WBEEPWaterUse/te_bar_data.csv").then(function(data) {
                    return add_bars(data);
                });
                // maybe the start of how the time ticker gets added
                viz.append("line")
                        .attr("stroke", "pink")
                        .attr("x1", centroid_x)
                        .attr("y1", centroid_y - inner_r)
                        .attr("x2", centroid_x)
                        .attr("y2", centroid_y - inner_r - 225);

                // add class to SVG so keep that area small compared to map
                viz.attr("class", "radial_area")
            },
        methods: {
            changeColor() {
                const targetElement = document.querySelector('#sample-component');
                const colorIndex = ['blue', 'red', 'green', 'yellow'];

                targetElement.style.background = colorIndex[this.indexOfColorArray];
                this.indexOfColorArray === colorIndex.length -1 ? this.indexOfColorArray = 0 : this.indexOfColorArray++;
            }
        }

    }

</script>

<style scoped lang="scss">

</style>
