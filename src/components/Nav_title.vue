<template>
  <nav id="nav">
    <div>
      <!-- p class="chapter">
        Go to Chapter
      </p -->
      <!-- router-link
        to="/"
        @click.native="$scrollToTop"
      >
        1. Importance
      </router-link -->
      <div class="overall-title">
        <div class="text-content">
          <h3 class="nav-title">How we<router-link
            to="/monitoring"
            @click.native="scrollToTop"
          >Monitor</router-link><span class="dim_text">|</span><router-link
            to="/modeling"
            @click.native="scrollToTop"
          >Model</router-link><br>Stream Temperature in the<br>
          Delaware River Basin</h3>
          <br>
          <!--p class="byline">
            U.S. Geological Survey
          <br>
            Water Mission Area's Vizlab
          </p -->
        </div>
      </div>

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
        name: 'NavTitle',
        data() {
          return {
            currentLinks: null,
          }
        },
        mounted() {
            // this.setPanels();
        },
        methods: {
          // setPanels() {
          //   this.currentLinks = document.querySelectorAll('a[href="#/'+document.URL.split('/').pop()+'"]')
          //   console.log("current links")
          //   console.log(this.currentLinks)
          //   this.currentLinks.forEach(function(link) {
          //       console.log('classList')
          //       console.log(link.classList)
          //       // link.className += ' current-link'
          //       link.classList.add('current-link')
          //       console.log('classList2')
          //       console.log(link.classList)
          //   });
          // }
        }
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

.overall-title {
  background-image: url("../assets/river_draft_charcoal.png"); //url("../assets/c2p2_matrix_FOR_TITLE_40_stretched.png");
  background-color: #292b30; //#1a1a1f #202226
  background-size: 100% 100%; //cover;
  background-position: center;
}
.dim_text {
    color: #9c9c9c;
}

  // .current-link {
  //   color: $plasmaYellow;
  // }
  #nav a.router-link-active {
    color: $plasmaYellow;
    box-shadow: 0 2px 0 $plasmaYellow;
  }

  #nav {
    text-align: left;
    padding: 0px 0 10px 0;
  }
  @media (max-width: 600px) {
    #nav a {
      font-size: 24px;
    }
  }


  .nav-title {
    color: $offWhite;
    font-family: 'Georgia', Helvetica, Arial, sans-serif;
    line-height: 1.4;
    font-size: 1.8em;
    @media screen and (max-width: 600px) {
        font-size: 24px;
    }

  }

  #nav a {
    font-weight: 100;
    text-align: center;
    box-shadow: 0 0.5px 0 #9c9c9c;
    color: #9c9c9c;
    position: relative;
    padding: 0px 3px;
    margin: 0px 7px;
    text-decoration: none;
    // text-transform: uppercase;
  }

  // #nav a:visited {
  //   font-weight: 400;
  //   color: $plasmaYellow;
  // }
  #nav a:focus {
    color: $plasmaYellow;
    outline: none;
  }

  #nav a:hover {
    font-weight: 100;
    color: $backgroundCharcoal;
    background-color: $plasmaYellow;
    box-shadow: None;
    border-radius: 5px;
    padding: 5px;
    // transition: background-color .2s ease;
    cursor: pointer;
  }

  #nav a:active {
    box-shadow: none;
    top: 5px;
  }

 

</style>