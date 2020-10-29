<template>
  <section id="importance">
    <div class="text-content">
      <h2>Importance</h2>
      <p>The Delaware River Basin covers 13,500 square miles in parts of four states, including New York, New Jersey, Pennsylvania, and Delaware. The Delaware River is rich in history, ecologically diverse, and critical to the regional economy.</p>
      <p>Water managers in this region have a long history of applying innovative, regional solutions to ensure the long-term sustainability of this resource, which provides drinking water to over 15 million people in the region.</p>
    </div>
    <IntroMap />
    <ImportanceIcons />
    <div class="text-content">
      <p>Many species – including economically important game species like Brown trout and endangered species like the Dwarf wedgemussel – thrive or spawn in specific temperature ranges. Increases in river water temperature are happening all over the globe, and in the Delaware River Basin, urbanization, climate change, and human modification of hydrology can all increase water temperature. Fortunately, water managers in the basin can modify stream temperature via cold water releases from reservoirs. The ability to predict water temperature, and therefore make an educated guess at when, where, and how much cold water to release can help protect cold water habitat in the Delaware River basin.</p>
      <p>Modeling water temperature allows us to fill gaps in our knowledge about water temperature, including predicting water temperature in the future. Here, we explore new techniques developed by the USGS to model water temperature in the Delaware River Basin.</p>
    </div>
  </section>
</template>

<script>

  export default {
    name: "Importance",
    components: {
      IntroMap: () => import( /* webpackPrefetch: true */ /*webpackChunkName: "intromap"*/ "./../../components/IntroMap"),
      ImportanceIcons: () => import( /* webpackPrefetch: true */ /*webpackChunkName: "importanceicons"*/ "./../../components/ImportanceIcons")
    }
  }
</script>

<style scoped lang="scss">
</style>
