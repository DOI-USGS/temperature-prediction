<template>
  <nav id="nav">
    <div>
      <router-link to="/">
        Importance
      </router-link>
      <router-link to="/monitoring">
        Monitoring
      </router-link>
      <router-link to="/modeling">
        Modeling
      </router-link>
    </div>
    <div>
      <p class="nav-title">
        Jump to Chapter
      </p>
    </div>
  </nav>
</template>

<script>
    export default {
        name: 'Nav'
    }
</script>

<style scoped>
    #nav {
        text-align: center;
        padding: 40px;
        color: #5088A5;
    }

    .nav-title {
      text-align: center;
      font-size: .8em;
      font-style: italic;
      margin-top: 10px;
    }

    #nav a {
      font-weight: bold;
      text-align: center;
      box-shadow: 0 5px 0 #5088A5;
      color: white;
      position: relative;
      padding: 0px 4px;
      margin: 0px 10px;
      text-decoration: none;
      text-transform: uppercase;
    }

  #nav a:hover {
    background-color: #2f617a;
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