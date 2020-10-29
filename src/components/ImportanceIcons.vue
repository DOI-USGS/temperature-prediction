<template>
  <div id="icons" class="text-content"> 
      <h2>Water temperature is a key indicator of water quality in the Delaware River Basin</h2>
      <div class="grid-container">
        <div class="grid-item icon" id="icon-1">[Icon here]</div>
        <div class="grid-item icon" id="icon-2">[Icon here]</div>
        <div class="grid-item icon" id="icon-3">[Icon here]</div>
        <div class="grid-item icon" id="icon-4">[Icon here]</div>
        <div class="grid-item desc" id="desc-1">Solubility of many dissolved gases</div>
        <div class="grid-item desc" id="desc-2">Growth rates and abundance of fish</div>
        <div class="grid-item desc" id="desc-3">Biogeochemical fate of in-stream nutrients</div>
        <div class="grid-item desc" id="desc-4">Emergence of harmful algal blooms</div>
    </div>
  </div>
</template>

<script>
    export default {
        name: 'ImportanceIcons'
    }
</script>

<style scoped>
    .grid-container {
        padding: 30px;
        display: grid;
        grid-template-columns: 30% 70%;
        grid-template-rows: repeat(4, 1fr);
        gap: 10px 10px;
        grid-template-areas:
            "icon-1 desc-1"
            "icon-2 desc-2"
            "icon-3 desc-3"
            "icon-4 desc-4";
    }

    .grid-item {
        padding: 10px;
    }

    .icon {
        text-align: center;
    }

    #icon-1 {
        grid-area: icon-1; 
    }

    #icon-2 {
        grid-area: icon-2; 
    }

    #icon-3 {
        grid-area: icon-3; 
    }

    #icon-4 {
        grid-area: icon-4; 
    }

    #desc-1 {
        grid-area: desc-1; 
    }

    #desc-2 {
        grid-area: desc-2; 
    }

    #desc-3 {
        grid-area: desc-3; 
    }

    #desc-4 {
        grid-area: desc-4; 
    }

</style>