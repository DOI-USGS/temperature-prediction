<template>
  <nav id="nav">
    <div>
      <p class="chapter">
        Go to Chapter
      </p>
      <router-link to="/">
        1. Importance
      </router-link>
      <router-link to="/monitoring">
        2. Monitoring
      </router-link>
      <router-link to="/modeling">
        3. Modeling
      </router-link>
    </div>
    <div>
      <!-- <p class="nav-title">
        Choose a chapter
      </p> -->
    </div>
  </nav>
</template>

<script>
    export default {
        name: 'Nav'
    }
</script>

<style lang="scss" scoped>
// IMPORT COLORS
$backgroundCharcoal: #171717;
$offWhite: rgb(241, 241, 241);
$monotoneBlue1: #e9eced;
$monotoneBlue2: #c3cccf;
$monotoneBlue3: #88989f;
$monotoneBlue4: #4c656e;
$monotoneBlue5: #10313e;
$monotoneBlueTransparent: rgba(76,101,110, .2);


    #nav {
      text-align: center;
      padding: 40px 0 40px 0;   
    }
    @media (max-width: 600px) {
      #nav a {
        font-size: .7em;
      }
    }


    .nav-title {
      text-align: center;
      font-size: .8em;
      font-style: italic;
      margin-top: 10px;
    }

    #nav a {
      font-weight: 100;
      text-align: center;
      box-shadow: 0 1px 0 $monotoneBlue5;
      color: $offWhite;
      position: relative;
      padding: 0px 6px;
      margin: 0px 10px;
      text-decoration: none;
      text-transform: uppercase;
    }

  #nav a:hover {
    background-color: $monotoneBlueTransparent;
    transition: background-color .2s ease;
    cursor: pointer;
  }

  #nav a:active {
    box-shadow: none;
    top: 5px;
  }

  #nav a:focus {
    outline: none;
  }

</style>