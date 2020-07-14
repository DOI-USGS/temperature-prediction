<template>
  <div id="visualization">
    <h1>{{ title }}</h1>
    <Set1 />
    <Set2 />
    <Set3 />
    <Set4 />
    <Set5 />
    <Set6 />
  </div>
</template>

<script>
  import Set1 from "./set1/Set1";
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
        Set1
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
