<template>
  <nav id="nav">
    <div>
      <p>
        <router-link
          to="/monitoring"
          @click.native="scrollToTop"
        >Monitor</router-link><router-link
          to="/modeling"
          @click.native="scrollToTop"
        >Model</router-link>
      </p>
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

#nav a.router-link-active {
  color: $plasmaYellow;
  box-shadow: 0 2px 0 $plasmaYellow;
  padding: 0px 5px;
}

#nav {
  text-align: center;
  padding: 20px 0 40px 0;
}

#nav a {
  font-family: 'Georgia', Helvetica, Arial, sans-serif;
  font-weight: 100;
  text-align: center;
  box-shadow: 0 0.5px 0 #9c9c9c;
  color: #9c9c9c;
  position: relative;
  padding: 0px 5px;
  margin: 0px 7px;
  text-decoration: none;
  font-size: 20pt;
  @media (max-width: 600px) {
    font-size: 16pt;
  }
}

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
  cursor: pointer;
}

</style>