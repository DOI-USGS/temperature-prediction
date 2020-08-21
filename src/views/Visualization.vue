<template>
  <div id="visualization">

    <Set2 />
    <Set3 />
    <Set4 />
    <Set5 />
    <Set6 />
  </div>
</template>

<script>

  import Set2 from "./set2/Set2";
  import Set3 from "./set3/Set3";
  import Set4 from "./set4/Set4";
  import Set5 from "./set5/Set5";
  import Set6 from "./set6/Set6";

  export default {
    name: 'Visualization',
    components: {
        Set6,
        Set5,
        Set4,
        Set3,
        Set2,

    },
    data() {
        return {
            title: process.env.VUE_APP_TITLE
            }
        }

    }
</script>

<style scoped lang="scss">

</style>
