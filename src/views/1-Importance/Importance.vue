<template>
  <div id="importance" class="text-content">
      <h2>Importance</h2>
      <p>We'll place all the content for Chapter 1 - Importance - in here!</p>
      <p>Try clicking around on the nav bar up top to go to other parts of the viz.</p>
    <IntroMap />
  </div>
</template>

<script>

  export default {
    name: "Importance",
    components: {
      IntroMap: () => import( /* webpackPrefetch: true */ /*webpackChunkName: "intromap"*/ "./../../components/IntroMap"),
    }
  }
</script>

<style scoped lang="scss">
</style>
