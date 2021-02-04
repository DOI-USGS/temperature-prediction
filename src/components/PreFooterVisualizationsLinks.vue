<template>
  <div class="pre-footer-links">
    <div class="inner-pre-footer-links-container">
      <p>Other Visualizations of Interest</p>
      <div class="footer-viz-links">
        <a
          :href="LinkOne"
        >
          <figure>
            <figcaption>Water Science and Management in the Delaware River Basin</figcaption>
            <img
              src="@/assets/components/PreFooterVisualizationsLinks/images/DRBthumb.png"
              alt=""
              loading="lazy"
            >
          </figure>
        </a>
        <a
          :href="LinkTwo"
        >
          <figure>
            <figcaption>Gages Through the Ages</figcaption>
            <img
              src="@/assets/components/PreFooterVisualizationsLinks/images/Gages.png"
              alt=""
              loading="lazy"
            >
          </figure>
        </a>
      </div>
    </div>
  </div>
</template>

<script>
    export default {
        name: 'PreFooterVisualizationsLinks',
        data() {
            return {
                LinkOne: "https://labs.waterdata.usgs.gov/visualizations/delaware-basin-story/index.html#/",
                LinkTwo: "https://labs.waterdata.usgs.gov/visualizations/gages-through-the-ages/index.html#/"
            };
        }
    }
</script>

<style scoped lang="scss">
/* for mobile */
#app {
  .pre-footer-links {
    display: flex;
    justify-content: center;
    text-align: center;
    font-family: 'Source Sans Pro',sans-serif;
    font-size: 12px;
    font-weight: 600;
    border-top: 1px #FFFFFF10 solid;
    padding-top: 1em;
    p {
      color: white;
      font-size: 1.3em;
    }
    background-color: #292b30;

    .footer-viz-links {
      margin: 0 auto;
      display: flex;
      flex-direction: column;
      justify-content: center;
      a {
        figcaption {
          color: white;
          text-align: center;
          padding-bottom: 0.5em;
        }
        padding: 0.5em;
        max-width: 20rem;
      }
    }
  }
}

/* for everything but mobile */
@media only screen and (min-width: 700px) {
  #app {
    .pre-footer-links {
      .footer-viz-links {
        flex-direction: row;
        justify-content: center;
      }
    }
  }
}

#code-repository-link-container {
  a {
    color:white;
  }
}
</style>
