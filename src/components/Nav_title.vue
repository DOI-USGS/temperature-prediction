<template>
  <nav id="nav">
    <div>
      <div class="overall-title">
        <div class="text-content">
          <br>
          <h1 class="nav-title">
            How we<router-link
              to="/monitoring"
              @click.native="scrollToTop"
            >
              Monitor
            </router-link><span class="dim_text">|</span><router-link
              to="/modeling"
              @click.native="scrollToTop"
            >
              Model&nbsp;
            </router-link><br>Stream Temperature in the<br>
            Delaware River Basin
          </h1>
          <br>
        </div>
      </div>
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
        methods: {
            scrollToTop() {
                window.scrollTo(0,0);
            }
        }
    }
</script>

<style lang="scss" scoped>
// IMPORT COLORS
$backgroundCharcoal: #292b30;
$boxCharcoal: #0f0f0f;
$offWhite: #F1F1F1;
$offWhiteBox: #dedede;
$plasmaYellow: #FAB62F;
$plasmaPink: #BE3D7D;
$plasmaPurple: #62039A;
$plasmaBlue: #142167;
$darkBlue: #192c42;
$footerBlue: #00264C;
$mediumBlue: #5D9DC7; 
$grayBlue: #777b80;
$dimGray: #9c9c9c;

.overall-title {
  background-image: url("../assets/river_title_large.png");
  background-color: $backgroundCharcoal;
  background-repeat: no-repeat;
  background-size: cover;
  background-position: center middle;
  @media screen and (max-width: 600px) {
    background-image: url("../assets/river_title.png");
    background-size: 100% 100%;
  }
}

.dim_text {
  color: #9c9c9c;
}

#nav a.router-link-active {
  color: $plasmaYellow;
  box-shadow: 0 2px 0 $plasmaYellow;
  padding: 0px 5px;
}

#nav {
  text-align: left;
  padding: 0px 0 10px 0;
}

.nav-title {
  color: $offWhite;
  font-family: 'Georgia', Helvetica, Arial, sans-serif;
  line-height: 1.4;
  font-size: 2.6em;
  @media screen and (max-width: 600px) {
    font-size: 1.4em;
  }
}

#nav a {
  font-weight: 100;
  text-align: center;
  box-shadow: 0 0.5px 0 $dimGray;
  color: $dimGray;
  position: relative;
  padding: 0px 5px;
  margin: 0px 7px;
  text-decoration: none;
}

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
  cursor: pointer;
}

#nav a:active {
  box-shadow: none;
  top: 5px;
}

 

</style>