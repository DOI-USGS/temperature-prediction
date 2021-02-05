<template>
  <nav id="nav">
    <div>
      <p class="chapter">
        Go to Chapter
      </p>
      <router-link
        to="/"
        
      >
        1. Importance
      </router-link>
      <router-link
        to="/monitoring"
        
      >
        2. Monitoring
      </router-link>
      <router-link
        to="/modeling"
        
      >
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
$lightBlue: #AAD1EC;
$grayBlue: #576069; //#4F5C67

// OLD COLORS
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
      box-shadow: 0 1px 0 $mediumBlue;
      color: $offWhite;
      position: relative;
      padding: 0px 6px;
      margin: 0px 10px;
      text-decoration: none;
      text-transform: uppercase;
    }

  #nav a:hover {
    background-color: $mediumBlue;
    border-radius: 5px;
    padding: 6px;
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