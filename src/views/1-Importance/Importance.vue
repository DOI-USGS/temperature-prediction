<template>
  <section id="importance">
    <div class="text-content page-title section-title-wrapper">
      <p class="chapter">
        Chapter 1
      </p>
      <h2>The Importance of Predicting Stream Temperature</h2>
    </div>
    <div class="text-content">
      <p>The Delaware River Basin covers 13,500 square miles in parts of four states, including New York, New Jersey, Pennsylvania, and Delaware. The Delaware River is rich in history, ecologically diverse, and critical to the regional economy.</p>
      <p>Water managers in this region have a long history of applying innovative, regional solutions to ensure the long-term sustainability of this resource, which provides drinking water to over 15 million people in the region.</p>
    </div>
    <IntroMap />
    <br>
    <ImportanceIcons />
    <div class="text-content">
      <p>Many species – including economically important game species like Brown trout and endangered species like the Dwarf wedgemussel – thrive or spawn in specific temperature ranges. Increases in river water temperature are happening all over the globe, and in the Delaware River Basin, urbanization, climate change, and human modification of hydrology can all increase water temperature. Fortunately, water managers in the basin can modify stream temperature via cold water releases from reservoirs. The ability to predict water temperature, and therefore make an educated guess at when, where, and how much cold water to release can help protect cold water habitat in the Delaware River basin.</p>
      <p>Basin-wide monitoring of water temperature underpins our understanding of water temperature dynamics in the Delaware River Basin, but modeling water temperature dynamics can help fill gaps in our knowledge. Here, we explore USGS temperature monitoring and state-of-the-art modeling techniques to predict water temperature in the Delaware River Basin.</p>
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
// IMPORT COLORS
$backgroundCharcoal: #292b30; //#1E1F23 #26282b #202226 #292c33 #2a2d33
$boxCharcoal: #1a1b1c; //#28292D #1a1b1f #171717
$offWhite: #F1F1F1;
$plasmaYellow: #FAB62F;
$plasmaPink: #BE3D7D;
$plasmaPurple: #62039A;
$plasmaBlue: #142167;
$darkBlue: #0F2237;
$footerBlue: #00264C;
$mediumBlue: #5191bd; //#63B1E6 #579ecf
$lightBlue: #95b5cb;
$grayBlue: #777b80; //#4F5C67 #576069 #7B7F85

// OLD COLORS
$monotoneBlue1: #e9eced;
$monotoneBlue2: #c3cccf;
$monotoneBlue3: #88989f;
$monotoneBlue4: #4c656e;
$monotoneBlue5: #285C70; //#10313e
$monotoneBlueTransparent: rgba(76,101,110, .6);


</style>
