<template>
  <div class="pre-footer-links">
    <div class="inner-pre-footer-links-container">
      <p>Other Visualizations of Interest</p>
      <div class="footer-viz-links">
        <a
          :href="LinkOne"
        >
          <figure>
            <img
              src="@/assets/components/PreFooterVisualizationsLinks/images/DRBthumb.png"
              alt=""
              loading="lazy"
              class="link_image"
            >
            <figcaption>Water Science and Management in the DRB</figcaption>
          </figure>
        </a>
        <a
          :href="LinkTwo"
        >
          <figure>
            <img
              src="@/assets/components/PreFooterVisualizationsLinks/images/SnowToFlow.jpg"
              alt=""
              loading="lazy"
              class="link_image"
            >
          </figure>
          <figcaption>From Snow to Flow</figcaption>
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
                LinkOne: "https://labs.waterdata.usgs.gov/visualizations/delaware-basin-story/index.html?utm_source=footer&utm_medium=link&utm_campaign=temp#/",
                LinkTwo: "https://labs.waterdata.usgs.gov/visualizations/snow-to-flow/index.html?utm_source=footer&utm_medium=link&utm_campaign=temp#/"
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
    font-size: 14px;
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
    .link_image {
      border-radius: 5px;
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
