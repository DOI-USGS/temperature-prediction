<template>
  <section id="importance">
    <title id="page-title">
      Temperature Predition Modeling in the Delaware River Basin
    </title>
    <desc id="page-desc">
      A three-chapter explainer on how and why the USGS monitors and models stream temperature in the Delaware River Basin.
    </desc>
    <div class="text-content">
      <h1>Temperature Prediction Modeling in the Delaware River Basin</h1>
      <p class="byline">
        U.S. Geological Survey
      </p>
      <p class="byline">
        Water Mission Area's Vizlab
      </p>
      <div class="section-title-wrapper">
        <h2>Why is predicting stream temperature important?</h2>
      </div>
      <p>The Delaware River Basin covers 13,500 square miles in parts of four states, including New York, New Jersey, Pennsylvania, and Delaware. The Delaware River is rich in history, ecologically diverse, and critical to the regional economy. Water managers in this region have a long history of applying innovative, regional solutions to ensure the long-term sustainability of this resource, which provides drinking water to over 15 million people in the region.</p>
      <p>Water managers in this region have a long history of applying innovative, regional solutions to ensure the long-term sustainability of this resource, which provides drinking water to over 15 million people in the region.</p>
    </div>
    <IntroMap />
    <ImportanceIcons />
    <div class="text-content">
      <p>Many species – including economically important game species like Brown trout and endangered species like the Dwarf wedgemussel – thrive or spawn in specific temperature ranges. Increases in river water temperature are happening all over the globe, and in the Delaware River Basin, urbanization, climate change, and human modification of hydrology can all increase water temperature. Fortunately, water managers in the basin can modify stream temperature via cold water releases from reservoirs. The ability to predict water temperature, and therefore make an educated guess at when, where, and how much cold water to release can help protect cold water habitat in the Delaware River basin.</p>
      <p>At the core of understanding water temperature in the Delaware River Basin is monitoring, but modeling water temperature can fill gaps in our knowledge. Here, we explore USGS temperature monitoring and state-of-the-art modeling techniques to predict water temperature in the Delaware River Basin.</p>
      <p>Use the navigation buttons below to read the next chapter: Monitoring.</p>
    </div>
  </section>
</template>

<script>

  export default {
    name: "Importance",
    components: {
      IntroMap: () => import( /* webpackPreload: true */ /*webpackChunkName: "intromap"*/ "./../../components/1-Importance/IntroMap"),
      ImportanceIcons: () => import( /* webpackPreload: true */ /*webpackChunkName: "importanceicons"*/ "./../../components/1-Importance/ImportanceIcons")
    }
  }
</script>

<style scoped lang="scss">
.byline {
  font-style: italic;
  font-weight: 100;
}
</style>
