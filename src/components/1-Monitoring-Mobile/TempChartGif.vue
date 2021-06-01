
<template>
  <div
    id="animated-chart"
    text-align:center
  >
    <img
      class="animated-chart-gif"
      src="./../../assets/Temp_chart_mobile_gif.gif"
    >
  </div>
</template>

<script>
export default {
    name: "TempChartGif"
}
</script>

<style scoped>
  #animated-chart {
    width: 100%;
    text-align: center;
    max-height: 98vh;
  }
  img.animated-chart-gif{
    width: 100%;
    height: auto;
    max-height: 98vh;
  }
</style>