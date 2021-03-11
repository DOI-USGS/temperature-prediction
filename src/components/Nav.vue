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
      <p><router-link
        to="/monitoring"
        @click.native="scrollToTop"
      >Monitor</router-link> <router-link
        to="/modeling"
        @click.native="scrollToTop"
      >Model
      </router-link></p>
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
        name: 'Nav',
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


  // .current-link {
  //   color: $plasmaYellow;
  // }
  #nav a.router-link-active {
    color: $plasmaYellow;
    box-shadow: 0 2px 0 $plasmaYellow;
  }

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
    color: $offWhite;
    font-family: 'Georgia', Helvetica, Arial, sans-serif;
    line-height: 1.4;
    // text-align: center;
    // font-size: .8em;
    // font-style: italic;
    // margin-top: 10px;
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