<template>
  <section id="section_2">
    <div class="text-content">
      <!--"section-title-wrapper"-->
      <div class="viz-title"> 
        <h3 v-html="text.title1" />
      </div>
      <br>
      <p v-html="text.paragraph1" />
      <p v-html="text.paragraph2" />
    </div>
    <div id="map-and-bar-chart">
      <!-- div class="text-content viz-title-wrapper">
        <h3 class="viz-title">
          Measuring Temperature in the Basin
        </h3>
      </div -->
      <div class="figure-content">
        <div
          id="DRB_map_c2p1"
          class="figure map"
        />
      </div>
      <div class="text-content">
        <p v-html="text.paragraph3" />
      </div>
      <!-- p class="viz-subtitle">
        Number of Temperature Measurements by year,<br>as measured by USGS or other state/local agencies
      </p -->
      <div class="figure-content">
        <div class="figure chart">
          <div id="barChart_c2p1" />
        </div>
      </div>      
    </div>
    <div class="text-content">
      <p v-html="text.paragraph4" />
      <p v-html="text.paragraph5" />
      <Chapter2Icons1 />
      <br>
      <br>
      <!--"section-title-wrapper"-->
      <div class="viz-title">
        <h3 v-html="text.title2" />
      </div>
      <br>
      <p v-html="text.subtitle2" />
      <p v-html="text.paragraph6" />
      <p v-html="text.paragraph8" />
      <p v-html="text.paragraph9" />
    </div>
    <!-- div class="text-content viz-title-wrapper">
      <h3 class="viz-title">
        How to Read the Matrices
      </h3>
      <p class="viz-subtitle">
        Visualizing data availability at temperature measuring sites across the basin
      </p>
    </div -->
    <div
      id="matrix-explainer-container"
      class="explainer-grid-container"
    >
      <div
        id="MatrixExplainerSpace"
        class="explainer-grid-item"
      >
        <MatrixExplainerSpace />
      </div>
      <div
        id="MatrixExplainerTime"
        class="explainer-grid-item"
      >
        <MatrixExplainerTime />
      </div>
      <div
        id="MatrixExplainerColor"
        class="explainer-grid-item"
      >
        <MatrixExplainerColor />
      </div>            
    </div>
    <div class="text-content">
      <p v-html="text.tiptextDesktop" />
    </div>
    <!-- div class="text-content viz-title-wrapper">
      <h3 class="viz-title">
        Temperature Data Availability
      </h3>
      <p class="viz-subtitle">
        Visualizing the count of temperature measurements at all monitoring sites across the basin.
      </p>
      <p class="viz-subtitle">
        Hover over a reach on the map, to see it's bar chart.  Or hover a matrix cell to see which reaches had temperature data collected for that year.
      </p>
    </div -->
    <div
      id="data-availability-container"
      class="map-matrix-grid-container"
    >
      <!-- class="figure-content" -->
      <div
        id="DRB_map_c2p2"
        class="map mm-grid-item"
      />
      <!-- class="figure" -->
      <div
        id="matrixChart_c2p2"
        class="matrix mm-grid-item"
      >
        <svg class="c2p2 matrix_c2p2 matrix">
          <g transform="translate(35,50) scale(0.9, 0.9)">
            <DummyMatrix />
          </g>
        </svg>
      </div>
      <!-- class="figure" -->
    </div>
    <div class="text-content">
      <div class="viz-title">
        <h3 v-html="text.title3" />
      </div>
      <br>
      <p v-html="text.paragraph10" />
      <Chapter2Icons2 />
      <p v-html="text.paragraph11" />
    </div>
    <!-- div class="text-content viz-title-wrapper">
      <h3 class="viz-title">
        Daily Temperature readings in the Basin
      </h3>
    </div --> 
    <div class="figure-content">
      <div
        id="timeseries"
        class="figure chart"
      >
        <p class="viz-subtitle">
          Daily Temperature readings in the Basin in 2019
        </p>
        <MonitoringLineChart />
      </div>
    </div>
    <div class="text-content">
      <p v-html="text.paragraph12" />
      <p v-html="text.paragraph13" />
    </div>
    <!-- div class="text-content viz-title-wrapper">
      <h3 class="viz-title">
        Daily Temperature at each reach in the Basin
      </h3>
      <p class="viz-subtitle">
        Data for 2019 only. Hover over a reach on the map, or over a matrix cell to see more.
      </p>
    </div --> 
    <div class="map-matrix-grid-container">
      <div
        id="DRB_map_c2p3"
        class="map mm-grid-item"
      />
      <div
        id="matrixChart_c2p3"
        class="matrix mm-grid-item"
      />
    </div>
    <div class="text-content">
      <div class="viz-title">
        <h3 v-html="text.title4" />
      </div>
      <br>
      <p v-html="text.paragraph14" />
      <p v-html="text.paragraph15" />
    </div>
    <div
      id="map-container"
      class="figure-content"
    >
      <svg
        id="hex-map"
        xmlns="http://www.w3.org/2000/svg"
        width="100%"
        height="100%"
        viewBox="0 0 801 512"
      >
        <g
          fill-rule="evenodd"
          class="hex"
          stroke-linejoin="round"
          stroke-width="1.3"
        >
          <path
            fill="#22078b"
            d="M32.5 218.2L29 216v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M32.5 205.4l-3.7-2.2V199l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#370692"
            d="M32.5 192.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#20078b"
            d="M36.3 224.6l-3.7-2.1v-4.3l3.6-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#52039d"
            d="M36.3 211.8l-3.7-2.2v-4.2l3.6-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#6501a6"
            d="M36.3 199l-3.7-2.1v-4.3l3.6-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#7d0aa3"
            d="M36.3 186.2l-3.8-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#170889"
            d="M40 231l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#6601a6"
            d="M40 218.2l-3.8-2.2v-4.3l3.7-2.1 3.8 2.1v4.3z"
          />
          <path
            fill="#b32d8e"
            d="M40 205.4l-3.7-2.2V199l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#a32196"
            d="M40 192.6l-3.7-2.2v-4.2L40 184l3.7 2.1v4.3z"
          />
          <path
            fill="#56039f"
            d="M40 179.8l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#30068f"
            d="M40 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#25078c"
            d="M40 154.1l-3.8-2.1v-4.3l3.7-2.1 3.8 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M43.6 250.2l-3.6-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#340691"
            d="M43.6 237.4l-3.6-2.1V231l3.7-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#5c02a2"
            d="M43.6 224.6l-3.6-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#6800a7"
            d="M43.6 211.8l-3.6-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#410596"
            d="M43.6 199l-3.6-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#6501a6"
            d="M43.6 186.2L40 184v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#b32c8f"
            d="M43.6 173.3l-3.6-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#390693"
            d="M43.6 160.5l-3.6-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#360692"
            d="M43.6 147.7l-3.6-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1a0889"
            d="M47.3 269.4l-3.6-2.1V263l3.6-2.1L51 263v4.3z"
          />
          <path
            fill="#23078b"
            d="M47.3 256.6l-3.6-2.1v-4.3l3.6-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#340691"
            d="M47.3 243.8l-3.6-2.1v-4.3l3.6-2.1 3.7 2v4.4z"
          />
          <path
            fill="#25078c"
            d="M47.3 231l-3.6-2.1v-4.3l3.6-2.1 3.7 2v4.4z"
          />
          <path
            fill="#130888"
            d="M47.3 218.2l-3.6-2.2v-4.3l3.6-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#380692"
            d="M47.3 205.4l-3.6-2.2V199l3.6-2.1L51 199v4.3z"
          />
          <path
            fill="#8d149e"
            d="M47.3 192.6l-3.6-2.2v-4.2l3.6-2.2 3.7 2.1v4.3z"
          />
          <path
            fill="#bf3c84"
            d="M47.3 179.8l-3.6-2.2v-4.3l3.6-2 3.7 2v4.3z"
          />
          <path
            fill="#5d02a2"
            d="M47.3 167l-3.6-2.2v-4.3l3.6-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#5902a0"
            d="M47.3 154.1l-3.6-2.1v-4.3l3.6-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#4b049a"
            d="M47.3 141.3l-3.6-2.1v-4.3l3.6-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#21078b"
            d="M51 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M51 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#6900a7"
            d="M51 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#380692"
            d="M51 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#160889"
            d="M51 224.6l-3.7-2.1v-4.3L51 216l3.7 2.1v4.3z"
          />
          <path
            fill="#25078c"
            d="M51 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#470598"
            d="M51 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#95199b"
            d="M51 186.2l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#d8596c"
            d="M51 173.3l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#380692"
            d="M51 160.5l-3.7-2.1v-4.3L51 152l3.7 2.1v4.3z"
          />
          <path
            fill="#490499"
            d="M51 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2b078e"
            d="M51 135l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M54.7 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M54.7 269.4l-3.7-2.1V263l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#180889"
            d="M54.7 256.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#55039e"
            d="M54.7 243.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0d0887"
            d="M54.7 231l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#120888"
            d="M54.7 218.2L51 216v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100888"
            d="M54.7 205.4l-3.7-2.2V199l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#94189b"
            d="M54.7 192.6l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#8610a0"
            d="M54.7 179.8l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#c34081"
            d="M54.7 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#6e02a7"
            d="M54.7 154.1L51 152v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#390693"
            d="M54.7 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#6101a4"
            d="M54.7 128.5l-3.7-2.1V122l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1b088a"
            d="M54.7 115.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#160888"
            d="M58.4 301.4l-3.7-2V295l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1e078a"
            d="M58.4 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M58.4 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M58.4 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#440597"
            d="M58.4 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#b02a90"
            d="M58.4 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#5902a0"
            d="M58.4 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#180889"
            d="M58.4 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#3b0694"
            d="M58.4 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#4b049a"
            d="M58.4 186.2l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#4c049a"
            d="M58.4 173.3l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#9b1c99"
            d="M58.4 160.5l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#991b99"
            d="M58.4 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#6e02a7"
            d="M58.4 135l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#a52295"
            d="M58.4 122.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#440597"
            d="M58.4 109.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#2e078f"
            d="M62.1 307.9l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#130888"
            d="M62.1 295l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0e0887"
            d="M62.1 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M62.1 269.4l-3.7-2.1V263l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#840ea0"
            d="M62.1 256.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#440597"
            d="M62.1 243.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#88119f"
            d="M62.1 231l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#24078c"
            d="M62.1 218.2l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#54039e"
            d="M62.1 205.4l-3.7-2.2V199l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#840ea0"
            d="M62.1 192.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#430597"
            d="M62.1 179.8l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#7c09a3"
            d="M62.1 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#e97858"
            d="M62.1 154.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#8e149d"
            d="M62.1 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#840ea1"
            d="M62.1 128.5l-3.7-2.1V122l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#56039f"
            d="M62.1 115.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#490499"
            d="M62.1 102.9l-3.7-2.2v-4.2l3.7-2.1 3.7 2v4.3z"
          />
          <path
            fill="#130888"
            d="M65.8 301.4l-3.7-2V295l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M65.8 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M65.8 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M65.8 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#93179c"
            d="M65.8 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M65.8 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3zM65.8 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.1v4.3z"
          />
          <path
            fill="#4e049b"
            d="M65.8 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#971a9a"
            d="M65.8 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#6101a4"
            d="M65.8 186.2l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2b078e"
            d="M65.8 173.3l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#840fa0"
            d="M65.8 160.5l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#8c139e"
            d="M65.8 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#6d01a7"
            d="M65.8 135l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#6900a7"
            d="M65.8 122.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#c7457d"
            d="M65.8 109.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#3b0693"
            d="M65.8 96.5l-3.7-2.1V90l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#460598"
            d="M69.5 307.9l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#1b088a"
            d="M69.5 269.4l-3.7-2.1V263l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M69.5 256.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M69.5 243.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#7605a5"
            d="M69.5 231l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#480499"
            d="M69.5 218.2l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#22078b"
            d="M69.5 205.4l-3.7-2.2V199l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1a0889"
            d="M69.5 192.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#480499"
            d="M69.5 179.8l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#c13e83"
            d="M69.5 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#991b99"
            d="M69.5 154.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#9b1c98"
            d="M69.5 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#d15074"
            d="M69.5 128.5l-3.7-2.1V122l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#a22196"
            d="M69.5 115.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#6b00a8"
            d="M69.5 102.9l-3.7-2.2v-4.2l3.7-2.1 3.7 2v4.3z"
          />
          <path
            fill="#330690"
            d="M69.5 90l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#130888"
            d="M69.5 77.3L65.8 75V71l3.7-2.2 3.7 2.2V75z"
          />
          <path
            fill="#2c078e"
            d="M69.5 64.5l-3.7-2.2V58l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#23078c"
            d="M69.5 51.6l-3.7-2v-4.4l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#190889"
            d="M73.2 314.3l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0d0887"
            d="M73.2 301.4l-3.7-2V295l3.7-2.1L77 295v4.3zM73.2 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM73.2 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#ce4d76"
            d="M73.2 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M73.2 237.4l-3.7-2.1V231l3.7-2.1L77 231v4.3z"
          />
          <path
            fill="#23078c"
            d="M73.2 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#21078b"
            d="M73.2 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#440597"
            d="M73.2 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#25078c"
            d="M73.2 186.2l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#150888"
            d="M73.2 173.3l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#5d02a2"
            d="M73.2 160.5l-3.7-2.1v-4.3l3.7-2.1L77 154v4.3z"
          />
          <path
            fill="#490499"
            d="M73.2 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#e16562"
            d="M73.2 135l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#800ca2"
            d="M73.2 122.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#6800a7"
            d="M73.2 109.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#51039c"
            d="M73.2 96.5l-3.7-2.1V90l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#2d078e"
            d="M73.2 83.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#27078d"
            d="M73.2 70.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#5902a0"
            d="M73.2 58l-3.7-2v-4.4l3.7-2 3.7 2V56z"
          />
          <path
            fill="#0f0887"
            d="M73.2 45.2l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M77 320.7l-3.8-2.2v-4.2L77 312l3.7 2.2v4.2z"
          />
          <path
            fill="#25078c"
            d="M77 307.9l-3.8-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0d0887"
            d="M77 282.2l-3.8-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M77 269.4l-3.8-2.1V263l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M77 256.6l-3.8-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1e078a"
            d="M77 243.8l-3.8-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#52039d"
            d="M77 231l-3.8-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#3f0595"
            d="M77 218.2l-3.8-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#150888"
            d="M77 205.4l-3.8-2.2V199l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M77 179.8l-3.8-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#90169d"
            d="M77 167l-3.8-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#3d0594"
            d="M77 154.1l-3.8-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#3b0693"
            d="M77 141.3l-3.8-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#e46b5f"
            d="M77 128.5l-3.8-2.1V122L77 120l3.7 2.1v4.3z"
          />
          <path
            fill="#6401a5"
            d="M77 115.7l-3.8-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#da5c6a"
            d="M77 102.9l-3.8-2.2v-4.2l3.7-2.1 3.7 2v4.3z"
          />
          <path
            fill="#410596"
            d="M77 90l-3.8-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#2c078e"
            d="M77 77.3L73.1 75V71l3.7-2.2 3.7 2.2V75z"
          />
          <path
            fill="#50049c"
            d="M77 64.5l-3.8-2.2V58l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#28078d"
            d="M77 51.6l-3.8-2v-4.4l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#25078c"
            d="M80.6 314.3L77 312v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0d0887"
            d="M80.6 301.4l-3.7-2V295l3.7-2.1 3.7 2.1v4.3zM80.6 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM80.6 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2f078f"
            d="M80.6 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#b22c8f"
            d="M80.6 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2f078f"
            d="M80.6 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#390693"
            d="M80.6 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#24078c"
            d="M80.6 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#100887"
            d="M80.6 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#170889"
            d="M80.6 186.2L77 184v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M80.6 173.3l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1d088a"
            d="M80.6 160.5l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#26078d"
            d="M80.6 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#6301a5"
            d="M80.6 135l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#e26661"
            d="M80.6 122.1L77 120v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#d35372"
            d="M80.6 109.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#400596"
            d="M80.6 96.5L77 94.4V90l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#370692"
            d="M80.6 83.7L77 81.5v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#3c0694"
            d="M80.6 70.9L77 68.7v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#350691"
            d="M80.6 58L77 56v-4.4l3.7-2 3.7 2V56z"
          />
          <path
            fill="#0e0887"
            d="M84.3 320.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M84.3 307.9l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3zM84.3 295l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4zM84.3 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM84.3 269.4l-3.7-2.1V263l3.7-2.1L88 263v4.3z"
          />
          <path
            fill="#1d088a"
            d="M84.3 256.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M84.3 243.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#90169c"
            d="M84.3 231l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#410596"
            d="M84.3 218.2l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#170889"
            d="M84.3 205.4l-3.7-2.2V199l3.7-2.1L88 199v4.3z"
          />
          <path
            fill="#460598"
            d="M84.3 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#57039f"
            d="M84.3 154.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#450597"
            d="M84.3 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#7d0aa3"
            d="M84.3 128.5l-3.7-2.1V122l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#380692"
            d="M84.3 115.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#6401a5"
            d="M84.3 102.9l-3.7-2.2v-4.2l3.7-2.1 3.7 2v4.3z"
          />
          <path
            fill="#160889"
            d="M84.3 90l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#20078b"
            d="M84.3 77.3L80.6 75V71l3.7-2.2L88 71V75z"
          />
          <path
            fill="#330690"
            d="M84.3 64.5l-3.7-2.2V58l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0d0887"
            d="M84.3 51.6l-3.7-2v-4.4l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#140888"
            d="M88 327l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#170889"
            d="M88 314.3l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#24078c"
            d="M88 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M88 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#480499"
            d="M88 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#460598"
            d="M88 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#190889"
            d="M88 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#4b049a"
            d="M88 224.6l-3.7-2.1v-4.3L88 216l3.7 2.1v4.3z"
          />
          <path
            fill="#100888"
            d="M88 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#1a0889"
            d="M88 186.2l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#21078b"
            d="M88 173.3l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#6201a4"
            d="M88 160.5l-3.7-2.1v-4.3L88 152l3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M88 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#5d02a2"
            d="M88 135l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#6601a6"
            d="M88 122.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#e26661"
            d="M88 109.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#25078c"
            d="M88 96.5l-3.7-2.1V90l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#1e078a"
            d="M88 83.7l-3.7-2.2v-4.2L88 75l3.7 2.2v4.2z"
          />
          <path
            fill="#3e0595"
            d="M88 70.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#1f078b"
            d="M88 58l-3.7-2v-4.4l3.7-2 3.7 2V56z"
          />
          <path
            fill="#0e0887"
            d="M91.7 333.5l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0f0887"
            d="M91.7 320.7l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0d0887"
            d="M91.7 307.9l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3zM91.7 295l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#24078c"
            d="M91.7 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#300690"
            d="M91.7 269.4l-3.7-2.1V263l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#180889"
            d="M91.7 256.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1b088a"
            d="M91.7 243.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0e0887"
            d="M91.7 231l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#89129f"
            d="M91.7 218.2L88 216v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M91.7 205.4l-3.7-2.2V199l3.7-2.1 3.7 2.1v4.3zM91.7 192.6l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3zM91.7 179.8l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#7606a5"
            d="M91.7 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M91.7 154.1L88 152v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1a0889"
            d="M91.7 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#7c09a3"
            d="M91.7 128.5l-3.7-2.1V122l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#24078c"
            d="M91.7 115.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#d95a6b"
            d="M91.7 102.9l-3.7-2.2v-4.2l3.7-2.1 3.7 2v4.3z"
          />
          <path
            fill="#400595"
            d="M91.7 90L88 88v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#52039d"
            d="M91.7 77.3L88 75V71l3.7-2.2 3.7 2.2V75z"
          />
          <path
            fill="#4f049c"
            d="M91.7 64.5L88 62.3V58l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#28078d"
            d="M95.4 327l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M95.4 314.3l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#100887"
            d="M95.4 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#28078d"
            d="M95.4 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M95.4 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM95.4 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#190889"
            d="M95.4 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M95.4 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#0d0887"
            d="M95.4 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2zM95.4 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM95.4 186.2l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#430597"
            d="M95.4 173.3l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M95.4 160.5l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#330690"
            d="M95.4 135l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#3b0693"
            d="M95.4 122.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#ac2792"
            d="M95.4 109.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#3f0595"
            d="M95.4 96.5l-3.7-2.1V90l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#1e078a"
            d="M95.4 83.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#f0f921"
            d="M95.4 70.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#310690"
            d="M95.4 58l-3.7-2v-4.4l3.7-2 3.7 2V56z"
          />
          <path
            fill="#320690"
            d="M95.4 45.2l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M99.1 346.3l-3.7-2.2V340l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#1a0889"
            d="M99.1 333.5l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#22078b"
            d="M99.1 320.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M99.1 295l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#1b088a"
            d="M99.1 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#190889"
            d="M99.1 269.4l-3.7-2.1V263l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2c078e"
            d="M99.1 256.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M99.1 243.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#460598"
            d="M99.1 231l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4zM99.1 218.2l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M99.1 205.4l-3.7-2.2V199l3.7-2.1 3.7 2.1v4.3zM99.1 192.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#1d078a"
            d="M99.1 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#22078b"
            d="M99.1 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#5e02a3"
            d="M99.1 128.5l-3.7-2.1V122l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1d088a"
            d="M99.1 115.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#a02097"
            d="M99.1 102.9l-3.7-2.2v-4.2l3.7-2.1 3.7 2v4.3z"
          />
          <path
            fill="#300690"
            d="M99.1 90l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#ba3589"
            d="M99.1 77.3L95.4 75V71l3.7-2.2 3.7 2.2V75z"
          />
          <path
            fill="#e56d5e"
            d="M99.1 64.5l-3.7-2.2V58l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#6d01a7"
            d="M99.1 51.6l-3.7-2v-4.4l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0d0887"
            d="M102.8 352.7l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#2f078f"
            d="M102.8 339.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#1b088a"
            d="M102.8 327l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#2a078d"
            d="M102.8 314.3l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0d0887"
            d="M102.8 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M102.8 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M102.8 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#190889"
            d="M102.8 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#360692"
            d="M102.8 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#0d0887"
            d="M102.8 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2zM102.8 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM102.8 186.2l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M102.8 173.3l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M102.8 160.5l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#6b00a8"
            d="M102.8 135l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2a078e"
            d="M102.8 122.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#7a08a3"
            d="M102.8 109.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#6800a7"
            d="M102.8 96.5l-3.7-2.1V90l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#3f0595"
            d="M102.8 83.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#a52395"
            d="M102.8 70.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#52039d"
            d="M102.8 58l-3.7-2v-4.4l3.7-2 3.7 2V56z"
          />
          <path
            fill="#6501a6"
            d="M102.8 45.2l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M106.5 346.3l-3.7-2.2V340l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#28078d"
            d="M106.5 333.5l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2zM106.5 320.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M106.5 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM106.5 269.4l-3.7-2.1V263l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M106.5 256.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M106.5 243.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#100887"
            d="M106.5 218.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M106.5 205.4l-3.7-2.2V199l3.7-2.1 3.7 2.1v4.3zM106.5 192.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2zM106.5 179.8l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#180889"
            d="M106.5 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M106.5 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#5e02a2"
            d="M106.5 128.5l-3.7-2.1V122l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1b088a"
            d="M106.5 115.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#360691"
            d="M106.5 102.9l-3.7-2.2v-4.2l3.7-2.1 3.7 2v4.3z"
          />
          <path
            fill="#430597"
            d="M106.5 90l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#52039d"
            d="M106.5 77.3l-3.7-2.2V71l3.7-2.2 3.7 2.2V75z"
          />
          <path
            fill="#3d0594"
            d="M106.5 64.5l-3.7-2.2V58l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#3e0595"
            d="M106.5 51.6l-3.7-2v-4.4l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0d0887"
            d="M110.2 352.7l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#170889"
            d="M110.2 339.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#120888"
            d="M110.2 327l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M110.2 314.3l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3zM110.2 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM110.2 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM110.2 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#180889"
            d="M110.2 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#150888"
            d="M110.2 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M110.2 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M110.2 186.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M110.2 173.3l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#29078d"
            d="M110.2 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#5e02a2"
            d="M110.2 135l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#27078d"
            d="M110.2 122.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1d078a"
            d="M110.2 109.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#6601a6"
            d="M110.2 96.5l-3.7-2.1V90l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#54039e"
            d="M110.2 83.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#380692"
            d="M110.2 70.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#5d02a2"
            d="M110.2 58l-3.7-2v-4.4l3.7-2 3.7 2V56z"
          />
          <path
            fill="#0e0887"
            d="M110.2 45.2l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M114 346.3l-3.8-2.2V340l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#190889"
            d="M114 333.5l-3.8-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M114 320.7l-3.8-2.2v-4.2l3.7-2.2 3.7 2.2v4.2zM114 307.9l-3.8-2.2v-4.3l3.7-2 3.7 2v4.3zM114 295l-3.8-2.1v-4.3l3.7-2.1 3.7 2v4.4zM114 282.2l-3.8-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM114 269.4l-3.8-2.1V263l3.7-2.1 3.7 2.1v4.3zM114 231l-3.8-2.1v-4.3l3.7-2.1 3.7 2v4.4zM114 218.2l-3.8-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#180889"
            d="M114 205.4l-3.8-2.2V199l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M114 192.6l-3.8-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#100887"
            d="M114 179.8l-3.8-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#390693"
            d="M114 167l-3.8-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M114 154.1l-3.8-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#53039e"
            d="M114 141.3l-3.8-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#480498"
            d="M114 128.5l-3.8-2.1V122l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#24078c"
            d="M114 115.7l-3.8-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#380692"
            d="M114 102.9l-3.8-2.2v-4.2l3.7-2.1 3.7 2v4.3z"
          />
          <path
            fill="#390693"
            d="M114 90l-3.8-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#52039d"
            d="M114 77.3l-3.8-2.2V71l3.7-2.2 3.7 2.2V75z"
          />
          <path
            fill="#23078b"
            d="M114 64.5l-3.8-2.2V58l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#3f0595"
            d="M114 51.6l-3.8-2v-4.4l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0d0887"
            d="M117.6 352.7l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3zM117.6 339.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2zM117.6 327l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2zM117.6 314.3L114 312v-4.3l3.7-2 3.7 2v4.3zM117.6 301.4l-3.7-2V295l3.7-2.1 3.7 2.1v4.3zM117.6 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM117.6 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1c088a"
            d="M117.6 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M117.6 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3zM117.6 186.2L114 184v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#110888"
            d="M117.6 173.3l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#180889"
            d="M117.6 160.5l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#380692"
            d="M117.6 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2f078f"
            d="M117.6 135l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#6101a4"
            d="M117.6 122.1L114 120v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M117.6 109.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#1f078a"
            d="M117.6 96.5l-3.7-2.1V90l3.7-2.2 3.7 2.2v4.3zM117.6 83.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#971a9a"
            d="M117.6 70.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#24078c"
            d="M117.6 58l-3.7-2v-4.4l3.7-2 3.7 2V56z"
          />
          <path
            fill="#0d0887"
            d="M121.3 346.3l-3.7-2.2V340l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0f0887"
            d="M121.3 333.5l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M121.3 307.9l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3zM121.3 295l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4zM121.3 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M121.3 243.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0e0887"
            d="M121.3 231l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0d0887"
            d="M121.3 218.2l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M121.3 205.4l-3.7-2.2V199l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#30078f"
            d="M121.3 179.8l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#1d088a"
            d="M121.3 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1a0889"
            d="M121.3 154.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#6601a6"
            d="M121.3 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#6301a5"
            d="M121.3 128.5l-3.7-2.1V122l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#23078b"
            d="M121.3 115.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#370692"
            d="M121.3 102.9l-3.7-2.2v-4.2l3.7-2.1 3.7 2v4.3z"
          />
          <path
            fill="#2d078e"
            d="M121.3 90l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#1f078a"
            d="M121.3 77.3l-3.7-2.2V71l3.7-2.2L125 71V75z"
          />
          <path
            fill="#4c049a"
            d="M121.3 64.5l-3.7-2.2V58l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0e0887"
            d="M121.3 51.6l-3.7-2v-4.4l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0f0887"
            d="M125 352.7l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#0d0887"
            d="M125 339.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2zM125 327l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2zM125 301.4l-3.7-2V295l3.7-2.1 3.7 2.1v4.3zM125 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM125 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM125 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2d078e"
            d="M125 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M125 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M125 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0f0887"
            d="M125 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M125 186.2l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M125 173.3l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M125 160.5l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#3a0693"
            d="M125 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#c5427f"
            d="M125 135l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#6700a7"
            d="M125 122.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#5b02a1"
            d="M125 109.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#160888"
            d="M125 96.5l-3.7-2.1V90l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#120888"
            d="M125 83.7l-3.7-2.2v-4.2L125 75l3.7 2.2v4.2z"
          />
          <path
            fill="#340691"
            d="M125 70.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#5c02a1"
            d="M125 58l-3.7-2v-4.4l3.7-2 3.7 2V56z"
          />
          <path
            fill="#0d0887"
            d="M128.7 359l-3.7-2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M128.7 346.3L125 344V340l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M128.7 333.5l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2zM128.7 307.9l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3zM128.7 295l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM128.7 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM128.7 269.4l-3.7-2.1V263l3.7-2.1 3.7 2.1v4.3zM128.7 256.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M128.7 243.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0d0887"
            d="M128.7 231l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4zM128.7 218.2L125 216v-4.3l3.7-2.1 3.7 2.1v4.3zM128.7 205.4l-3.7-2.2V199l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M128.7 192.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M128.7 179.8l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#110888"
            d="M128.7 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#180889"
            d="M128.7 154.1L125 152v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#6201a4"
            d="M128.7 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#bf3b84"
            d="M128.7 128.5l-3.7-2.1V122l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#d04f75"
            d="M128.7 115.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#370692"
            d="M128.7 102.9l-3.7-2.2v-4.2l3.7-2.1 3.7 2v4.3z"
          />
          <path
            fill="#1b0889"
            d="M128.7 90l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#4f049b"
            d="M128.7 64.5l-3.7-2.2V58l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#160888"
            d="M128.7 51.6l-3.7-2v-4.4l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0d0887"
            d="M132.4 352.7l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3zM132.4 314.3l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3zM132.4 301.4l-3.7-2V295l3.7-2.1 3.7 2.1v4.3zM132.4 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM132.4 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM132.4 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM132.4 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM132.4 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3zM132.4 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#0e0887"
            d="M132.4 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#27078d"
            d="M132.4 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M132.4 186.2l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M132.4 173.3l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M132.4 160.5l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#26078d"
            d="M132.4 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#350691"
            d="M132.4 135l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#e46b5f"
            d="M132.4 122.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#4c049a"
            d="M132.4 109.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#23078c"
            d="M132.4 96.5l-3.7-2.1V90l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#0f0887"
            d="M132.4 83.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2zM132.4 70.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#490499"
            d="M132.4 58l-3.7-2v-4.4l3.7-2 3.7 2V56z"
          />
          <path
            fill="#25078c"
            d="M136.1 359l-3.7-2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M136.1 346.3l-3.7-2.2V340l3.7-2.2 3.7 2.2v4.2zM136.1 333.5l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2zM136.1 320.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2zM136.1 307.9l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3zM136.1 295l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4zM136.1 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM136.1 269.4l-3.7-2.1V263l3.7-2.1 3.7 2.1v4.3zM136.1 256.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM136.1 243.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4zM136.1 218.2l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M136.1 205.4l-3.7-2.2V199l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M136.1 192.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#1b088a"
            d="M136.1 179.8l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0f0887"
            d="M136.1 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M136.1 154.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#20078b"
            d="M136.1 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2e078f"
            d="M136.1 128.5l-3.7-2.1V122l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#f18b4d"
            d="M136.1 115.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#310690"
            d="M136.1 102.9l-3.7-2.2v-4.2l3.7-2.1 3.7 2v4.3z"
          />
          <path
            fill="#0d0887"
            d="M136.1 90l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#310690"
            d="M136.1 64.5l-3.7-2.2V58l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#420596"
            d="M136.1 51.6l-3.7-2v-4.4l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#28078d"
            d="M139.8 352.7l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#0d0887"
            d="M139.8 339.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2zM139.8 314.3L136 312v-4.3l3.7-2 3.7 2v4.3zM139.8 301.4l-3.7-2V295l3.7-2.1 3.7 2.1v4.3zM139.8 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM139.8 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM139.8 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM139.8 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3zM139.8 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#0e0887"
            d="M139.8 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#440597"
            d="M139.8 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M139.8 186.2L136 184v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#170889"
            d="M139.8 173.3l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M139.8 160.5l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#180889"
            d="M139.8 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1a0889"
            d="M139.8 135l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#3d0694"
            d="M139.8 122.1L136 120v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#6f02a7"
            d="M139.8 109.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#170889"
            d="M139.8 96.5l-3.7-2.1V90l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#0e0887"
            d="M139.8 83.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#330690"
            d="M139.8 70.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#180889"
            d="M139.8 58l-3.7-2v-4.4l3.7-2 3.7 2V56z"
          />
          <path
            fill="#1e078a"
            d="M143.5 359l-3.7-2v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#160889"
            d="M143.5 346.3l-3.7-2.2V340l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#110888"
            d="M143.5 333.5l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M143.5 307.9l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#28078d"
            d="M143.5 295l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0d0887"
            d="M143.5 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM143.5 269.4l-3.7-2.1V263l3.7-2.1 3.7 2.1v4.3zM143.5 256.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM143.5 243.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4zM143.5 231l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#1c088a"
            d="M143.5 218.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#420596"
            d="M143.5 205.4l-3.7-2.2V199l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M143.5 192.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0e0887"
            d="M143.5 179.8l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#1b088a"
            d="M143.5 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#480499"
            d="M143.5 154.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#25078c"
            d="M143.5 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#57039f"
            d="M143.5 128.5l-3.7-2.1V122l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#5903a0"
            d="M143.5 115.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#390693"
            d="M143.5 102.9l-3.7-2.2v-4.2l3.7-2.1 3.7 2v4.3z"
          />
          <path
            fill="#0d0887"
            d="M143.5 90l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#24078c"
            d="M143.5 77.3l-3.7-2.2V71l3.7-2.2 3.7 2.2V75z"
          />
          <path
            fill="#320690"
            d="M143.5 64.5l-3.7-2.2V58l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#180889"
            d="M147.2 339.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0f0887"
            d="M147.2 314.3l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#140888"
            d="M147.2 301.4l-3.7-2V295l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M147.2 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM147.2 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM147.2 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM147.2 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM147.2 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M147.2 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#170889"
            d="M147.2 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0e0887"
            d="M147.2 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M147.2 186.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#170889"
            d="M147.2 173.3l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#160888"
            d="M147.2 160.5l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#360692"
            d="M147.2 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#390693"
            d="M147.2 135l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#430597"
            d="M147.2 122.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#340691"
            d="M147.2 109.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#25078c"
            d="M147.2 96.5l-3.7-2.1V90l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#1d088a"
            d="M147.2 70.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#1c088a"
            d="M147.2 58l-3.7-2v-4.4l3.7-2 3.7 2V56z"
          />
          <path
            fill="#0d0887"
            d="M150.9 359l-3.7-2v-4.3l3.7-2.1 3.7 2v4.4zM150.9 346.3l-3.7-2.2V340l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#150888"
            d="M150.9 333.5l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0f0887"
            d="M150.9 320.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M150.9 307.9l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3zM150.9 295l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#1b088a"
            d="M150.9 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M150.9 256.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM150.9 243.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4zM150.9 231l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#100887"
            d="M150.9 218.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#160888"
            d="M150.9 205.4l-3.7-2.2V199l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M150.9 192.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#190889"
            d="M150.9 179.8l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#130888"
            d="M150.9 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1f078b"
            d="M150.9 154.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1a0889"
            d="M150.9 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#490499"
            d="M150.9 128.5l-3.7-2.1V122l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#7c09a3"
            d="M150.9 115.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#440597"
            d="M150.9 102.9l-3.7-2.2v-4.2l3.7-2.1 3.7 2v4.3z"
          />
          <path
            fill="#110888"
            d="M150.9 90l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#160888"
            d="M150.9 77.3l-3.7-2.2V71l3.7-2.2 3.7 2.2V75z"
          />
          <path
            fill="#1f078a"
            d="M150.9 64.5l-3.7-2.2V58l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0d0887"
            d="M154.6 314.3l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3zM154.6 301.4l-3.7-2V295l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#160889"
            d="M154.6 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M154.6 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM154.6 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM154.6 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM154.6 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3zM154.6 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#0f0887"
            d="M154.6 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#3c0694"
            d="M154.6 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#150888"
            d="M154.6 186.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#29078d"
            d="M154.6 173.3l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#24078c"
            d="M154.6 160.5l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1a0889"
            d="M154.6 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#490499"
            d="M154.6 135l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#53039e"
            d="M154.6 122.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#93189b"
            d="M154.6 109.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#28078d"
            d="M154.6 96.5l-3.7-2.1V90l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#1d078a"
            d="M154.6 83.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#c44180"
            d="M154.6 70.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#130888"
            d="M154.6 58l-3.7-2v-4.4l3.7-2 3.7 2V56z"
          />
          <path
            fill="#0d0887"
            d="M158.3 320.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2zM158.3 307.9l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3zM158.3 295l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#130888"
            d="M158.3 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M158.3 269.4l-3.7-2.1V263l3.7-2.1 3.7 2.1v4.3zM158.3 256.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M158.3 243.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0d0887"
            d="M158.3 231l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#1b088a"
            d="M158.3 205.4l-3.7-2.2V199l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#310690"
            d="M158.3 192.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0e0887"
            d="M158.3 179.8l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#22078b"
            d="M158.3 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#450598"
            d="M158.3 154.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#3c0694"
            d="M158.3 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#4f049b"
            d="M158.3 128.5l-3.7-2.1V122l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#25078c"
            d="M158.3 115.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#300690"
            d="M158.3 102.9l-3.7-2.2v-4.2l3.7-2.1 3.7 2v4.3z"
          />
          <path
            fill="#1a0889"
            d="M158.3 90l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#29078d"
            d="M158.3 77.3l-3.7-2.2V71l3.7-2.2L162 71V75z"
          />
          <path
            fill="#981a9a"
            d="M158.3 64.5l-3.7-2.2V58l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0d0887"
            d="M162 378.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM162 352.7l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3zM162 339.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0e0887"
            d="M162 327l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M162 314.3l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3zM162 301.4l-3.7-2V295l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M162 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M162 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M162 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#170889"
            d="M162 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M162 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3zM162 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.1v4.3zM162 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#20078b"
            d="M162 186.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#2f078f"
            d="M162 173.3l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#6c01a8"
            d="M162 160.5l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#7304a6"
            d="M162 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#6900a8"
            d="M162 135l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#6800a7"
            d="M162 122.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#6301a5"
            d="M162 109.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#850fa0"
            d="M162 96.5l-3.7-2.1V90l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#2d078f"
            d="M162 83.7l-3.7-2.2v-4.2L162 75l3.7 2.2v4.2z"
          />
          <path
            fill="#7807a4"
            d="M162 70.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#30078f"
            d="M162 58l-3.7-2v-4.4l3.7-2 3.7 2V56z"
          />
          <path
            fill="#0d0887"
            d="M165.7 371.9l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM165.7 333.5l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2zM165.7 320.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#140888"
            d="M165.7 307.9l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0d0887"
            d="M165.7 295l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#190889"
            d="M165.7 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M165.7 269.4l-3.7-2.1V263l3.7-2.1 3.7 2.1v4.3zM165.7 256.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#23078c"
            d="M165.7 243.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0d0887"
            d="M165.7 231l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4zM165.7 218.2L162 216v-4.3l3.7-2.1 3.7 2.1v4.3zM165.7 205.4l-3.7-2.2V199l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1c088a"
            d="M165.7 192.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#310690"
            d="M165.7 179.8l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#160888"
            d="M165.7 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#6401a5"
            d="M165.7 154.1L162 152v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#55039e"
            d="M165.7 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#4d049b"
            d="M165.7 128.5l-3.7-2.1V122l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#7204a6"
            d="M165.7 115.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#350691"
            d="M165.7 102.9l-3.7-2.2v-4.2l3.7-2.1 3.7 2v4.3z"
          />
          <path
            fill="#5f02a3"
            d="M165.7 90l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#27078d"
            d="M165.7 77.3L162 75V71l3.7-2.2 3.7 2.2V75z"
          />
          <path
            fill="#430596"
            d="M165.7 64.5l-3.7-2.2V58l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0d0887"
            d="M169.4 378.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M169.4 352.7l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#0d0887"
            d="M169.4 339.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0e0887"
            d="M169.4 327l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M169.4 301.4l-3.7-2V295l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1b0889"
            d="M169.4 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M169.4 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM169.4 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM169.4 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3zM169.4 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3zM169.4 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2zM169.4 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#130888"
            d="M169.4 186.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#1d088a"
            d="M169.4 173.3l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#450597"
            d="M169.4 160.5l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#95199b"
            d="M169.4 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#56039f"
            d="M169.4 135l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#6401a5"
            d="M169.4 122.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#f8cf2f"
            d="M169.4 109.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#25078c"
            d="M169.4 96.5l-3.7-2.1V90l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#460598"
            d="M169.4 83.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#450597"
            d="M169.4 70.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#470598"
            d="M169.4 58l-3.7-2v-4.4l3.7-2 3.7 2V56z"
          />
          <path
            fill="#0d0887"
            d="M173 371.9l-3.6-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM173 333.5l-3.6-2.2v-4.2l3.7-2.2 3.7 2.2v4.2zM173 320.7l-3.6-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0e0887"
            d="M173 295l-3.6-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#400595"
            d="M173 282.2l-3.6-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M173 269.4l-3.6-2.1V263l3.7-2.1 3.7 2.1v4.3zM173 256.6l-3.6-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM173 243.8l-3.6-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#110888"
            d="M173 231l-3.6-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0d0887"
            d="M173 218.2l-3.6-2.2v-4.2l3.7-2.2 3.7 2.2v4.2zM173 205.4l-3.6-2.2V199l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#170889"
            d="M173 192.6l-3.6-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#300690"
            d="M173 179.8l-3.6-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#190889"
            d="M173 167l-3.6-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#a01f97"
            d="M173 154.1l-3.6-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#24078c"
            d="M173 141.3l-3.6-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2b078e"
            d="M173 128.5l-3.6-2.1V122l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#c44080"
            d="M173 115.7l-3.6-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#fbb634"
            d="M173 102.9l-3.6-2.2v-4.2l3.7-2.1 3.7 2v4.3z"
          />
          <path
            fill="#330691"
            d="M173 90l-3.6-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#2f078f"
            d="M173 77.3l-3.6-2.2V71l3.7-2.2 3.7 2.2V75z"
          />
          <path
            fill="#28078d"
            d="M173 64.5l-3.6-2.2V58l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0e0887"
            d="M176.8 352.7l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#0f0887"
            d="M176.8 339.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0e0887"
            d="M176.8 327l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M176.8 301.4l-3.7-2V295l3.7-2.1 3.7 2.1v4.3zM176.8 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#150888"
            d="M176.8 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M176.8 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M176.8 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3zM176.8 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1c088a"
            d="M176.8 186.2L173 184v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M176.8 173.3l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#22078b"
            d="M176.8 160.5l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#4a049a"
            d="M176.8 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#3b0694"
            d="M176.8 135l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#3a0693"
            d="M176.8 122.1L173 120v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#fbb534"
            d="M176.8 109.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#3f0595"
            d="M176.8 96.5l-3.7-2.1V90l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#160889"
            d="M176.8 83.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#1a0889"
            d="M176.8 70.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M180.5 359l-3.7-2v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0f0887"
            d="M180.5 346.3l-3.7-2.2V340l3.7-2.2 3.7 2.2v4.2zM180.5 333.5l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M180.5 320.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2zM180.5 307.9l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#3e0594"
            d="M180.5 295l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#180889"
            d="M180.5 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1b0889"
            d="M180.5 269.4l-3.7-2.1V263l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M180.5 256.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM180.5 243.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0e0887"
            d="M180.5 231l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0d0887"
            d="M180.5 205.4l-3.7-2.2V199l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#180889"
            d="M180.5 192.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2zM180.5 179.8l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#27078d"
            d="M180.5 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#5b02a1"
            d="M180.5 154.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#57039f"
            d="M180.5 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#53039d"
            d="M180.5 128.5l-3.7-2.1V122l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#3c0694"
            d="M180.5 115.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#d7586d"
            d="M180.5 102.9l-3.7-2.2v-4.2l3.7-2.1 3.7 2v4.3z"
          />
          <path
            fill="#1f078a"
            d="M180.5 90l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#2f078f"
            d="M180.5 77.3l-3.7-2.2V71l3.7-2.2 3.7 2.2V75z"
          />
          <path
            fill="#140888"
            d="M180.5 64.5l-3.7-2.2V58l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0e0887"
            d="M184.2 352.7l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#170889"
            d="M184.2 339.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#110888"
            d="M184.2 327l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M184.2 314.3l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#320690"
            d="M184.2 301.4l-3.7-2V295l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M184.2 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#180889"
            d="M184.2 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1f078a"
            d="M184.2 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M184.2 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM184.2 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3zM184.2 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3zM184.2 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0e0887"
            d="M184.2 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#160889"
            d="M184.2 186.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#29078d"
            d="M184.2 160.5l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2b078e"
            d="M184.2 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#4e049b"
            d="M184.2 135l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#7a08a3"
            d="M184.2 122.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#e6715c"
            d="M184.2 109.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#6501a6"
            d="M184.2 96.5l-3.7-2.1V90l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#21078b"
            d="M184.2 83.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#20078b"
            d="M184.2 70.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M187.9 384.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM187.9 371.9l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M187.9 359l-3.7-2v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#150888"
            d="M187.9 346.3l-3.7-2.2V340l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#1c088a"
            d="M187.9 333.5l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0e0887"
            d="M187.9 320.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2zM187.9 307.9l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0d0887"
            d="M187.9 295l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#120888"
            d="M187.9 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1a0889"
            d="M187.9 269.4l-3.7-2.1V263l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1c088a"
            d="M187.9 256.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#130888"
            d="M187.9 243.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0e0887"
            d="M187.9 231l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4zM187.9 218.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M187.9 205.4l-3.7-2.2V199l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M187.9 192.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#180889"
            d="M187.9 179.8l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0f0887"
            d="M187.9 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#4b049a"
            d="M187.9 154.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#3f0595"
            d="M187.9 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#7807a4"
            d="M187.9 128.5l-3.7-2.1V122l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#4f049c"
            d="M187.9 115.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#3a0693"
            d="M187.9 102.9l-3.7-2.2v-4.2l3.7-2.1 3.7 2v4.3z"
          />
          <path
            fill="#410596"
            d="M187.9 90l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#20078b"
            d="M187.9 77.3l-3.7-2.2V71l3.7-2.2 3.7 2.2V75z"
          />
          <path
            fill="#24078c"
            d="M187.9 64.5l-3.7-2.2V58l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0f0887"
            d="M191.6 391.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M191.6 378.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM191.6 352.7l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#0f0887"
            d="M191.6 339.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0e0887"
            d="M191.6 327l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M191.6 314.3l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#370692"
            d="M191.6 301.4l-3.7-2V295l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M191.6 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M191.6 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#180889"
            d="M191.6 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M191.6 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M191.6 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M191.6 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#0d0887"
            d="M191.6 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#100887"
            d="M191.6 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#160888"
            d="M191.6 186.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M191.6 173.3l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1f078a"
            d="M191.6 160.5l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#440597"
            d="M191.6 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#400595"
            d="M191.6 135l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#850fa0"
            d="M191.6 122.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#410596"
            d="M191.6 109.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#a32295"
            d="M191.6 96.5l-3.7-2.1V90l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#1f078a"
            d="M191.6 83.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#29078d"
            d="M191.6 70.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#100887"
            d="M195.3 384.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M195.3 371.9l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M195.3 359l-3.7-2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M195.3 346.3l-3.7-2.2V340l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#1f078b"
            d="M195.3 333.5l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M195.3 320.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0e0887"
            d="M195.3 307.9l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0d0887"
            d="M195.3 295l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0f0887"
            d="M195.3 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2a078e"
            d="M195.3 269.4l-3.7-2.1V263l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#180889"
            d="M195.3 256.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M195.3 243.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0f0887"
            d="M195.3 231l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#160888"
            d="M195.3 218.2l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M195.3 205.4l-3.7-2.2V199l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M195.3 192.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#29078d"
            d="M195.3 179.8l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0e0887"
            d="M195.3 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1b088a"
            d="M195.3 154.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#25078c"
            d="M195.3 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#5c02a1"
            d="M195.3 128.5l-3.7-2.1V122l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2f078f"
            d="M195.3 115.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#460598"
            d="M195.3 102.9l-3.7-2.2v-4.2l3.7-2.1 3.7 2v4.3z"
          />
          <path
            fill="#430597"
            d="M195.3 90l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#5d02a2"
            d="M195.3 77.3l-3.7-2.2V71l3.7-2.2L199 71V75z"
          />
          <path
            fill="#110888"
            d="M195.3 64.5l-3.7-2.2V58l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0d0887"
            d="M199 391.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM199 378.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M199 365.5l-3.7-2.1V359l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M199 352.7l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#2d078f"
            d="M199 339.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M199 327l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2zM199 314.3l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0e0887"
            d="M199 301.4l-3.7-2V295l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#330690"
            d="M199 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M199 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#24078c"
            d="M199 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1a0889"
            d="M199 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M199 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#22078b"
            d="M199 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.1v4.3z"
          />
          <path
            fill="#20078b"
            d="M199 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#160888"
            d="M199 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M199 186.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#320690"
            d="M199 173.3l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M199 160.5l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#180889"
            d="M199 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1f078b"
            d="M199 135l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#400595"
            d="M199 122.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#170889"
            d="M199 109.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#2b078e"
            d="M199 96.5l-3.7-2.1V90l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#170889"
            d="M199 83.7l-3.7-2.2v-4.2L199 75l3.7 2.2v4.2z"
          />
          <path
            fill="#1b088a"
            d="M199 70.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#1d088a"
            d="M202.7 384.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M202.7 371.9l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M202.7 359l-3.7-2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M202.7 346.3L199 344V340l3.7-2.2 3.7 2.2v4.2zM202.7 333.5l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2zM202.7 307.9l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3zM202.7 295l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M202.7 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M202.7 269.4l-3.7-2.1V263l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#22078b"
            d="M202.7 256.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#160888"
            d="M202.7 243.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#2a078e"
            d="M202.7 231l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#7404a5"
            d="M202.7 218.2L199 216v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#460598"
            d="M202.7 205.4l-3.7-2.2V199l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#130888"
            d="M202.7 192.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#160888"
            d="M202.7 179.8l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0f0887"
            d="M202.7 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#24078c"
            d="M202.7 154.1L199 152v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M202.7 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#310690"
            d="M202.7 128.5l-3.7-2.1V122l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#3d0594"
            d="M202.7 115.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#29078d"
            d="M202.7 102.9l-3.7-2.2v-4.2l3.7-2.1 3.7 2v4.3z"
          />
          <path
            fill="#140888"
            d="M202.7 90l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2zM202.7 77.3L199 75V71l3.7-2.2 3.7 2.2V75z"
          />
          <path
            fill="#0f0887"
            d="M202.7 64.5l-3.7-2.2V58l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#140888"
            d="M206.4 391.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M206.4 378.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM206.4 365.5l-3.7-2.1V359l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0e0887"
            d="M206.4 327l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M206.4 314.3l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3zM206.4 301.4l-3.7-2V295l3.7-2.1 3.7 2.1v4.3zM206.4 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M206.4 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1e078a"
            d="M206.4 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1a0889"
            d="M206.4 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM206.4 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#4c049a"
            d="M206.4 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#190889"
            d="M206.4 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#380692"
            d="M206.4 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1c088a"
            d="M206.4 186.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#1a0889"
            d="M206.4 173.3l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M206.4 160.5l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#150888"
            d="M206.4 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#320690"
            d="M206.4 135l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#460598"
            d="M206.4 122.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#21078b"
            d="M206.4 109.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#120888"
            d="M206.4 96.5l-3.7-2.1V90l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#160888"
            d="M206.4 83.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2zM206.4 70.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M210 384.7l-3.6-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM210 371.9l-3.6-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M210 359l-3.6-2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M210 346.3l-3.6-2.2V340l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M210 333.5l-3.6-2.2v-4.2l3.7-2.2 3.7 2.2v4.2zM210 320.7l-3.6-2.2v-4.2l3.7-2.2 3.7 2.2v4.2zM210 307.9l-3.6-2.2v-4.3l3.7-2 3.7 2v4.3zM210 295l-3.6-2.1v-4.3l3.7-2.1 3.7 2v4.4zM210 282.2l-3.6-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M210 269.4l-3.6-2.1V263l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M210 256.6l-3.6-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#170889"
            d="M210 243.8l-3.6-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#1e078a"
            d="M210 231l-3.6-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#20078b"
            d="M210 218.2l-3.6-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#23078c"
            d="M210 205.4l-3.6-2.2V199l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#150888"
            d="M210 192.6l-3.6-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#130888"
            d="M210 179.8l-3.6-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#450598"
            d="M210 167l-3.6-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#170889"
            d="M210 154.1l-3.6-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1a0889"
            d="M210 141.3l-3.6-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#23078c"
            d="M210 128.5l-3.6-2.1V122l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#24078c"
            d="M210 115.7l-3.6-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#1a0889"
            d="M210 102.9l-3.6-2.2v-4.2l3.7-2.1 3.7 2v4.3z"
          />
          <path
            fill="#1d088a"
            d="M210 90l-3.6-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#1b088a"
            d="M210 77.3l-3.6-2.2V71l3.7-2.2 3.7 2.2V75z"
          />
          <path
            fill="#0d0887"
            d="M213.8 391.1L210 389v-4.3l3.8-2.1 3.6 2.1v4.3zM213.8 378.3l-3.8-2.1v-4.3l3.8-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M213.8 365.5l-3.8-2.1V359l3.8-2.1 3.6 2v4.4z"
          />
          <path
            fill="#0d0887"
            d="M213.8 339.9l-3.8-2.2v-4.2l3.8-2.2 3.6 2.2v4.2z"
          />
          <path
            fill="#0e0887"
            d="M213.8 327l-3.8-2v-4.3l3.8-2.2 3.6 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M213.8 314.3L210 312v-4.3l3.8-2 3.6 2v4.3zM213.8 301.4l-3.8-2V295l3.8-2.1 3.6 2.1v4.3zM213.8 288.6l-3.8-2.1v-4.3l3.8-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M213.8 275.8l-3.8-2.1v-4.3l3.8-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M213.8 263l-3.8-2.1v-4.3l3.8-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#100888"
            d="M213.8 250.2l-3.8-2.1v-4.3l3.8-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#160889"
            d="M213.8 237.4l-3.8-2.1V231l3.8-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#1b088a"
            d="M213.8 224.6l-3.8-2.1v-4.3l3.8-2.2 3.6 2.2v4.3z"
          />
          <path
            fill="#130888"
            d="M213.8 211.8l-3.8-2.2v-4.2l3.8-2.2 3.6 2.2v4.2z"
          />
          <path
            fill="#1c088a"
            d="M213.8 199l-3.8-2.1v-4.3l3.8-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#190889"
            d="M213.8 186.2L210 184v-4.2l3.8-2.2 3.6 2.2v4.2z"
          />
          <path
            fill="#380692"
            d="M213.8 173.3l-3.8-2v-4.4l3.8-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#300690"
            d="M213.8 160.5l-3.8-2.1v-4.3l3.8-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#52039d"
            d="M213.8 147.7l-3.8-2.1v-4.3l3.8-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#4c049a"
            d="M213.8 135l-3.8-2.2v-4.3l3.8-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#150888"
            d="M213.8 122.1L210 120v-4.3l3.8-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#340691"
            d="M213.8 109.3l-3.8-2.1v-4.3l3.8-2.1 3.6 2v4.4z"
          />
          <path
            fill="#0e0887"
            d="M213.8 96.5l-3.8-2.1V90l3.8-2.2 3.6 2.2v4.3z"
          />
          <path
            fill="#120888"
            d="M213.8 83.7l-3.8-2.2v-4.2l3.8-2.2 3.6 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M213.8 70.9l-3.8-2.2v-4.2l3.8-2.2 3.6 2.2v4.2z"
          />
          <path
            fill="#0f0887"
            d="M217.4 384.7l-3.7-2.1v-4.3l3.8-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M217.4 371.9l-3.7-2.1v-4.3l3.8-2.1 3.6 2.1v4.3zM217.4 359l-3.7-2v-4.3l3.8-2.1 3.6 2v4.4z"
          />
          <path
            fill="#2a078e"
            d="M217.4 346.3l-3.7-2.2V340l3.8-2.2 3.6 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M217.4 333.5l-3.7-2.2v-4.2l3.8-2.2 3.6 2.2v4.2zM217.4 320.7l-3.7-2.2v-4.2l3.8-2.2 3.6 2.2v4.2zM217.4 295l-3.7-2.1v-4.3l3.8-2.1 3.6 2v4.4z"
          />
          <path
            fill="#0e0887"
            d="M217.4 282.2l-3.7-2.1v-4.3l3.8-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M217.4 269.4l-3.7-2.1V263l3.8-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#1d078a"
            d="M217.4 256.6l-3.7-2.1v-4.3l3.8-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#190889"
            d="M217.4 243.8l-3.7-2.1v-4.3l3.8-2.1 3.6 2v4.4z"
          />
          <path
            fill="#1b088a"
            d="M217.4 231l-3.7-2.1v-4.3l3.8-2.1 3.6 2v4.4z"
          />
          <path
            fill="#150888"
            d="M217.4 218.2l-3.7-2.2v-4.2l3.8-2.2 3.6 2.2v4.2z"
          />
          <path
            fill="#110888"
            d="M217.4 205.4l-3.7-2.2V199l3.8-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#170889"
            d="M217.4 192.6l-3.7-2.2v-4.2l3.8-2.2 3.6 2.2v4.2z"
          />
          <path
            fill="#320690"
            d="M217.4 179.8l-3.7-2.2v-4.3l3.8-2 3.6 2v4.3z"
          />
          <path
            fill="#21078b"
            d="M217.4 167l-3.7-2.2v-4.3l3.8-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#1f078b"
            d="M217.4 154.1l-3.7-2.1v-4.3l3.8-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#1a0889"
            d="M217.4 141.3l-3.7-2.1v-4.3l3.8-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#380692"
            d="M217.4 128.5l-3.7-2.1V122l3.8-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#180889"
            d="M217.4 115.7l-3.7-2.1v-4.3l3.8-2.1 3.6 2v4.4z"
          />
          <path
            fill="#26078c"
            d="M217.4 102.9l-3.7-2.2v-4.2l3.8-2.1 3.6 2v4.3z"
          />
          <path
            fill="#180889"
            d="M217.4 90l-3.7-2v-4.3l3.8-2.2 3.6 2.2v4.2z"
          />
          <path
            fill="#150888"
            d="M217.4 77.3l-3.7-2.2V71l3.8-2.2L221 71V75z"
          />
          <path
            fill="#0d0887"
            d="M221.2 391.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM221.2 378.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M221.2 365.5l-3.7-2.1V359l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#29078d"
            d="M221.2 352.7l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#100887"
            d="M221.2 339.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M221.2 327l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2zM221.2 314.3l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3zM221.2 301.4l-3.7-2V295l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#380692"
            d="M221.2 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M221.2 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M221.2 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#25078c"
            d="M221.2 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M221.2 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M221.2 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#0f0887"
            d="M221.2 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#170889"
            d="M221.2 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1b088a"
            d="M221.2 186.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#340691"
            d="M221.2 173.3l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#130888"
            d="M221.2 160.5l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#340691"
            d="M221.2 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1e078a"
            d="M221.2 135l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#3e0595"
            d="M221.2 122.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M221.2 109.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#2e078f"
            d="M221.2 96.5l-3.7-2.1V90l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#0f0887"
            d="M221.2 83.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M221.2 70.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2zM224.8 384.7l-3.7-2.1v-4.3l3.8-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M224.8 371.9l-3.7-2.1v-4.3l3.8-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M224.8 359l-3.7-2v-4.3l3.8-2.1 3.6 2v4.4z"
          />
          <path
            fill="#26078c"
            d="M224.8 346.3l-3.7-2.2V340l3.8-2.2 3.6 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M224.8 333.5l-3.7-2.2v-4.2l3.8-2.2 3.6 2.2v4.2zM224.8 320.7l-3.7-2.2v-4.2l3.8-2.2 3.6 2.2v4.2zM224.8 307.9l-3.7-2.2v-4.3l3.8-2 3.6 2v4.3zM224.8 295l-3.7-2.1v-4.3l3.8-2.1 3.6 2v4.4z"
          />
          <path
            fill="#110888"
            d="M224.8 282.2l-3.7-2.1v-4.3l3.8-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#130888"
            d="M224.8 269.4l-3.7-2.1V263l3.8-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M224.8 256.6l-3.7-2.1v-4.3l3.8-2.1 3.6 2.1v4.3zM224.8 243.8l-3.7-2.1v-4.3l3.8-2.1 3.6 2v4.4z"
          />
          <path
            fill="#2f078f"
            d="M224.8 231l-3.7-2.1v-4.3l3.8-2.1 3.6 2v4.4z"
          />
          <path
            fill="#130888"
            d="M224.8 218.2l-3.7-2.2v-4.2l3.8-2.2 3.6 2.2v4.2zM224.8 205.4l-3.7-2.2V199l3.8-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#180889"
            d="M224.8 192.6l-3.7-2.2v-4.2l3.8-2.2 3.6 2.2v4.2z"
          />
          <path
            fill="#120888"
            d="M224.8 179.8l-3.7-2.2v-4.3l3.8-2 3.6 2v4.3z"
          />
          <path
            fill="#21078b"
            d="M224.8 167l-3.7-2.2v-4.3l3.8-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#410596"
            d="M224.8 154.1l-3.7-2.1v-4.3l3.8-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#2c078e"
            d="M224.8 141.3l-3.7-2.1v-4.3l3.8-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#1e078a"
            d="M224.8 128.5l-3.7-2.1V122l3.8-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M224.8 115.7l-3.7-2.1v-4.3l3.8-2.1 3.6 2v4.4z"
          />
          <path
            fill="#1a0889"
            d="M224.8 102.9l-3.7-2.2v-4.2l3.8-2.1 3.6 2v4.3z"
          />
          <path
            fill="#0f0887"
            d="M224.8 90l-3.7-2v-4.3l3.8-2.2 3.6 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M224.8 77.3l-3.7-2.2V71l3.8-2.2 3.6 2.2V75zM228.5 365.5l-3.7-2.1V359l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#1a0889"
            d="M228.5 352.7l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#0d0887"
            d="M228.5 339.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2zM228.5 327l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2zM228.5 314.3l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3zM228.5 301.4l-3.7-2V295l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M228.5 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M228.5 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#25078c"
            d="M228.5 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M228.5 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1d088a"
            d="M228.5 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#190889"
            d="M228.5 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#140888"
            d="M228.5 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#1b088a"
            d="M228.5 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M228.5 186.2l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#160889"
            d="M228.5 173.3l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#170889"
            d="M228.5 160.5l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#340691"
            d="M228.5 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#27078d"
            d="M228.5 135l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M228.5 122.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#26078c"
            d="M228.5 109.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0f0887"
            d="M228.5 96.5l-3.7-2.1V90l3.7-2.2 3.7 2.2v4.3zM228.5 83.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M228.5 70.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#100887"
            d="M232.2 371.9l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#170889"
            d="M232.2 359l-3.7-2v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0d0887"
            d="M232.2 346.3l-3.7-2.2V340l3.7-2.2 3.7 2.2v4.2zM232.2 333.5l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0e0887"
            d="M232.2 320.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M232.2 307.9l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#1a0889"
            d="M232.2 295l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0e0887"
            d="M232.2 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M232.2 269.4l-3.7-2.1V263l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#340691"
            d="M232.2 256.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M232.2 243.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#20078b"
            d="M232.2 231l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#3a0693"
            d="M232.2 218.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#1a0889"
            d="M232.2 205.4l-3.7-2.2V199l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#190889"
            d="M232.2 192.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#2c078e"
            d="M232.2 179.8l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#150888"
            d="M232.2 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2b078e"
            d="M232.2 154.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#20078b"
            d="M232.2 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#190889"
            d="M232.2 128.5l-3.7-2.1V122l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1e078a"
            d="M232.2 115.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#110888"
            d="M232.2 102.9l-3.7-2.2v-4.2l3.7-2.1 3.7 2v4.3z"
          />
          <path
            fill="#1b0889"
            d="M232.2 90l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M232.2 77.3l-3.7-2.2V71l3.7-2.2L236 71V75z"
          />
          <path
            fill="#140888"
            d="M236 365.5l-3.8-2.1V359l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0f0887"
            d="M236 352.7l-3.8-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#0d0887"
            d="M236 339.9l-3.8-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#100887"
            d="M236 327l-3.8-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M236 314.3l-3.8-2.2v-4.3l3.7-2 3.7 2v4.3zM236 301.4l-3.8-2V295l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#310690"
            d="M236 288.6l-3.8-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M236 275.8l-3.8-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M236 263l-3.8-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#340691"
            d="M236 250.2l-3.8-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2e078f"
            d="M236 237.4l-3.8-2.1V231l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1c088a"
            d="M236 224.6l-3.8-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#1f078b"
            d="M236 211.8l-3.8-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#190889"
            d="M236 199l-3.8-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M236 186.2l-3.8-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#25078c"
            d="M236 173.3l-3.8-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#190889"
            d="M236 160.5l-3.8-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#21078b"
            d="M236 147.7l-3.8-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1e078a"
            d="M236 135l-3.8-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#180889"
            d="M236 122.1l-3.8-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M236 109.3l-3.8-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#190889"
            d="M236 96.5l-3.8-2.1V90l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#0d0887"
            d="M236 70.9l-3.8-2.2v-4.2l3.7-2.2 3.7 2.2v4.2zM239.6 384.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M239.6 371.9l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#130888"
            d="M239.6 359l-3.7-2v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0d0887"
            d="M239.6 346.3L236 344V340l3.7-2.2 3.7 2.2v4.2zM239.6 333.5l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0e0887"
            d="M239.6 320.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M239.6 307.9l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#23078c"
            d="M239.6 295l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#130888"
            d="M239.6 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#410596"
            d="M239.6 269.4l-3.7-2.1V263l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1a0889"
            d="M239.6 256.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M239.6 243.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#440597"
            d="M239.6 231l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#100887"
            d="M239.6 218.2L236 216v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0e0887"
            d="M239.6 205.4l-3.7-2.2V199l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#180889"
            d="M239.6 192.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#100887"
            d="M239.6 179.8l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#140888"
            d="M239.6 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#20078b"
            d="M239.6 154.1L236 152v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#23078c"
            d="M239.6 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1e078a"
            d="M239.6 128.5l-3.7-2.1V122l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M239.6 115.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4zM239.6 102.9l-3.7-2.2v-4.2l3.7-2.1 3.7 2v4.3z"
          />
          <path
            fill="#0e0887"
            d="M239.6 90l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2zM239.6 77.3L236 75V71l3.7-2.2 3.7 2.2V75z"
          />
          <path
            fill="#0d0887"
            d="M243.3 378.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#150888"
            d="M243.3 365.5l-3.7-2.1V359l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#140888"
            d="M243.3 327l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M243.3 314.3l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#25078c"
            d="M243.3 301.4l-3.7-2V295l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#130888"
            d="M243.3 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#150888"
            d="M243.3 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#190889"
            d="M243.3 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#160888"
            d="M243.3 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2b078e"
            d="M243.3 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#330691"
            d="M243.3 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#0e0887"
            d="M243.3 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M243.3 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M243.3 186.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0e0887"
            d="M243.3 173.3l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#170889"
            d="M243.3 160.5l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M243.3 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1b088a"
            d="M243.3 135l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#160889"
            d="M243.3 122.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1f078b"
            d="M243.3 109.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#150888"
            d="M243.3 96.5l-3.7-2.1V90l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#100887"
            d="M243.3 83.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M247 384.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM247 371.9l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM247 359l-3.7-2v-4.3l3.7-2.1 3.7 2.1v4.3zM247 346.3l-3.7-2.2V340l3.7-2.2 3.7 2.2v4.2zM247 333.5l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2zM247 320.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0e0887"
            d="M247 307.9l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#21078b"
            d="M247 295l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#150888"
            d="M247 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M247 269.4l-3.7-2.1V263l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#440597"
            d="M247 256.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2d078e"
            d="M247 243.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#2b078e"
            d="M247 231l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0e0887"
            d="M247 218.2l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M247 205.4l-3.7-2.2V199l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#20078b"
            d="M247 192.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.1v4.3z"
          />
          <path
            fill="#1a0889"
            d="M247 179.8l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#120888"
            d="M247 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M247 154.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#180889"
            d="M247 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M247 128.5l-3.7-2.1V122l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M247 115.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0d0887"
            d="M247 102.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#160889"
            d="M247 90l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M247 77.3l-3.7-2.2V71l3.7-2.2 3.7 2.2V75z"
          />
          <path
            fill="#150888"
            d="M250.7 365.5l-3.7-2.1V359l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0d0887"
            d="M250.7 339.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#130888"
            d="M250.7 327l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M250.7 314.3L247 312v-4.3l3.7-2 3.7 2v4.3zM250.7 301.4l-3.7-2V295l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2b078e"
            d="M250.7 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#27078d"
            d="M250.7 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#490499"
            d="M250.7 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#20078b"
            d="M250.7 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#3c0694"
            d="M250.7 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M250.7 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M250.7 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#170889"
            d="M250.7 186.2L247 184v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M250.7 173.3l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M250.7 160.5l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M250.7 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#150888"
            d="M250.7 135l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M250.7 122.1L247 120v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1f078b"
            d="M250.7 109.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0d0887"
            d="M250.7 96.5l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#110888"
            d="M250.7 83.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0e0887"
            d="M254.4 371.9l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M254.4 359l-3.7-2v-4.3l3.7-2.1 3.7 2v4.4zM254.4 346.3l-3.7-2.2V340l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0e0887"
            d="M254.4 333.5l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0f0887"
            d="M254.4 320.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#24078c"
            d="M254.4 295l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#350691"
            d="M254.4 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#330690"
            d="M254.4 269.4l-3.7-2.1V263l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1a0889"
            d="M254.4 256.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#20078b"
            d="M254.4 243.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#3d0594"
            d="M254.4 231l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0e0887"
            d="M254.4 218.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M254.4 205.4l-3.7-2.2V199l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#130888"
            d="M254.4 192.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#150888"
            d="M254.4 179.8l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0d0887"
            d="M254.4 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M254.4 154.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#160889"
            d="M254.4 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M254.4 128.5l-3.7-2.1V122l3.7-2.1 3.7 2.1v4.3zM254.4 115.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#180889"
            d="M254.4 102.9l-3.7-2.2v-4.2l3.7-2.1 3.7 2v4.3z"
          />
          <path
            fill="#0d0887"
            d="M254.4 90l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2zM254.4 77.3l-3.7-2.2V71l3.7-2.2 3.7 2.2V75zM258.1 391.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1a0889"
            d="M258.1 378.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M258.1 365.5l-3.7-2.1V359l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#170889"
            d="M258.1 352.7l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#160888"
            d="M258.1 339.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M258.1 327l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#120888"
            d="M258.1 314.3l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0d0887"
            d="M258.1 301.4l-3.7-2V295l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M258.1 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#180889"
            d="M258.1 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#21078b"
            d="M258.1 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#480498"
            d="M258.1 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#300690"
            d="M258.1 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M258.1 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#180889"
            d="M258.1 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M258.1 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM258.1 186.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#140888"
            d="M258.1 173.3l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#180889"
            d="M258.1 160.5l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M258.1 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#180889"
            d="M258.1 135l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M258.1 122.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M258.1 109.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#150888"
            d="M258.1 96.5l-3.7-2.1V90l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#0f0887"
            d="M258.1 83.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#21078b"
            d="M261.8 384.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M261.8 371.9l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#160888"
            d="M261.8 346.3l-3.7-2.2V340l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#130888"
            d="M261.8 333.5l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#180889"
            d="M261.8 320.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#190889"
            d="M261.8 307.9l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#130888"
            d="M261.8 295l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#170889"
            d="M261.8 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#310690"
            d="M261.8 269.4l-3.7-2.1V263l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#24078c"
            d="M261.8 256.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#21078b"
            d="M261.8 243.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#28078d"
            d="M261.8 231l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#21078b"
            d="M261.8 218.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M261.8 205.4l-3.7-2.2V199l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1a0889"
            d="M261.8 192.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0e0887"
            d="M261.8 179.8l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#110888"
            d="M261.8 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1a0889"
            d="M261.8 154.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#22078b"
            d="M261.8 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M261.8 128.5l-3.7-2.1V122l3.7-2.1 3.7 2.1v4.3zM261.8 115.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0d0887"
            d="M261.8 102.9l-3.7-2.2v-4.2l3.7-2.1 3.7 2v4.3z"
          />
          <path
            fill="#120888"
            d="M261.8 90l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M261.8 77.3l-3.7-2.2V71l3.7-2.2 3.7 2.2V75zM265.5 391.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM265.5 378.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M265.5 365.5l-3.7-2.1V359l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0d0887"
            d="M265.5 352.7l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#0e0887"
            d="M265.5 339.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#2f078f"
            d="M265.5 327l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#3b0694"
            d="M265.5 314.3l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0f0887"
            d="M265.5 301.4l-3.7-2V295l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1e078a"
            d="M265.5 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM265.5 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2e078f"
            d="M265.5 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#330690"
            d="M265.5 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#22078b"
            d="M265.5 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#400596"
            d="M265.5 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#100887"
            d="M265.5 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0e0887"
            d="M265.5 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M265.5 186.2l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M265.5 173.3l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M265.5 160.5l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#170889"
            d="M265.5 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M265.5 135l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M265.5 122.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M265.5 109.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0e0887"
            d="M265.5 96.5l-3.7-2.1V90l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#0d0887"
            d="M265.5 83.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0e0887"
            d="M269.2 371.9l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M269.2 359l-3.7-2v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0f0887"
            d="M269.2 333.5l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#390693"
            d="M269.2 320.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#22078b"
            d="M269.2 307.9l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#24078c"
            d="M269.2 295l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#25078c"
            d="M269.2 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1d088a"
            d="M269.2 269.4l-3.7-2.1V263l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#27078d"
            d="M269.2 256.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2c078e"
            d="M269.2 243.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#24078c"
            d="M269.2 231l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#310690"
            d="M269.2 218.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#140888"
            d="M269.2 205.4l-3.7-2.2V199l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#190889"
            d="M269.2 192.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M269.2 179.8l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#150888"
            d="M269.2 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3zM269.2 154.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M269.2 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M269.2 128.5l-3.7-2.1V122l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M269.2 115.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4zM269.2 102.9l-3.7-2.2v-4.2l3.7-2.1 3.7 2v4.3z"
          />
          <path
            fill="#0e0887"
            d="M269.2 90l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M269.2 77.3l-3.7-2.2V71l3.7-2.2L273 71V75z"
          />
          <path
            fill="#0e0887"
            d="M273 404l-3.8-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M273 378.3l-3.8-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M273 365.5l-3.8-2.1V359l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0d0887"
            d="M273 339.9l-3.8-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#100887"
            d="M273 327l-3.8-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#20078b"
            d="M273 314.3l-3.8-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#23078c"
            d="M273 301.4l-3.8-2V295l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2c078e"
            d="M273 288.6l-3.8-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#3f0595"
            d="M273 275.8l-3.8-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1e078a"
            d="M273 263l-3.8-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#5f02a3"
            d="M273 250.2l-3.8-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#490499"
            d="M273 237.4l-3.8-2.1V231l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1f078b"
            d="M273 224.6l-3.8-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#170889"
            d="M273 211.8l-3.8-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#100887"
            d="M273 199l-3.8-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M273 186.2l-3.8-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0e0887"
            d="M273 173.3l-3.8-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M273 160.5l-3.8-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#160888"
            d="M273 147.7l-3.8-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M273 135l-3.8-2.2v-4.3l3.7-2.1 3.7 2.1v4.3zM273 122.1l-3.8-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM273 109.3l-3.8-2.1v-4.3l3.7-2.1 3.7 2v4.4zM273 96.5l-3.8-2.1V90l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#0e0887"
            d="M273 83.7l-3.8-2.2v-4.2L273 75l3.7 2.2v4.2z"
          />
          <path
            fill="#110888"
            d="M276.6 371.9l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#190889"
            d="M276.6 359l-3.7-2v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0d0887"
            d="M276.6 333.5l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#27078d"
            d="M276.6 320.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#170889"
            d="M276.6 307.9l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#140888"
            d="M276.6 295l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4zM276.6 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2b078e"
            d="M276.6 269.4l-3.7-2.1V263l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#400595"
            d="M276.6 256.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#3f0595"
            d="M276.6 243.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#150888"
            d="M276.6 231l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#20078b"
            d="M276.6 218.2L273 216v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#100887"
            d="M276.6 205.4l-3.7-2.2V199l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#170889"
            d="M276.6 192.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M276.6 179.8l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#130888"
            d="M276.6 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1b088a"
            d="M276.6 154.1L273 152v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M276.6 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM276.6 128.5l-3.7-2.1V122l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M276.6 115.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4zM276.6 102.9l-3.7-2.2v-4.2l3.7-2.1 3.7 2v4.3z"
          />
          <path
            fill="#0f0887"
            d="M276.6 90l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M276.6 77.3L273 75V71l3.7-2.2 3.7 2.2V75z"
          />
          <path
            fill="#0e0887"
            d="M280.3 365.5l-3.7-2.1V359l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0d0887"
            d="M280.3 352.7l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#0e0887"
            d="M280.3 327l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#430597"
            d="M280.3 314.3l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#370692"
            d="M280.3 301.4l-3.7-2V295l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M280.3 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M280.3 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#130888"
            d="M280.3 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#340691"
            d="M280.3 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#6601a6"
            d="M280.3 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#170889"
            d="M280.3 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#0d0887"
            d="M280.3 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2zM280.3 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M280.3 186.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#20078b"
            d="M280.3 173.3l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3zM280.3 160.5l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#130888"
            d="M280.3 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M280.3 135l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M280.3 122.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM280.3 109.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4zM280.3 96.5l-3.7-2.1V90l3.7-2.2 3.7 2.2v4.3zM280.3 83.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0e0887"
            d="M284 371.9l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#160888"
            d="M284 359l-3.7-2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#24078c"
            d="M284 320.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#340691"
            d="M284 307.9l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#370692"
            d="M284 295l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2f078f"
            d="M284 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#22078b"
            d="M284 269.4l-3.7-2.1V263l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M284 256.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#90169c"
            d="M284 243.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#320690"
            d="M284 231l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#160888"
            d="M284 218.2l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M284 205.4l-3.7-2.2V199l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M284 192.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M284 179.8l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#110888"
            d="M284 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#21078b"
            d="M284 154.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M284 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M284 128.5l-3.7-2.1V122l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M284 115.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4zM284 102.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0f0887"
            d="M284 90l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2zM284 77.3l-3.7-2.2V71l3.7-2.2 3.7 2.2V75z"
          />
          <path
            fill="#120888"
            d="M287.7 391.1L284 389v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M287.7 365.5l-3.7-2.1V359l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0d0887"
            d="M287.7 339.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#130888"
            d="M287.7 327l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#180889"
            d="M287.7 314.3L284 312v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#53039e"
            d="M287.7 301.4l-3.7-2V295l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#360692"
            d="M287.7 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#180889"
            d="M287.7 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M287.7 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#6301a5"
            d="M287.7 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#57039f"
            d="M287.7 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M287.7 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#0d0887"
            d="M287.7 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0f0887"
            d="M287.7 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M287.7 186.2L284 184v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M287.7 160.5l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M287.7 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M287.7 135l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M287.7 122.1L284 120v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M287.7 109.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#140888"
            d="M287.7 96.5l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#0d0887"
            d="M287.7 83.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#180889"
            d="M291.4 384.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#150888"
            d="M291.4 333.5l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#100887"
            d="M291.4 320.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#150888"
            d="M291.4 307.9l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#1c088a"
            d="M291.4 295l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#110888"
            d="M291.4 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#4a049a"
            d="M291.4 269.4l-3.7-2.1V263l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#170889"
            d="M291.4 256.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#380692"
            d="M291.4 243.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4zM291.4 231l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#130888"
            d="M291.4 205.4l-3.7-2.2V199l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M291.4 192.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0e0887"
            d="M291.4 179.8l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0f0887"
            d="M291.4 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1d088a"
            d="M291.4 154.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M291.4 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#190889"
            d="M291.4 128.5l-3.7-2.1V122l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M291.4 115.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4zM291.4 102.9l-3.7-2.2v-4.2l3.7-2.1 3.7 2v4.3z"
          />
          <path
            fill="#0e0887"
            d="M291.4 90l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M291.4 77.3l-3.7-2.2V71l3.7-2.2 3.7 2.2V75z"
          />
          <path
            fill="#21078b"
            d="M295.1 429.6l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#20078b"
            d="M295.1 378.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M295.1 365.5l-3.7-2.1V359l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0d0887"
            d="M295.1 352.7l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#1a0889"
            d="M295.1 339.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M295.1 327l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2zM295.1 314.3l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0f0887"
            d="M295.1 301.4l-3.7-2V295l3.7-2.1 3.7 2.1v4.3zM295.1 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#5d02a2"
            d="M295.1 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#52039d"
            d="M295.1 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#490499"
            d="M295.1 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2c078e"
            d="M295.1 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M295.1 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#0d0887"
            d="M295.1 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#100887"
            d="M295.1 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M295.1 186.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2zM295.1 173.3l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M295.1 160.5l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M295.1 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M295.1 135l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M295.1 122.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M295.1 109.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#190889"
            d="M295.1 96.5l-3.7-2.1V90l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#0f0887"
            d="M295.1 83.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M298.8 436l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM298.8 410.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#320690"
            d="M298.8 384.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#190889"
            d="M298.8 371.9l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M298.8 359l-3.7-2v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0f0887"
            d="M298.8 346.3l-3.7-2.2V340l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M298.8 333.5l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#100887"
            d="M298.8 320.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0f0887"
            d="M298.8 307.9l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#190889"
            d="M298.8 295l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0f0887"
            d="M298.8 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#390693"
            d="M298.8 269.4l-3.7-2.1V263l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M298.8 256.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#22078b"
            d="M298.8 243.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0d0887"
            d="M298.8 231l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0e0887"
            d="M298.8 218.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#140888"
            d="M298.8 205.4l-3.7-2.2V199l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M298.8 179.8l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#100888"
            d="M298.8 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M298.8 154.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM298.8 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M298.8 128.5l-3.7-2.1V122l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M298.8 115.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0e0887"
            d="M298.8 102.9l-3.7-2.2v-4.2l3.7-2.1 3.7 2v4.3z"
          />
          <path
            fill="#100887"
            d="M298.8 90l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0f0887"
            d="M298.8 77.3l-3.7-2.2V71l3.7-2.2 3.7 2.2V75z"
          />
          <path
            fill="#0d0887"
            d="M302.5 416.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM302.5 404l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#170889"
            d="M302.5 391.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M302.5 378.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM302.5 339.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0e0887"
            d="M302.5 327l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M302.5 314.3l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#130888"
            d="M302.5 301.4l-3.7-2V295l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M302.5 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#380692"
            d="M302.5 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M302.5 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM302.5 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1a0889"
            d="M302.5 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M302.5 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M302.5 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0f0887"
            d="M302.5 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M302.5 186.2l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3zM302.5 173.3l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#180889"
            d="M302.5 160.5l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M302.5 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M302.5 135l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M302.5 122.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM302.5 109.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#150888"
            d="M302.5 96.5l-3.7-2.1V90l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#0d0887"
            d="M302.5 83.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#190889"
            d="M306.2 436l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M306.2 410.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#130888"
            d="M306.2 397.5l-3.7-2.1V391l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M306.2 333.5l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2zM306.2 320.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2zM306.2 307.9l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#100888"
            d="M306.2 295l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0d0887"
            d="M306.2 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM306.2 269.4l-3.7-2.1V263l3.7-2.1 3.7 2.1v4.3zM306.2 256.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M306.2 218.2l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M306.2 205.4l-3.7-2.2V199l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#160889"
            d="M306.2 179.8l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0d0887"
            d="M306.2 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M306.2 154.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M306.2 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M306.2 128.5l-3.7-2.1V122l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M306.2 115.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0d0887"
            d="M306.2 102.9l-3.7-2.2v-4.2l3.7-2.1 3.7 2v4.3z"
          />
          <path
            fill="#0f0887"
            d="M306.2 90l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M306.2 77.3l-3.7-2.2V71l3.7-2.2 3.7 2.2V75zM309.9 442.4l-3.7-2.2V436l3.7-2.1 3.7 2.1v4.3zM309.9 378.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M309.9 327l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M309.9 314.3l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#140888"
            d="M309.9 301.4l-3.7-2V295l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M309.9 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#3d0594"
            d="M309.9 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M309.9 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M309.9 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#150888"
            d="M309.9 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M309.9 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#100887"
            d="M309.9 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#110888"
            d="M309.9 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM309.9 186.2l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#190889"
            d="M309.9 173.3l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#23078c"
            d="M309.9 160.5l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M309.9 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M309.9 135l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M309.9 122.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M309.9 109.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#120888"
            d="M309.9 96.5l-3.7-2.1V90l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#0f0887"
            d="M309.9 83.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M313.6 436l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1c088a"
            d="M313.6 397.5l-3.7-2.1V391l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M313.6 320.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2zM313.6 307.9l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0f0887"
            d="M313.6 295l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#1a0889"
            d="M313.6 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M313.6 269.4l-3.7-2.1V263l3.7-2.1 3.7 2.1v4.3zM313.6 218.2l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M313.6 205.4l-3.7-2.2V199l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M313.6 192.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0f0887"
            d="M313.6 179.8l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#460598"
            d="M313.6 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M313.6 154.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M313.6 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M313.6 128.5l-3.7-2.1V122l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M313.6 115.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#25078c"
            d="M313.6 102.9l-3.7-2.2v-4.2l3.7-2.1 3.7 2v4.3z"
          />
          <path
            fill="#0e0887"
            d="M313.6 90l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#1c088a"
            d="M317.3 442.4l-3.7-2.2V436l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M317.3 429.6l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3zM317.3 404l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M317.3 327l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M317.3 314.3l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#110888"
            d="M317.3 301.4l-3.7-2V295l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M317.3 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2a078d"
            d="M317.3 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M317.3 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M317.3 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M317.3 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0f0887"
            d="M317.3 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#170889"
            d="M317.3 186.2l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#390693"
            d="M317.3 173.3l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2c078e"
            d="M317.3 160.5l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M317.3 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M317.3 135l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3zM317.3 122.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M317.3 109.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#1d088a"
            d="M317.3 96.5l-3.7-2.1V90l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#0d0887"
            d="M317.3 83.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2zM321 436l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM321 410.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM321 307.9l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3zM321 295l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#24078c"
            d="M321 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M321 269.4l-3.7-2.1V263l3.7-2.1 3.7 2.1v4.3zM321 256.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M321 231l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0d0887"
            d="M321 218.2l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3zM321 192.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.1v4.3z"
          />
          <path
            fill="#1a0889"
            d="M321 179.8l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#27078d"
            d="M321 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M321 154.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M321 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M321 128.5l-3.7-2.1V122l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#130888"
            d="M321 115.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#150888"
            d="M321 102.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#180889"
            d="M321 90l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M324.7 429.6l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#1a0889"
            d="M324.7 404l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M324.7 301.4l-3.7-2V295l3.7-2.1 3.7 2.1v4.3zM324.7 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M324.7 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M324.7 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M324.7 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#0e0887"
            d="M324.7 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M324.7 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#130888"
            d="M324.7 186.2L321 184v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1c088a"
            d="M324.7 173.3l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#130888"
            d="M324.7 160.5l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M324.7 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M324.7 135l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M324.7 122.1L321 120v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M324.7 109.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0e0887"
            d="M324.7 96.5l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#0f0887"
            d="M324.7 83.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M328.4 320.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0f0887"
            d="M328.4 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M328.4 269.4l-3.7-2.1V263l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M328.4 243.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4zM328.4 231l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0f0887"
            d="M328.4 218.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M328.4 192.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#100887"
            d="M328.4 179.8l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#130888"
            d="M328.4 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M328.4 154.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M328.4 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M328.4 128.5l-3.7-2.1V122l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M328.4 115.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#130888"
            d="M328.4 102.9l-3.7-2.2v-4.2l3.7-2.1 3.7 2v4.3z"
          />
          <path
            fill="#0e0887"
            d="M328.4 90l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#1d088a"
            d="M332 429.6l-3.6-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0d0887"
            d="M332 404l-3.6-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2c078e"
            d="M332 327l-3.6-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#100887"
            d="M332 275.8l-3.6-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M332 250.2l-3.6-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M332 237.4l-3.6-2.1V231l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#180889"
            d="M332 224.6l-3.6-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#0d0887"
            d="M332 199l-3.6-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M332 186.2l-3.6-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#150888"
            d="M332 173.3l-3.6-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M332 160.5l-3.6-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM332 147.7l-3.6-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M332 135l-3.6-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M332 122.1l-3.6-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M332 109.3l-3.6-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0d0887"
            d="M332 96.5l-3.6-2.1V90l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#0f0887"
            d="M332 83.7l-3.6-2.2v-4.2L332 75l3.7 2.2v4.2z"
          />
          <path
            fill="#1c088a"
            d="M335.8 423.1l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1d088a"
            d="M335.8 410.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M335.8 359l-3.7-2v-4.3l3.7-2.1 3.7 2v4.4zM335.8 320.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2zM335.8 295l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#330690"
            d="M335.8 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M335.8 243.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0d0887"
            d="M335.8 218.2L332 216v-4.2l3.7-2.2 3.7 2.2v4.2zM335.8 192.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0e0887"
            d="M335.8 179.8l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0d0887"
            d="M335.8 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M335.8 154.1L332 152v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M335.8 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M335.8 128.5l-3.7-2.1V122l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M335.8 115.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0f0887"
            d="M335.8 102.9l-3.7-2.2v-4.2l3.7-2.1 3.7 2v4.3z"
          />
          <path
            fill="#0d0887"
            d="M335.8 90l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#1d088a"
            d="M339.5 429.6l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0d0887"
            d="M339.5 365.5l-3.7-2.1V359l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0e0887"
            d="M339.5 339.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M339.5 327l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0e0887"
            d="M339.5 301.4l-3.7-2V295l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M339.5 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM339.5 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM339.5 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM339.5 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M339.5 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#100887"
            d="M339.5 186.2l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M339.5 173.3l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M339.5 160.5l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M339.5 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M339.5 135l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100888"
            d="M339.5 122.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#130888"
            d="M339.5 109.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0e0887"
            d="M339.5 96.5l-3.7-2.1V90l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#22078b"
            d="M339.5 83.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0f0887"
            d="M343.2 436l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M343.2 423.1l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M343.2 384.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM343.2 371.9l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M343.2 346.3l-3.7-2.2V340l3.7-2.2 3.7 2.2v4.2zM343.2 320.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2zM343.2 307.9l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3zM343.2 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM343.2 269.4l-3.7-2.1V263l3.7-2.1 3.7 2.1v4.3zM343.2 256.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M343.2 243.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4zM343.2 192.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#130888"
            d="M343.2 179.8l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0e0887"
            d="M343.2 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M343.2 154.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M343.2 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M343.2 128.5l-3.7-2.1V122l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#130888"
            d="M343.2 115.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0d0887"
            d="M343.2 102.9l-3.7-2.2v-4.2l3.7-2.1 3.7 2v4.3z"
          />
          <path
            fill="#1b088a"
            d="M343.2 90l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0e0887"
            d="M346.9 429.6l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0d0887"
            d="M346.9 391.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#22078b"
            d="M346.9 378.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M346.9 365.5l-3.7-2.1V359l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0d0887"
            d="M346.9 314.3l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3zM346.9 301.4l-3.7-2V295l3.7-2.1 3.7 2.1v4.3zM346.9 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM346.9 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM346.9 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM346.9 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M346.9 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M346.9 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#0e0887"
            d="M346.9 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M346.9 186.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0f0887"
            d="M346.9 173.3l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#130888"
            d="M346.9 160.5l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M346.9 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M346.9 135l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#160888"
            d="M346.9 122.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#130888"
            d="M346.9 109.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4zM346.9 96.5l-3.7-2.1V90l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#0e0887"
            d="M350.6 436l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M350.6 397.5l-3.7-2.1V391l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#4a049a"
            d="M350.6 384.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M350.6 346.3l-3.7-2.2V340l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#190889"
            d="M350.6 333.5l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M350.6 307.9l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3zM350.6 295l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#110888"
            d="M350.6 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M350.6 269.4l-3.7-2.1V263l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M350.6 243.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0d0887"
            d="M350.6 231l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4zM350.6 205.4l-3.7-2.2V199l3.7-2.1 3.7 2.1v4.3zM350.6 192.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#130888"
            d="M350.6 179.8l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0e0887"
            d="M350.6 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3zM350.6 154.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M350.6 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#130888"
            d="M350.6 128.5l-3.7-2.1V122l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M350.6 115.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0d0887"
            d="M350.6 102.9l-3.7-2.2v-4.2l3.7-2.1 3.7 2v4.3z"
          />
          <path
            fill="#0f0887"
            d="M350.6 90l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M354.3 442.4l-3.7-2.2V436l3.7-2.1 3.7 2.1v4.3zM354.3 429.6l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3zM354.3 404l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3zM354.3 391.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M354.3 365.5l-3.7-2.1V359l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0e0887"
            d="M354.3 339.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2zM354.3 327l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0f0887"
            d="M354.3 301.4l-3.7-2V295l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M354.3 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M354.3 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M354.3 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3zM354.3 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#1d088a"
            d="M354.3 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M354.3 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M354.3 186.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0f0887"
            d="M354.3 173.3l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M354.3 160.5l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M354.3 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M354.3 135l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2a078e"
            d="M354.3 122.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100888"
            d="M354.3 109.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#20078b"
            d="M354.3 96.5l-3.7-2.1V90l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#23078b"
            d="M354.3 83.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M358 448.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2zM358 436l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M358 397.5l-3.7-2.1V391l3.7-2.1 3.7 2.1v4.3zM358 371.9l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M358 359l-3.7-2v-4.3l3.7-2.1 3.7 2.1v4.3zM358 346.3l-3.7-2.2V340l3.7-2.2 3.7 2.2v4.2zM358 333.5l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0e0887"
            d="M358 320.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2zM358 307.9l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0d0887"
            d="M358 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM358 256.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M358 243.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4zM358 231l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#140888"
            d="M358 218.2l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1b0889"
            d="M358 192.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M358 179.8l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#120888"
            d="M358 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M358 154.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M358 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M358 128.5l-3.7-2.1V122l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M358 115.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0e0887"
            d="M358 102.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#130888"
            d="M358 90l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M361.7 455.2L358 453v-4.3l3.7-2.1 3.7 2.1v4.3zM361.7 442.4l-3.7-2.2V436l3.7-2.1 3.7 2.1v4.3zM361.7 429.6l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#2f078f"
            d="M361.7 391.1L358 389v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M361.7 365.5l-3.7-2.1V359l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#150888"
            d="M361.7 352.7l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#140888"
            d="M361.7 339.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0e0887"
            d="M361.7 327l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M361.7 314.3L358 312v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#110888"
            d="M361.7 301.4l-3.7-2V295l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M361.7 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M361.7 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M361.7 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M361.7 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M361.7 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3zM361.7 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#350691"
            d="M361.7 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0e0887"
            d="M361.7 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M361.7 186.2L358 184v-4.3l3.7-2.1 3.7 2.1v4.3zM361.7 173.3l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M361.7 160.5l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM361.7 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M361.7 135l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3zM361.7 122.1L358 120v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M361.7 109.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0f0887"
            d="M361.7 83.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M365.4 461.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2zM365.4 448.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#130888"
            d="M365.4 436l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M365.4 423.1l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M365.4 410.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1d078a"
            d="M365.4 397.5l-3.7-2.1V391l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M365.4 384.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M365.4 371.9l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#330690"
            d="M365.4 359l-3.7-2v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0e0887"
            d="M365.4 346.3l-3.7-2.2V340l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#130888"
            d="M365.4 333.5l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0e0887"
            d="M365.4 320.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2zM365.4 307.9l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0d0887"
            d="M365.4 295l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4zM365.4 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M365.4 269.4l-3.7-2.1V263l3.7-2.1 3.7 2.1v4.3zM365.4 243.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4zM365.4 231l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0d0887"
            d="M365.4 218.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#130888"
            d="M365.4 192.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M365.4 179.8l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0e0887"
            d="M365.4 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M365.4 154.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM365.4 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M365.4 128.5l-3.7-2.1V122l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1b088a"
            d="M365.4 102.9l-3.7-2.2v-4.2l3.7-2.1 3.7 2v4.3z"
          />
          <path
            fill="#0d0887"
            d="M365.4 90l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0e0887"
            d="M369 468l-3.6-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0d0887"
            d="M369 455.2l-3.6-2.2v-4.2l3.7-2.2 3.7 2.2v4.2zM369 442.4l-3.6-2.2V436l3.7-2.1 3.7 2.1v4.3zM369 429.6l-3.6-2.2v-4.3l3.7-2 3.7 2v4.3zM369 416.7l-3.6-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM369 391.1l-3.6-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M369 378.3l-3.6-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M369 365.5l-3.6-2.1V359l3.7-2.1 3.7 2v4.4zM369 352.7l-3.6-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#0f0887"
            d="M369 339.9l-3.6-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0e0887"
            d="M369 327l-3.6-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M369 314.3l-3.6-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#110888"
            d="M369 301.4l-3.6-2V295l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M369 288.6l-3.6-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M369 275.8l-3.6-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M369 263l-3.6-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M369 250.2l-3.6-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM369 237.4l-3.6-2.1V231l3.7-2.1 3.7 2.1v4.3zM369 224.6l-3.6-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#120888"
            d="M369 211.8l-3.6-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#100887"
            d="M369 199l-3.6-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M369 186.2l-3.6-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#150888"
            d="M369 173.3l-3.6-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M369 160.5l-3.6-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM369 135l-3.6-2.2v-4.3l3.7-2.1 3.7 2.1v4.3zM369 122.1l-3.6-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM369 109.3l-3.6-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#130888"
            d="M369 96.5l-3.6-2.1V90l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#0e0887"
            d="M369 83.7l-3.6-2.2v-4.2L369 75l3.7 2.2v4.2zM372.8 474.4l-3.7-2.1V468l3.7-2.1 3.7 2.1v4.3zM372.8 436l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M372.8 423.1l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#150888"
            d="M372.8 397.5l-3.7-2.1V391l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M372.8 384.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M372.8 371.9l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#360692"
            d="M372.8 359l-3.7-2v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#110888"
            d="M372.8 346.3L369 344V340l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#170889"
            d="M372.8 333.5l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0f0887"
            d="M372.8 320.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2zM372.8 307.9l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0e0887"
            d="M372.8 295l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4zM372.8 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M372.8 269.4l-3.7-2.1V263l3.7-2.1 3.7 2.1v4.3zM372.8 256.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M372.8 243.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#130888"
            d="M372.8 231l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0e0887"
            d="M372.8 218.2L369 216v-4.2l3.7-2.2 3.7 2.2v4.2zM372.8 192.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M372.8 179.8l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3zM372.8 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3zM372.8 154.1L369 152v-4.3l3.7-2.1 3.7 2.1v4.3zM372.8 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM372.8 128.5l-3.7-2.1V122l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M372.8 115.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#29078d"
            d="M372.8 102.9l-3.7-2.2v-4.2l3.7-2.1 3.7 2v4.3z"
          />
          <path
            fill="#100887"
            d="M372.8 90l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M376.5 455.2l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M376.5 429.6l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0d0887"
            d="M376.5 416.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM376.5 404l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3zM376.5 391.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#420596"
            d="M376.5 378.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#180889"
            d="M376.5 352.7l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#140888"
            d="M376.5 339.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#100887"
            d="M376.5 327l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0f0887"
            d="M376.5 314.3l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#100887"
            d="M376.5 301.4l-3.7-2V295l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M376.5 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M376.5 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M376.5 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M376.5 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M376.5 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#0f0887"
            d="M376.5 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0e0887"
            d="M376.5 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M376.5 186.2l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3zM376.5 173.3l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M376.5 160.5l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM376.5 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM376.5 135l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M376.5 122.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM376.5 109.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#160889"
            d="M376.5 96.5l-3.7-2.1V90l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#0e0887"
            d="M376.5 83.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0f0887"
            d="M380.2 487.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0d0887"
            d="M380.2 461.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2zM380.2 448.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0e0887"
            d="M380.2 436l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM380.2 423.1l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3zM380.2 397.5l-3.7-2.1V391l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M380.2 371.9l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#160889"
            d="M380.2 359l-3.7-2v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0e0887"
            d="M380.2 346.3l-3.7-2.2V340l3.7-2.2 3.7 2.2v4.2zM380.2 333.5l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2zM380.2 320.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0f0887"
            d="M380.2 307.9l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0e0887"
            d="M380.2 295l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4zM380.2 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M380.2 269.4l-3.7-2.1V263l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M380.2 256.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M380.2 243.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0e0887"
            d="M380.2 231l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4zM380.2 218.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2zM380.2 192.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M380.2 179.8l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3zM380.2 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#180889"
            d="M380.2 154.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M380.2 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M380.2 128.5l-3.7-2.1V122l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M380.2 115.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#1d078a"
            d="M380.2 102.9l-3.7-2.2v-4.2l3.7-2.1 3.7 2v4.3z"
          />
          <path
            fill="#0f0887"
            d="M380.2 90l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#100887"
            d="M383.9 493.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0d0887"
            d="M383.9 455.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2zM383.9 442.4l-3.7-2.2V436l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M383.9 429.6l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0d0887"
            d="M383.9 416.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100888"
            d="M383.9 404l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M383.9 391.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#370692"
            d="M383.9 352.7l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#0f0887"
            d="M383.9 339.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#110888"
            d="M383.9 327l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#160889"
            d="M383.9 314.3l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#110888"
            d="M383.9 301.4l-3.7-2V295l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M383.9 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1d088a"
            d="M383.9 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M383.9 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M383.9 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M383.9 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1c088a"
            d="M383.9 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#0e0887"
            d="M383.9 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2zM383.9 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M383.9 186.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#120888"
            d="M383.9 173.3l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M383.9 160.5l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#180889"
            d="M383.9 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2e078f"
            d="M383.9 135l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M383.9 122.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#27078d"
            d="M383.9 109.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0e0887"
            d="M383.9 96.5l-3.7-2.1V90l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#0f0887"
            d="M383.9 83.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0e0887"
            d="M387.6 448.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#800ca2"
            d="M387.6 436l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M387.6 423.1l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M387.6 410.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M387.6 384.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M387.6 371.9l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M387.6 359l-3.7-2v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#100887"
            d="M387.6 346.3l-3.7-2.2V340l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#1c088a"
            d="M387.6 333.5l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M387.6 320.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0e0887"
            d="M387.6 307.9l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#100887"
            d="M387.6 295l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4zM387.6 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M387.6 269.4l-3.7-2.1V263l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M387.6 256.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M387.6 243.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#110888"
            d="M387.6 231l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4zM387.6 218.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#100887"
            d="M387.6 205.4l-3.7-2.2V199l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#370692"
            d="M387.6 192.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#120888"
            d="M387.6 179.8l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#150888"
            d="M387.6 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M387.6 154.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1d088a"
            d="M387.6 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#370692"
            d="M387.6 128.5l-3.7-2.1V122l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#350691"
            d="M387.6 115.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0d0887"
            d="M387.6 102.9l-3.7-2.2v-4.2l3.7-2.1 3.7 2v4.3z"
          />
          <path
            fill="#100888"
            d="M387.6 90l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0f0887"
            d="M391.3 493.6l-3.7-2.1v-4.3l3.7-2.1 3.6 2v4.4z"
          />
          <path
            fill="#100887"
            d="M391.3 455.2l-3.7-2.2v-4.2l3.7-2.2 3.6 2.2v4.2z"
          />
          <path
            fill="#0f0887"
            d="M391.3 442.4l-3.7-2.2V436l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M391.3 429.6l-3.7-2.2v-4.3l3.7-2 3.6 2v4.3z"
          />
          <path
            fill="#0d0887"
            d="M391.3 416.7l-3.7-2.1v-4.3l3.7-2.1 3.6 2.1v4.3zM391.3 404l-3.7-2.2v-4.3l3.7-2.1 3.6 2.1v4.3zM391.3 391.1l-3.7-2.1v-4.3l3.7-2.1 3.6 2.1v4.3zM391.3 365.5l-3.7-2.1V359l3.7-2.1 3.6 2v4.4z"
          />
          <path
            fill="#27078d"
            d="M391.3 352.7l-3.7-2.1v-4.3l3.7-2.2 3.6 2.2v4.3z"
          />
          <path
            fill="#0e0887"
            d="M391.3 339.9l-3.7-2.2v-4.2l3.7-2.2 3.6 2.2v4.2z"
          />
          <path
            fill="#3c0694"
            d="M391.3 327l-3.7-2v-4.3l3.7-2.2 3.6 2.2v4.2z"
          />
          <path
            fill="#100887"
            d="M391.3 314.3l-3.7-2.2v-4.3l3.7-2 3.6 2v4.3z"
          />
          <path
            fill="#20078b"
            d="M391.3 301.4l-3.7-2V295l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M391.3 288.6l-3.7-2.1v-4.3l3.7-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M391.3 275.8l-3.7-2.1v-4.3l3.7-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M391.3 263l-3.7-2.1v-4.3l3.7-2.1 3.6 2.1v4.3zM391.3 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM391.3 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M391.3 224.6l-3.7-2.1v-4.3l3.7-2.2 3.6 2.2v4.3z"
          />
          <path
            fill="#110888"
            d="M391.3 211.8l-3.7-2.2v-4.2l3.7-2.2 3.6 2.2v4.2z"
          />
          <path
            fill="#0e0887"
            d="M391.3 199l-3.7-2.1v-4.3l3.7-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#160888"
            d="M391.3 186.2l-3.7-2.2v-4.2l3.7-2.2 3.6 2.2v4.2z"
          />
          <path
            fill="#100887"
            d="M391.3 173.3l-3.7-2v-4.4l3.7-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M391.3 160.5l-3.7-2.1v-4.3l3.7-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M391.3 147.7l-3.7-2.1v-4.3l3.7-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M391.3 135l-3.7-2.2v-4.3l3.7-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#130888"
            d="M391.3 122.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M391.3 109.3l-3.7-2.1v-4.3l3.7-2.1 3.6 2v4.4zM391.3 96.5l-3.7-2.1V90l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#150888"
            d="M391.3 83.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M395 474.4l-3.7-2.1V468l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M395 461.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M395 436l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#170889"
            d="M395 423.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M395 410.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M395 397.5l-3.7-2.1V391l3.7-2.1 3.7 2.1v4.3zM395 384.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM395 371.9l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM395 359l-3.7-2v-4.3l3.6-2.1 3.8 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M395 346.3l-3.7-2.2V340l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#1d088a"
            d="M395 333.5l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#100887"
            d="M395 320.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#1d088a"
            d="M395 307.9l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#110888"
            d="M395 295l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2d078f"
            d="M395 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M395 269.4l-3.7-2.1V263l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M395 256.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M395 243.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0d0887"
            d="M395 231l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#190889"
            d="M395 218.2l-3.7-2.2v-4.3l3.6-2.1 3.8 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M395 205.4l-3.7-2.2V199l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2d078e"
            d="M395 192.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M395 179.8l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0f0887"
            d="M395 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3zM395 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M395 128.5l-3.7-2.1V122l3.7-2.1 3.7 2.1v4.3zM395 115.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#1a0889"
            d="M395 102.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#190889"
            d="M395 90l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0e0887"
            d="M398.6 493.6l-3.7-2.1v-4.3l3.8-2.1 3.6 2v4.4z"
          />
          <path
            fill="#0d0887"
            d="M398.6 468l-3.7-2.1v-4.3l3.8-2.1 3.6 2v4.4zM398.6 455.2L395 453v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1d078a"
            d="M398.6 442.4l-3.7-2.2V436l3.8-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M398.6 429.6l-3.7-2.2v-4.3l3.8-2 3.6 2v4.3z"
          />
          <path
            fill="#170889"
            d="M398.6 416.7l-3.6-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M398.6 404l-3.7-2.2v-4.3l3.8-2.1 3.6 2.1v4.3zM398.6 391.1L395 389v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M398.6 378.3l-3.7-2.1v-4.3l3.8-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M398.6 365.5l-3.7-2.1V359l3.8-2.1 3.6 2v4.4z"
          />
          <path
            fill="#0e0887"
            d="M398.6 352.7l-3.7-2.1v-4.3l3.8-2.2 3.6 2.2v4.3z"
          />
          <path
            fill="#0f0887"
            d="M398.6 339.9l-3.7-2.2v-4.2l3.8-2.2 3.6 2.2v4.2z"
          />
          <path
            fill="#390693"
            d="M398.6 327l-3.7-2v-4.3l3.8-2.2 3.6 2.2v4.2z"
          />
          <path
            fill="#0f0887"
            d="M398.6 314.3L395 312v-4.3l3.8-2 3.6 2v4.3z"
          />
          <path
            fill="#0e0887"
            d="M398.6 301.4l-3.7-2V295l3.8-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M398.6 288.6l-3.6-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2c078e"
            d="M398.6 275.8l-3.7-2.1v-4.3l3.8-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M398.6 263l-3.7-2.1v-4.3l3.8-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M398.6 250.2l-3.7-2.1v-4.3l3.8-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M398.6 237.4l-3.7-2.1V231l3.8-2.1 3.6 2.1v4.3zM398.6 224.6l-3.7-2.1v-4.3l3.8-2.2 3.6 2.2v4.3z"
          />
          <path
            fill="#0d0887"
            d="M398.6 211.8l-3.7-2.2v-4.2l3.8-2.2 3.6 2.2v4.2zM398.6 199l-3.7-2.1v-4.3l3.8-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M398.6 186.2L395 184v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M398.6 173.3l-3.7-2v-4.4l3.8-2.1 3.6 2.1v4.3zM398.6 160.5l-3.6-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#130888"
            d="M398.6 147.7l-3.7-2.1v-4.3l3.8-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M398.6 135l-3.7-2.2v-4.3l3.8-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#350691"
            d="M398.6 122.1L395 120v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#26078c"
            d="M398.6 109.3l-3.7-2.1v-4.3l3.8-2.1 3.6 2v4.4z"
          />
          <path
            fill="#1a0889"
            d="M398.6 96.5l-3.6-2.2v-4.2l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#180889"
            d="M398.6 83.7l-3.6-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#100887"
            d="M402.4 500l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#320690"
            d="M402.4 461.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#130888"
            d="M402.4 448.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0f0887"
            d="M402.4 436l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1d088a"
            d="M402.4 423.1l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M402.4 410.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M402.4 397.5l-3.7-2.1V391l3.7-2.1 3.7 2.1v4.3zM402.4 384.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1e078a"
            d="M402.4 371.9l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M402.4 359l-3.7-2v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0e0887"
            d="M402.4 346.3l-3.7-2.2V340l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#110888"
            d="M402.4 333.5l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#2e078f"
            d="M402.4 320.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#160889"
            d="M402.4 307.9l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0f0887"
            d="M402.4 295l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#360692"
            d="M402.4 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M402.4 269.4l-3.7-2.1V263l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#160889"
            d="M402.4 256.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M402.4 243.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#130888"
            d="M402.4 231l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#190889"
            d="M402.4 218.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M402.4 205.4l-3.7-2.2V199l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#180889"
            d="M402.4 192.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#1b088a"
            d="M402.4 179.8l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#1c088a"
            d="M402.4 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1b0889"
            d="M402.4 154.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M402.4 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1b088a"
            d="M402.4 128.5l-3.7-2.1V122l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2d078f"
            d="M402.4 115.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#2c078e"
            d="M402.4 102.9l-3.7-2.2v-4.2l3.7-2.1 3.7 2v4.3z"
          />
          <path
            fill="#130888"
            d="M402.4 90l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#160889"
            d="M406 493.6l-3.6-2.1v-4.3l3.7-2.1 3.6 2v4.4z"
          />
          <path
            fill="#0e0887"
            d="M406 468l-3.6-2.1v-4.3l3.7-2.1 3.6 2v4.4zM406 455.2l-3.6-2.2v-4.2l3.7-2.2 3.6 2.2v4.2zM406 442.4l-3.6-2.2V436l3.7-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M406 416.7l-3.6-2.1v-4.3l3.7-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M406 404l-3.6-2.2v-4.3l3.7-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M406 391.1l-3.6-2.1v-4.3l3.7-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#180889"
            d="M406 378.3l-3.6-2.1v-4.3l3.7-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M406 365.5l-3.6-2.1V359l3.7-2.1 3.6 2v4.4z"
          />
          <path
            fill="#0e0887"
            d="M406 352.7l-3.6-2.1v-4.3l3.7-2.2 3.6 2.2v4.3z"
          />
          <path
            fill="#100887"
            d="M406 339.9l-3.6-2.2v-4.2l3.7-2.2 3.6 2.2v4.2z"
          />
          <path
            fill="#2e078f"
            d="M406 327l-3.6-2v-4.3l3.7-2.2 3.6 2.2v4.2z"
          />
          <path
            fill="#140888"
            d="M406 314.3l-3.6-2.2v-4.3l3.7-2 3.6 2v4.3z"
          />
          <path
            fill="#170889"
            d="M406 301.4l-3.6-2V295l3.7-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M406 288.6l-3.6-2.1v-4.3l3.7-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M406 275.8l-3.6-2.1v-4.3l3.7-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#160889"
            d="M406 263l-3.6-2.1v-4.3l3.7-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M406 250.2l-3.6-2.1v-4.3l3.7-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M406 237.4l-3.6-2.1V231l3.7-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M406 224.6l-3.6-2.1v-4.3l3.7-2.2 3.6 2.2v4.3z"
          />
          <path
            fill="#150888"
            d="M406 211.8l-3.6-2.2v-4.2l3.7-2.2 3.6 2.2v4.2z"
          />
          <path
            fill="#110888"
            d="M406 199l-3.6-2.1v-4.3l3.7-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#130888"
            d="M406 186.2l-3.6-2.2v-4.2l3.7-2.2 3.6 2.2v4.2z"
          />
          <path
            fill="#22078b"
            d="M406 173.3l-3.6-2v-4.4l3.7-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#150888"
            d="M406 160.5l-3.6-2.1v-4.3l3.7-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#190889"
            d="M406 147.7l-3.6-2.1v-4.3l3.7-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#160888"
            d="M406 135l-3.6-2.2v-4.3l3.7-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#330690"
            d="M406 122.1l-3.6-2.1v-4.3l3.7-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M406 109.3l-3.6-2.1v-4.3l3.7-2.1 3.6 2v4.4z"
          />
          <path
            fill="#190889"
            d="M406 96.5l-3.6-2.1V90l3.7-2.2 3.6 2.2v4.3z"
          />
          <path
            fill="#140888"
            d="M406 83.7l-3.6-2.2v-4.2L406 75l3.6 2.2v4.2z"
          />
          <path
            fill="#0e0887"
            d="M409.8 448.8l-3.8-2.2v-4.2l3.8-2.2 3.6 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M409.8 436l-3.8-2.1v-4.3l3.8-2.1 3.6 2.1v4.3zM409.8 423.1l-3.8-2v-4.4l3.8-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M409.8 410.3l-3.8-2.1v-4.3l3.8-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M409.8 397.5l-3.8-2.1V391l3.8-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M409.8 384.7l-3.8-2.1v-4.3l3.8-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#450597"
            d="M409.8 371.9l-3.8-2.1v-4.3l3.8-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#1e078a"
            d="M409.8 359l-3.8-2v-4.3l3.8-2.1 3.6 2v4.4z"
          />
          <path
            fill="#27078d"
            d="M409.8 346.3L406 344V340l3.8-2.2 3.6 2.2v4.2z"
          />
          <path
            fill="#0f0887"
            d="M409.8 333.5l-3.8-2.2v-4.2l3.8-2.2 3.6 2.2v4.2z"
          />
          <path
            fill="#100887"
            d="M409.8 320.7l-3.8-2.2v-4.2l3.8-2.2 3.6 2.2v4.2z"
          />
          <path
            fill="#170889"
            d="M409.8 307.9l-3.8-2.2v-4.3l3.8-2 3.6 2v4.3z"
          />
          <path
            fill="#100887"
            d="M409.8 295l-3.8-2.1v-4.3l3.8-2.1 3.6 2v4.4z"
          />
          <path
            fill="#110888"
            d="M409.8 282.2l-3.8-2.1v-4.3l3.8-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M409.8 269.4l-3.8-2.1V263l3.8-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#190889"
            d="M409.8 256.6l-3.8-2.1v-4.3l3.8-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M409.8 243.8l-3.8-2.1v-4.3l3.8-2.1 3.6 2v4.4z"
          />
          <path
            fill="#1c088a"
            d="M409.8 231l-3.8-2.1v-4.3l3.8-2.1 3.6 2v4.4z"
          />
          <path
            fill="#160889"
            d="M409.8 218.2L406 216v-4.2l3.8-2.2 3.6 2.2v4.2z"
          />
          <path
            fill="#110888"
            d="M409.8 205.4l-3.8-2.2V199l3.8-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#1a0889"
            d="M409.8 192.6l-3.8-2.2v-4.2l3.8-2.2 3.6 2.2v4.2z"
          />
          <path
            fill="#27078d"
            d="M409.8 179.8l-3.8-2.2v-4.3l3.8-2 3.6 2v4.3z"
          />
          <path
            fill="#160888"
            d="M409.8 167l-3.8-2.2v-4.3l3.8-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#170889"
            d="M409.8 154.1L406 152v-4.3l3.8-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#130888"
            d="M409.8 141.3l-3.8-2.1v-4.3l3.8-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#150888"
            d="M409.8 128.5l-3.8-2.1V122l3.8-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#190889"
            d="M409.8 115.7l-3.8-2.1v-4.3l3.8-2.1 3.6 2v4.4z"
          />
          <path
            fill="#22078b"
            d="M409.8 102.9l-3.8-2.2v-4.2l3.8-2.1 3.6 2v4.3z"
          />
          <path
            fill="#180889"
            d="M409.8 90l-3.8-2v-4.3l3.8-2.2 3.6 2.2v4.2z"
          />
          <path
            fill="#0f0887"
            d="M413.4 455.2l-3.6-2.2v-4.3l3.6-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M413.4 442.4l-3.6-2.2V436l3.6-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M413.4 429.6l-3.6-2.2v-4.3l3.6-2 3.7 2v4.3z"
          />
          <path
            fill="#0e0887"
            d="M413.4 416.7l-3.6-2.1v-4.3l3.6-2.1 3.7 2.1v4.3zM413.4 404l-3.6-2.2v-4.3l3.6-2.1 3.7 2.1v4.3zM413.4 391.1l-3.6-2.1v-4.3l3.6-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2b078e"
            d="M413.4 378.3l-3.6-2.1v-4.3l3.6-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2a078e"
            d="M413.4 365.5l-3.6-2.1V359l3.6-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0f0887"
            d="M413.4 352.7l-3.6-2.1v-4.3l3.6-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#130888"
            d="M413.4 339.9l-3.6-2.2v-4.2l3.6-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#100887"
            d="M413.4 327l-3.6-2v-4.3l3.6-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#120888"
            d="M413.4 314.3l-3.6-2.2v-4.3l3.6-2 3.7 2v4.3z"
          />
          <path
            fill="#110888"
            d="M413.4 301.4l-3.6-2V295l3.6-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#190889"
            d="M413.4 275.8l-3.6-2.1v-4.3l3.6-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M413.4 263l-3.6-2.1v-4.3l3.6-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M413.4 250.2l-3.6-2.1v-4.3l3.6-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M413.4 237.4l-3.6-2.1V231l3.6-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#370692"
            d="M413.4 224.6l-3.6-2.1v-4.3l3.6-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#0e0887"
            d="M413.4 211.8l-3.6-2.2v-4.2l3.6-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#26078c"
            d="M413.4 199l-3.6-2.1v-4.3l3.6-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#150888"
            d="M413.4 186.2l-3.6-2.2v-4.3l3.6-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#170889"
            d="M413.4 173.3l-3.6-2v-4.4l3.6-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#160889"
            d="M413.4 160.5l-3.6-2.1v-4.3l3.6-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1a0889"
            d="M413.4 147.7l-3.6-2.1v-4.3l3.6-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#170889"
            d="M413.4 135l-3.6-2.2v-4.3l3.6-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M413.4 122.1l-3.6-2.1v-4.3l3.6-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#160888"
            d="M413.4 109.3l-3.6-2.1v-4.3l3.6-2.1 3.7 2v4.4z"
          />
          <path
            fill="#190889"
            d="M413.4 96.5l-3.6-2.1V90l3.6-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#120888"
            d="M413.4 83.7l-3.6-2.2v-4.2l3.6-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0e0887"
            d="M417.1 448.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2zM417.1 436l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M417.1 423.1l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3zM417.1 410.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M417.1 397.5l-3.7-2.1V391l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M417.1 384.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M417.1 371.9l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M417.1 359l-3.7-2v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#190889"
            d="M417.1 346.3l-3.7-2.2V340l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#120888"
            d="M417.1 333.5l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0f0887"
            d="M417.1 320.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#130888"
            d="M417.1 307.9l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#100887"
            d="M417.1 295l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0f0887"
            d="M417.1 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#21078b"
            d="M417.1 269.4l-3.7-2.1V263l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#26078d"
            d="M417.1 256.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M417.1 243.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#24078c"
            d="M417.1 231l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#360692"
            d="M417.1 218.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#26078c"
            d="M417.1 205.4l-3.7-2.2V199l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M417.1 192.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#120888"
            d="M417.1 179.8l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3zM417.1 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1d078a"
            d="M417.1 154.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1b088a"
            d="M417.1 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M417.1 128.5l-3.7-2.1V122l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M417.1 115.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#1b0889"
            d="M417.1 102.9l-3.7-2.2v-4.2l3.7-2.1 3.7 2v4.3z"
          />
          <path
            fill="#140888"
            d="M417.1 90l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#110888"
            d="M420.8 442.4l-3.7-2.2V436l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M420.8 429.6l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0f0887"
            d="M420.8 416.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M420.8 404l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M420.8 391.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#3c0694"
            d="M420.8 378.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M420.8 365.5l-3.7-2.1V359l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0f0887"
            d="M420.8 352.7l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3zM420.8 339.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#190889"
            d="M420.8 327l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#26078c"
            d="M420.8 314.3l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#120888"
            d="M420.8 301.4l-3.7-2V295l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M420.8 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#300690"
            d="M420.8 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M420.8 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M420.8 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M420.8 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#29078d"
            d="M420.8 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#140888"
            d="M420.8 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#100887"
            d="M420.8 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#130888"
            d="M420.8 186.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#120888"
            d="M420.8 173.3l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1a0889"
            d="M420.8 160.5l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1c088a"
            d="M420.8 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#150888"
            d="M420.8 135l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#170889"
            d="M420.8 122.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#190889"
            d="M420.8 109.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0e0887"
            d="M420.8 96.5l-3.7-2.1V90l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#120888"
            d="M420.8 83.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0e0887"
            d="M424.5 448.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0f0887"
            d="M424.5 436l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M424.5 423.1l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M424.5 410.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M424.5 397.5l-3.7-2.1V391l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M424.5 384.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M424.5 371.9l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2a078e"
            d="M424.5 359l-3.7-2v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#110888"
            d="M424.5 346.3l-3.7-2.2V340l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0e0887"
            d="M424.5 333.5l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#120888"
            d="M424.5 320.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#470598"
            d="M424.5 307.9l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#110888"
            d="M424.5 295l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0f0887"
            d="M424.5 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M424.5 269.4l-3.7-2.1V263l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1a0889"
            d="M424.5 256.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#22078b"
            d="M424.5 243.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#1d088a"
            d="M424.5 231l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#100888"
            d="M424.5 218.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0e0887"
            d="M424.5 205.4l-3.7-2.2V199l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#150888"
            d="M424.5 192.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#170889"
            d="M424.5 179.8l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#110888"
            d="M424.5 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1d088a"
            d="M424.5 154.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1a0889"
            d="M424.5 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM424.5 128.5l-3.7-2.1V122l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#170889"
            d="M424.5 115.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#130888"
            d="M424.5 102.9l-3.7-2.2v-4.2l3.7-2.1 3.7 2v4.3z"
          />
          <path
            fill="#0d0887"
            d="M424.5 90l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0f0887"
            d="M428.2 442.4l-3.7-2.2V436l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M428.2 429.6l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0d0887"
            d="M428.2 416.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM428.2 404l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M428.2 391.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M428.2 365.5l-3.7-2.1V359l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#130888"
            d="M428.2 352.7l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#0f0887"
            d="M428.2 339.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2zM428.2 327l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#120888"
            d="M428.2 314.3l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#100887"
            d="M428.2 301.4l-3.7-2V295l3.7-2.1 3.7 2.1v4.3zM428.2 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M428.2 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#25078c"
            d="M428.2 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#160888"
            d="M428.2 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M428.2 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M428.2 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#0f0887"
            d="M428.2 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#1e078a"
            d="M428.2 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M428.2 186.2l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#150888"
            d="M428.2 173.3l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1e078a"
            d="M428.2 160.5l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM428.2 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1a0889"
            d="M428.2 135l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#170889"
            d="M428.2 122.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M428.2 109.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0f0887"
            d="M428.2 96.5l-3.7-2.1V90l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#1c088a"
            d="M428.2 83.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#100887"
            d="M432 436l-3.8-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#370692"
            d="M432 423.1l-3.8-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M432 410.3l-3.8-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#3e0594"
            d="M432 397.5l-3.8-2.1V391l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M432 384.7l-3.8-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M432 371.9l-3.8-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M432 359l-3.8-2v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#110888"
            d="M432 346.3l-3.8-2.2V340l3.7-2.2 3.7 2.2v4.2zM432 333.5l-3.8-2.2v-4.2l3.7-2.2 3.7 2.2v4.2zM432 320.7l-3.8-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#190889"
            d="M432 307.9l-3.8-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0e0887"
            d="M432 295l-3.8-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#130888"
            d="M432 282.2l-3.8-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M432 269.4l-3.8-2.1V263l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M432 256.6l-3.8-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM432 243.8l-3.8-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#1d088a"
            d="M432 231l-3.8-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#100887"
            d="M432 218.2l-3.8-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0e0887"
            d="M432 205.4l-3.8-2.2V199l3.7-2.1 3.7 2.1v4.3zM432 192.6l-3.8-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#140888"
            d="M432 179.8l-3.8-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#1a0889"
            d="M432 167l-3.8-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#130888"
            d="M432 154.1l-3.8-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1d088a"
            d="M432 141.3l-3.8-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#180889"
            d="M432 128.5l-3.8-2.1V122l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M432 115.7l-3.8-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0f0887"
            d="M432 102.9l-3.8-2.2v-4.2l3.7-2.1 3.7 2v4.3z"
          />
          <path
            fill="#0d0887"
            d="M432 90l-3.8-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0e0887"
            d="M435.6 442.4l-3.7-2.2V436l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#420596"
            d="M435.6 429.6l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#300690"
            d="M435.6 416.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M435.6 404l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M435.6 391.1L432 389v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M435.6 378.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M435.6 365.5l-3.7-2.1V359l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#100887"
            d="M435.6 352.7l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#0f0887"
            d="M435.6 339.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#130888"
            d="M435.6 327l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#170889"
            d="M435.6 314.3L432 312v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#1c088a"
            d="M435.6 301.4l-3.7-2V295l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#190889"
            d="M435.6 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M435.6 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#5803a0"
            d="M435.6 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#25078c"
            d="M435.6 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M435.6 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M435.6 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#110888"
            d="M435.6 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0e0887"
            d="M435.6 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM435.6 186.2L432 184v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#180889"
            d="M435.6 173.3l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#170889"
            d="M435.6 160.5l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#22078b"
            d="M435.6 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#23078c"
            d="M435.6 135l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#150888"
            d="M435.6 122.1L432 120v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M435.6 109.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0f0887"
            d="M435.6 96.5l-3.7-2.1V90l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#21078b"
            d="M435.6 83.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0f0887"
            d="M439.3 436l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#3c0694"
            d="M439.3 423.1l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M439.3 410.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M439.3 397.5l-3.7-2.1V391l3.7-2.1 3.7 2.1v4.3zM439.3 384.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M439.3 371.9l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M439.3 359l-3.7-2v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#100887"
            d="M439.3 346.3l-3.7-2.2V340l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#130888"
            d="M439.3 333.5l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#26078c"
            d="M439.3 320.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#3f0595"
            d="M439.3 307.9l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#25078c"
            d="M439.3 295l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#130888"
            d="M439.3 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M439.3 269.4l-3.7-2.1V263l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#380692"
            d="M439.3 256.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M439.3 243.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#100887"
            d="M439.3 231l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0d0887"
            d="M439.3 218.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#1d088a"
            d="M439.3 205.4l-3.7-2.2V199l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M439.3 192.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#120888"
            d="M439.3 179.8l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#27078d"
            d="M439.3 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1c088a"
            d="M439.3 154.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#29078d"
            d="M439.3 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#170889"
            d="M439.3 128.5l-3.7-2.1V122l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M439.3 115.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4zM439.3 102.9l-3.7-2.2v-4.2l3.7-2.1 3.7 2v4.3z"
          />
          <path
            fill="#180889"
            d="M439.3 90l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#1c088a"
            d="M443 429.6l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#130888"
            d="M443 416.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M443 404l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M443 391.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M443 378.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM443 365.5l-3.7-2.1V359l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#28078d"
            d="M443 352.7l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#20078b"
            d="M443 339.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#140888"
            d="M443 327l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#24078c"
            d="M443 314.3l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#25078c"
            d="M443 301.4l-3.7-2V295l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#130888"
            d="M443 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M443 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#400595"
            d="M443 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M443 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM443 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M443 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.1v4.3z"
          />
          <path
            fill="#27078d"
            d="M443 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#20078b"
            d="M443 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M443 186.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#170889"
            d="M443 173.3l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1d088a"
            d="M443 160.5l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#27078d"
            d="M443 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#130888"
            d="M443 135l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#150888"
            d="M443 122.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#190889"
            d="M443 109.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0f0887"
            d="M443 96.5l-3.7-2.1V90l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#110888"
            d="M443 83.7l-3.7-2.2v-4.2L443 75l3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M446.7 436l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#420596"
            d="M446.7 423.1L443 421v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M446.7 410.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M446.7 397.5l-3.7-2.1V391l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M446.7 384.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M446.7 371.9l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M446.7 359l-3.7-2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1b088a"
            d="M446.7 346.3L443 344V340l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#180889"
            d="M446.7 333.5l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#120888"
            d="M446.7 320.7l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#28078d"
            d="M446.7 307.9l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#130888"
            d="M446.7 295l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M446.7 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M446.7 269.4l-3.7-2.1V263l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#25078c"
            d="M446.7 256.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M446.7 243.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#110888"
            d="M446.7 231l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#140888"
            d="M446.7 218.2L443 216v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#20078b"
            d="M446.7 205.4l-3.7-2.2V199l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#180889"
            d="M446.7 192.6l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#100887"
            d="M446.7 179.8l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#170889"
            d="M446.7 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#5f02a3"
            d="M446.7 154.1L443 152v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1c088a"
            d="M446.7 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#180889"
            d="M446.7 128.5l-3.7-2.1V122l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M446.7 115.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0e0887"
            d="M446.7 102.9l-3.7-2.2v-4.2l3.7-2.1 3.7 2v4.3z"
          />
          <path
            fill="#100887"
            d="M446.7 90l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0e0887"
            d="M450.4 429.6l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#120888"
            d="M450.4 416.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M450.4 404l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3zM450.4 378.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M450.4 365.5l-3.7-2.1V359l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#190889"
            d="M450.4 352.7l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#1f078b"
            d="M450.4 339.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0f0887"
            d="M450.4 327l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#310690"
            d="M450.4 314.3l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#170889"
            d="M450.4 301.4l-3.7-2V295l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M450.4 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#150888"
            d="M450.4 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M450.4 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M450.4 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100888"
            d="M450.4 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M450.4 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#390693"
            d="M450.4 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0f0887"
            d="M450.4 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#150888"
            d="M450.4 186.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#120888"
            d="M450.4 173.3l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2e078f"
            d="M450.4 160.5l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#480499"
            d="M450.4 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#22078b"
            d="M450.4 135l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M450.4 122.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#170889"
            d="M450.4 109.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#110888"
            d="M450.4 96.5l-3.7-2.1V90l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#1e078a"
            d="M454.1 423.1l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M454.1 410.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M454.1 397.5l-3.7-2.1V391l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M454.1 384.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#190889"
            d="M454.1 371.9l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#28078d"
            d="M454.1 359l-3.7-2v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#190889"
            d="M454.1 346.3l-3.7-2.2V340l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#170889"
            d="M454.1 333.5l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#130888"
            d="M454.1 320.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#30078f"
            d="M454.1 307.9l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0f0887"
            d="M454.1 295l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4zM454.1 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M454.1 269.4l-3.7-2.1V263l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M454.1 256.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#130888"
            d="M454.1 243.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0f0887"
            d="M454.1 231l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#150888"
            d="M454.1 218.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0f0887"
            d="M454.1 205.4l-3.7-2.2V199l3.7-2.1 3.7 2.1v4.3zM454.1 192.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#160889"
            d="M454.1 179.8l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#27078d"
            d="M454.1 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#5803a0"
            d="M454.1 154.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#340691"
            d="M454.1 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#190889"
            d="M454.1 128.5l-3.7-2.1V122l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#170889"
            d="M454.1 115.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0e0887"
            d="M454.1 102.9l-3.7-2.2v-4.2l3.7-2.1 3.7 2v4.3z"
          />
          <path
            fill="#0f0887"
            d="M454.1 90l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#100888"
            d="M457.8 416.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M457.8 404l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M457.8 391.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M457.8 378.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#150888"
            d="M457.8 365.5l-3.7-2.1V359l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#120888"
            d="M457.8 352.7l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#150888"
            d="M457.8 339.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#110888"
            d="M457.8 327l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#130888"
            d="M457.8 314.3l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#23078c"
            d="M457.8 301.4l-3.7-2V295l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#150888"
            d="M457.8 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M457.8 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M457.8 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#130888"
            d="M457.8 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M457.8 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M457.8 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#29078d"
            d="M457.8 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#190889"
            d="M457.8 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#130888"
            d="M457.8 186.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#24078c"
            d="M457.8 173.3l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2e078f"
            d="M457.8 160.5l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1d088a"
            d="M457.8 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M457.8 135l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2b078e"
            d="M457.8 122.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M457.8 109.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0e0887"
            d="M457.8 96.5l-3.7-2.1V90l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#0d0887"
            d="M461.5 423.1l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#180889"
            d="M461.5 410.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M461.5 397.5l-3.7-2.1V391l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M461.5 384.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M461.5 371.9l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M461.5 359l-3.7-2v-4.3l3.7-2.1 3.7 2v4.4zM461.5 346.3l-3.7-2.2V340l3.7-2.2 3.7 2.2v4.2zM461.5 333.5l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#110888"
            d="M461.5 320.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#160889"
            d="M461.5 307.9l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#22078b"
            d="M461.5 295l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#110888"
            d="M461.5 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M461.5 269.4l-3.7-2.1V263l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#160889"
            d="M461.5 256.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M461.5 243.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#120888"
            d="M461.5 231l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#160888"
            d="M461.5 218.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#190889"
            d="M461.5 205.4l-3.7-2.2V199l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#29078d"
            d="M461.5 192.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#120888"
            d="M461.5 179.8l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#30068f"
            d="M461.5 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#340691"
            d="M461.5 154.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M461.5 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#26078c"
            d="M461.5 128.5l-3.7-2.1V122l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#29078d"
            d="M461.5 115.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#1d088a"
            d="M461.5 102.9l-3.7-2.2v-4.2l3.7-2.1 3.7 2v4.3z"
          />
          <path
            fill="#170889"
            d="M465.2 416.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M465.2 404l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M465.2 391.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M465.2 378.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M465.2 365.5l-3.7-2.1V359l3.7-2.1 3.7 2v4.4zM465.2 352.7l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#100887"
            d="M465.2 339.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#190889"
            d="M465.2 327l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2zM465.2 314.3l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0f0887"
            d="M465.2 301.4l-3.7-2V295l3.7-2.1 3.7 2.1v4.3zM465.2 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M465.2 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM465.2 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M465.2 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M465.2 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M465.2 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#0d0887"
            d="M465.2 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#170889"
            d="M465.2 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M465.2 186.2l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#28078d"
            d="M465.2 173.3l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#190889"
            d="M465.2 160.5l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#130888"
            d="M465.2 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M465.2 135l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M465.2 122.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#190889"
            d="M465.2 109.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#2c078e"
            d="M465.2 96.5l-3.7-2.1V90l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#100887"
            d="M469 423.1l-3.8-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M469 410.3l-3.8-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M469 397.5l-3.8-2.1V391l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M469 384.7l-3.8-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M469 371.9l-3.8-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM469 359l-3.8-2v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#110888"
            d="M469 346.3l-3.8-2.2V340l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#25078c"
            d="M469 333.5l-3.8-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#2b078e"
            d="M469 320.7l-3.8-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#420596"
            d="M469 307.9l-3.8-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0e0887"
            d="M469 295l-3.8-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#100887"
            d="M469 282.2l-3.8-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M469 269.4l-3.8-2.1V263l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#150888"
            d="M469 256.6l-3.8-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M469 243.8l-3.8-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0d0887"
            d="M469 231l-3.8-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#110888"
            d="M469 218.2l-3.8-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#140888"
            d="M469 205.4l-3.8-2.2V199l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#170889"
            d="M469 192.6l-3.8-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#150888"
            d="M469 179.8l-3.8-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#2c078e"
            d="M469 167l-3.8-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#180889"
            d="M469 154.1l-3.8-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#21078b"
            d="M469 141.3l-3.8-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#28078d"
            d="M469 128.5l-3.8-2.1V122l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M469 115.7l-3.8-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#130888"
            d="M469 102.9l-3.8-2.2v-4.2l3.7-2.1 3.7 2v4.3z"
          />
          <path
            fill="#2f078f"
            d="M472.6 416.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M472.6 404l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M472.6 391.1L469 389v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M472.6 378.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#150888"
            d="M472.6 365.5l-3.7-2.1V359l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#110888"
            d="M472.6 352.7l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#22078b"
            d="M472.6 339.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#21078b"
            d="M472.6 327l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#2b078e"
            d="M472.6 314.3L469 312v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0f0887"
            d="M472.6 301.4l-3.7-2V295l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M472.6 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M472.6 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1d088a"
            d="M472.6 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M472.6 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM472.6 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M472.6 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#150888"
            d="M472.6 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#1c088a"
            d="M472.6 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1a0889"
            d="M472.6 186.2L469 184v-4.2l3.7-2.2 3.7 2.2v4.2zM472.6 173.3l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#3a0693"
            d="M472.6 160.5l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#26078c"
            d="M472.6 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M472.6 135l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M472.6 122.1L469 120v-4.3l3.7-2.1 3.7 2.1v4.3zM472.6 109.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0d0887"
            d="M472.6 96.5l-3.7-2.1V90l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#120888"
            d="M476.3 423.1l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1a0889"
            d="M476.3 410.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M476.3 397.5l-3.7-2.1V391l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M476.3 384.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M476.3 371.9l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#150888"
            d="M476.3 359l-3.7-2v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#100887"
            d="M476.3 346.3l-3.7-2.2V340l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#26078c"
            d="M476.3 333.5l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#160888"
            d="M476.3 320.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#3e0594"
            d="M476.3 307.9l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0e0887"
            d="M476.3 295l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#100887"
            d="M476.3 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1f078b"
            d="M476.3 269.4l-3.7-2.1V263l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M476.3 256.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M476.3 243.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#110888"
            d="M476.3 231l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0f0887"
            d="M476.3 218.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#26078d"
            d="M476.3 205.4l-3.7-2.2V199l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M476.3 192.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#1b088a"
            d="M476.3 179.8l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#170889"
            d="M476.3 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M476.3 154.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM476.3 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M476.3 128.5l-3.7-2.1V122l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#150888"
            d="M476.3 115.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#110888"
            d="M476.3 102.9l-3.7-2.2v-4.2l3.7-2.1 3.7 2v4.3z"
          />
          <path
            fill="#0e0887"
            d="M476.3 90l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#1e078a"
            d="M480 416.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M480 404l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M480 391.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M480 378.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M480 365.5l-3.7-2.1V359l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#150888"
            d="M480 352.7l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#160888"
            d="M480 339.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0e0887"
            d="M480 327l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#180889"
            d="M480 314.3l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0e0887"
            d="M480 301.4l-3.7-2V295l3.7-2.1 3.7 2.1v4.3zM480 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#130888"
            d="M480 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M480 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM480 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#130888"
            d="M480 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#20078b"
            d="M480 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.1v4.3z"
          />
          <path
            fill="#25078c"
            d="M480 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#140888"
            d="M480 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#410596"
            d="M480 186.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0f0887"
            d="M480 173.3l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M480 160.5l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M480 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M480 135l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#24078c"
            d="M480 122.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M480 96.5l-3.7-2.1V90l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#0e0887"
            d="M483.7 423.1L480 421v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M483.7 410.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M483.7 397.5l-3.7-2.1V391l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#130888"
            d="M483.7 384.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#180889"
            d="M483.7 371.9l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#130888"
            d="M483.7 359l-3.7-2v-4.3l3.7-2.1 3.7 2.1v4.3zM483.7 346.3L480 344V340l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#180889"
            d="M483.7 333.5l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#29078d"
            d="M483.7 320.7l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#120888"
            d="M483.7 307.9l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#110888"
            d="M483.7 295l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M483.7 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M483.7 269.4l-3.7-2.1V263l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M483.7 256.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M483.7 243.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0e0887"
            d="M483.7 231l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#1b088a"
            d="M483.7 218.2L480 216v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#150888"
            d="M483.7 205.4l-3.7-2.2V199l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#190889"
            d="M483.7 192.6l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#28078d"
            d="M483.7 179.8l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#340691"
            d="M483.7 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M483.7 154.1L480 152v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M483.7 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM483.7 128.5l-3.7-2.1V122l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M483.7 115.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4zM483.7 90l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2zM487.4 429.6l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#190889"
            d="M487.4 416.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M487.4 404l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#150888"
            d="M487.4 391.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1a0889"
            d="M487.4 378.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M487.4 365.5l-3.7-2.1V359l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0e0887"
            d="M487.4 352.7l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#110888"
            d="M487.4 339.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#120888"
            d="M487.4 327l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2zM487.4 314.3l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#150888"
            d="M487.4 301.4l-3.7-2V295l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2d078f"
            d="M487.4 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1f078a"
            d="M487.4 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#27078d"
            d="M487.4 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M487.4 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM487.4 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M487.4 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#190889"
            d="M487.4 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#1a0889"
            d="M487.4 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM487.4 186.2l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#23078c"
            d="M487.4 173.3l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M487.4 160.5l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M487.4 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M487.4 135l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M487.4 122.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M487.4 96.5l-3.7-2.1V90l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#130888"
            d="M491.1 423.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#150888"
            d="M491.1 410.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M491.1 397.5l-3.7-2.1V391l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M491.1 384.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#160888"
            d="M491.1 371.9l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M491.1 359l-3.7-2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2c078e"
            d="M491.1 346.3l-3.7-2.2V340l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#150888"
            d="M491.1 333.5l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2zM491.1 320.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#1f078b"
            d="M491.1 307.9l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#150888"
            d="M491.1 295l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#26078c"
            d="M491.1 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M491.1 269.4l-3.7-2.1V263l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M491.1 256.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1e078a"
            d="M491.1 243.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#100887"
            d="M491.1 231l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4zM491.1 218.2l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2e078f"
            d="M491.1 205.4l-3.7-2.2V199l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#20078b"
            d="M491.1 192.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#180889"
            d="M491.1 179.8l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0f0887"
            d="M491.1 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3zM491.1 154.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M491.1 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#380692"
            d="M491.1 128.5l-3.7-2.1V122l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M491.1 115.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0f0887"
            d="M494.8 416.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#170889"
            d="M494.8 404l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M494.8 391.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M494.8 378.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M494.8 365.5l-3.7-2.1V359l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#100887"
            d="M494.8 352.7l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#120888"
            d="M494.8 339.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#140888"
            d="M494.8 327l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#170889"
            d="M494.8 314.3l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#180889"
            d="M494.8 301.4l-3.7-2V295l3.7-2.1 3.7 2.1v4.3zM494.8 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#190889"
            d="M494.8 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1d088a"
            d="M494.8 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M494.8 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM494.8 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3zM494.8 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#22078b"
            d="M494.8 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#160889"
            d="M494.8 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1c088a"
            d="M494.8 186.2l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M494.8 173.3l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#160889"
            d="M494.8 160.5l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M494.8 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M494.8 135l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M494.8 122.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M494.8 109.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#2a078d"
            d="M498.5 423.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#26078c"
            d="M498.5 410.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M498.5 397.5l-3.7-2.1V391l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M498.5 384.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M498.5 371.9l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#26078c"
            d="M498.5 359l-3.7-2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M498.5 346.3l-3.7-2.2V340l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#130888"
            d="M498.5 333.5l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#170889"
            d="M498.5 320.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#120888"
            d="M498.5 307.9l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#100887"
            d="M498.5 295l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#26078c"
            d="M498.5 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100888"
            d="M498.5 269.4l-3.7-2.1V263l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#22078b"
            d="M498.5 256.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M498.5 243.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#120888"
            d="M498.5 231l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#100887"
            d="M498.5 218.2l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1b088a"
            d="M498.5 205.4l-3.7-2.2V199l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M498.5 192.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#7c09a3"
            d="M498.5 179.8l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#150888"
            d="M498.5 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1b088a"
            d="M498.5 154.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM498.5 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M498.5 128.5l-3.7-2.1V122l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#190889"
            d="M498.5 115.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0d0887"
            d="M498.5 102.9l-3.7-2.2v-4.2l3.7-2.1 3.7 2v4.3zM502.2 429.6l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#22078b"
            d="M502.2 416.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M502.2 404l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M502.2 391.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM502.2 378.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M502.2 365.5l-3.7-2.1V359l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#1e078a"
            d="M502.2 352.7l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#1a0889"
            d="M502.2 339.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#170889"
            d="M502.2 327l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2zM502.2 314.3l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#150888"
            d="M502.2 301.4l-3.7-2V295l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M502.2 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M502.2 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#180889"
            d="M502.2 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M502.2 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M502.2 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3zM502.2 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3zM502.2 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0f0887"
            d="M502.2 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#22078b"
            d="M502.2 186.2l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M502.2 173.3l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#170889"
            d="M502.2 160.5l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#360692"
            d="M502.2 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M502.2 135l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M502.2 122.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M502.2 109.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#330690"
            d="M505.9 423.1l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#160889"
            d="M505.9 410.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M505.9 397.5l-3.7-2.1V391l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M505.9 384.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1d088a"
            d="M505.9 371.9l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M505.9 359l-3.7-2v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#1c088a"
            d="M505.9 346.3l-3.7-2.2V340l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0e0887"
            d="M505.9 333.5l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0f0887"
            d="M505.9 320.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#120888"
            d="M505.9 307.9l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3zM505.9 295l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0e0887"
            d="M505.9 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1a0889"
            d="M505.9 269.4l-3.7-2.1V263l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#130888"
            d="M505.9 256.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1a0889"
            d="M505.9 243.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#120888"
            d="M505.9 231l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#140888"
            d="M505.9 218.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0f0887"
            d="M505.9 205.4l-3.7-2.2V199l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M505.9 192.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#29078d"
            d="M505.9 179.8l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#1a0889"
            d="M505.9 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3zM505.9 154.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M505.9 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2c078e"
            d="M505.9 128.5l-3.7-2.1V122l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#29078d"
            d="M505.9 115.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0d0887"
            d="M505.9 102.9l-3.7-2.2v-4.2l3.7-2.1 3.7 2v4.3z"
          />
          <path
            fill="#3d0594"
            d="M509.6 429.6l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#170889"
            d="M509.6 416.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M509.6 404l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M509.6 391.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M509.6 378.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M509.6 365.5l-3.7-2.1V359l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#2d078f"
            d="M509.6 352.7l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#100887"
            d="M509.6 339.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#140888"
            d="M509.6 327l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#100887"
            d="M509.6 314.3l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#160888"
            d="M509.6 301.4l-3.7-2V295l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M509.6 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#130888"
            d="M509.6 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM509.6 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M509.6 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#160889"
            d="M509.6 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M509.6 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3zM509.6 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#1d088a"
            d="M509.6 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#370692"
            d="M509.6 186.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#100887"
            d="M509.6 173.3l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#20078b"
            d="M509.6 160.5l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#130888"
            d="M509.6 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M509.6 135l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M509.6 122.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#3b0693"
            d="M509.6 109.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#6001a4"
            d="M513.3 423.1l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#150888"
            d="M513.3 410.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M513.3 397.5l-3.7-2.1V391l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M513.3 384.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M513.3 371.9l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#130888"
            d="M513.3 359l-3.7-2v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0e0887"
            d="M513.3 346.3l-3.7-2.2V340l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#170889"
            d="M513.3 333.5l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#1c088a"
            d="M513.3 320.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0e0887"
            d="M513.3 307.9l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0f0887"
            d="M513.3 295l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#1c088a"
            d="M513.3 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M513.3 269.4l-3.7-2.1V263l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M513.3 256.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M513.3 243.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#130888"
            d="M513.3 231l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0e0887"
            d="M513.3 218.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2zM513.3 205.4l-3.7-2.2V199l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M513.3 192.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#170889"
            d="M513.3 179.8l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#1c088a"
            d="M513.3 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2b078e"
            d="M513.3 154.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M513.3 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M513.3 128.5l-3.7-2.1V122l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#20078b"
            d="M513.3 115.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#100887"
            d="M517 429.6l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#420596"
            d="M517 416.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#130888"
            d="M517 404l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M517 391.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M517 378.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M517 365.5l-3.7-2.1V359l3.7-2.1 3.7 2.1v4.3zM517 352.7l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#130888"
            d="M517 339.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2zM517 327l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#140888"
            d="M517 314.3l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#100887"
            d="M517 301.4l-3.7-2V295l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M517 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1c088a"
            d="M517 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M517 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM517 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#130888"
            d="M517 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1c088a"
            d="M517 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.1v4.3z"
          />
          <path
            fill="#24078c"
            d="M517 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#100887"
            d="M517 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#27078d"
            d="M517 186.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2zM517 173.3l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#150888"
            d="M517 160.5l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2c078e"
            d="M517 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1c088a"
            d="M517 135l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M517 122.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M517 109.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#2b078e"
            d="M520.7 423.1L517 421v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#130888"
            d="M520.7 410.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M520.7 397.5l-3.7-2.1V391l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M520.7 384.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM520.7 371.9l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM520.7 359l-3.7-2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M520.7 346.3L517 344V340l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M520.7 333.5l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#130888"
            d="M520.7 320.7l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3zM520.7 307.9l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#100887"
            d="M520.7 295l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1c088a"
            d="M520.7 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M520.7 269.4l-3.7-2.1V263l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M520.7 256.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M520.7 243.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#20078b"
            d="M520.7 231l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#120888"
            d="M520.7 218.2L517 216v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#410596"
            d="M520.7 205.4l-3.7-2.2V199l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1c088a"
            d="M520.7 192.6l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#87109f"
            d="M520.7 179.8l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#2b078e"
            d="M520.7 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1d078a"
            d="M520.7 154.1L517 152v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#190889"
            d="M520.7 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1e078a"
            d="M520.7 128.5l-3.7-2.1V122l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M520.7 115.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#1f078b"
            d="M524.4 429.6l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#3c0694"
            d="M524.4 416.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1c088a"
            d="M524.4 404l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M524.4 391.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M524.4 378.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M524.4 365.5l-3.7-2.1V359l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0f0887"
            d="M524.4 352.7l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#100887"
            d="M524.4 339.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#180889"
            d="M524.4 327l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#110888"
            d="M524.4 314.3l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#130888"
            d="M524.4 301.4l-3.7-2V295l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M524.4 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M524.4 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M524.4 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M524.4 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#150888"
            d="M524.4 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M524.4 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#2a078d"
            d="M524.4 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#1f078a"
            d="M524.4 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#180889"
            d="M524.4 186.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#160888"
            d="M524.4 173.3l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#190889"
            d="M524.4 160.5l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M524.4 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M524.4 135l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#24078c"
            d="M524.4 122.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M528 423.1l-3.6-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#27078d"
            d="M528 410.3l-3.6-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100888"
            d="M528 397.5l-3.6-2.1V391l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M528 384.7l-3.6-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M528 371.9l-3.6-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM528 359l-3.6-2v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0f0887"
            d="M528 346.3l-3.6-2.2V340l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M528 333.5l-3.6-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#110888"
            d="M528 320.7l-3.6-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#100887"
            d="M528 307.9l-3.6-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0e0887"
            d="M528 295l-3.6-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#100887"
            d="M528 282.2l-3.6-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M528 269.4l-3.6-2.1V263l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1c088a"
            d="M528 256.6l-3.6-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M528 243.8l-3.6-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#120888"
            d="M528 231l-3.6-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0d0887"
            d="M528 218.2l-3.6-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#1b088a"
            d="M528 205.4l-3.6-2.2V199l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#160889"
            d="M528 192.6l-3.6-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0e0887"
            d="M528 179.8l-3.6-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#100888"
            d="M528 141.3l-3.6-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M528 128.5l-3.6-2.1V122l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M528 115.7l-3.6-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#100887"
            d="M531.8 429.6l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#130888"
            d="M531.8 404l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#26078c"
            d="M531.8 391.1L528 389v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M531.8 378.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM531.8 365.5l-3.7-2.1V359l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0d0887"
            d="M531.8 352.7l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#120888"
            d="M531.8 339.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0e0887"
            d="M531.8 327l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#100887"
            d="M531.8 314.3L528 312v-4.3l3.7-2 3.7 2v4.3zM531.8 301.4l-3.7-2V295l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#160888"
            d="M531.8 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M531.8 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#180889"
            d="M531.8 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M531.8 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M531.8 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M531.8 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#1e078a"
            d="M531.8 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#2d078f"
            d="M531.8 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M531.8 122.1L528 120v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M531.8 109.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4zM535.5 423.1l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#21078b"
            d="M535.5 410.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM535.5 397.5l-3.7-2.1V391l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M535.5 384.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M535.5 371.9l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M535.5 359l-3.7-2v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0f0887"
            d="M535.5 346.3l-3.7-2.2V340l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#150888"
            d="M535.5 333.5l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#160889"
            d="M535.5 320.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#110888"
            d="M535.5 307.9l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0f0887"
            d="M535.5 295l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0e0887"
            d="M535.5 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#150888"
            d="M535.5 269.4l-3.7-2.1V263l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1a0889"
            d="M535.5 256.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M535.5 243.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#1e078a"
            d="M535.5 231l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#1c088a"
            d="M535.5 218.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#310690"
            d="M535.5 205.4l-3.7-2.2V199l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M535.5 115.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#2d078e"
            d="M539.2 404l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M539.2 391.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M539.2 378.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M539.2 365.5l-3.7-2.1V359l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#100887"
            d="M539.2 352.7l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#0e0887"
            d="M539.2 339.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#170889"
            d="M539.2 327l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#2b078e"
            d="M539.2 314.3l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#110888"
            d="M539.2 301.4l-3.7-2V295l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M539.2 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M539.2 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#21078b"
            d="M539.2 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#130888"
            d="M539.2 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1a0889"
            d="M539.2 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M539.2 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#1a0889"
            d="M539.2 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#20078b"
            d="M539.2 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M539.2 160.5l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M539.2 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM539.2 122.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM539.2 109.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#150888"
            d="M542.9 397.5l-3.7-2.1V391l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M542.9 384.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M542.9 371.9l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M542.9 359l-3.7-2v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0f0887"
            d="M542.9 346.3l-3.7-2.2V340l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#110888"
            d="M542.9 333.5l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0f0887"
            d="M542.9 320.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#110888"
            d="M542.9 307.9l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3zM542.9 295l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4zM542.9 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1d078a"
            d="M542.9 269.4l-3.7-2.1V263l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#340691"
            d="M542.9 256.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#150888"
            d="M542.9 243.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4zM542.9 231l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#160889"
            d="M542.9 218.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#2f078f"
            d="M542.9 205.4l-3.7-2.2V199l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M542.9 192.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0e0887"
            d="M542.9 179.8l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#110888"
            d="M542.9 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2e078f"
            d="M542.9 154.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#150888"
            d="M542.9 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M542.9 115.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#150888"
            d="M546.6 404l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M546.6 391.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#150888"
            d="M546.6 378.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M546.6 365.5l-3.7-2.1V359l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#110888"
            d="M546.6 352.7l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3zM546.6 339.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#120888"
            d="M546.6 327l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#110888"
            d="M546.6 314.3l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#130888"
            d="M546.6 301.4l-3.7-2V295l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#160889"
            d="M546.6 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M546.6 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M546.6 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#150888"
            d="M546.6 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2f078f"
            d="M546.6 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1a0889"
            d="M546.6 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#110888"
            d="M546.6 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#24078c"
            d="M546.6 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M546.6 186.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#1e078a"
            d="M546.6 173.3l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M546.6 160.5l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#400596"
            d="M546.6 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M546.6 135l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M546.6 109.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#20078b"
            d="M550.3 397.5l-3.7-2.1V391l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M550.3 384.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#160889"
            d="M550.3 371.9l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100888"
            d="M550.3 359l-3.7-2v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#180889"
            d="M550.3 346.3l-3.7-2.2V340l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#20078b"
            d="M550.3 333.5l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#140888"
            d="M550.3 320.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#180889"
            d="M550.3 307.9l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#1b088a"
            d="M550.3 295l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0f0887"
            d="M550.3 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M550.3 269.4l-3.7-2.1V263l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2a078e"
            d="M550.3 256.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M550.3 243.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#310690"
            d="M550.3 231l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#1b088a"
            d="M550.3 218.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#20078b"
            d="M550.3 205.4l-3.7-2.2V199l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M550.3 192.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#1d078a"
            d="M550.3 179.8l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#54039e"
            d="M550.3 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2c078e"
            d="M550.3 154.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M550.3 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M550.3 128.5l-3.7-2.1V122l3.7-2.1 3.7 2.1v4.3zM550.3 115.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#170889"
            d="M554 404l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M554 391.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M554 378.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M554 365.5l-3.7-2.1V359l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#170889"
            d="M554 352.7l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#140888"
            d="M554 339.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2zM554 327l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#110888"
            d="M554 314.3l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#4d049b"
            d="M554 301.4l-3.7-2V295l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M554 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M554 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#130888"
            d="M554 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#340691"
            d="M554 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#53039d"
            d="M554 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M554 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.1v4.3z"
          />
          <path
            fill="#29078d"
            d="M554 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#170889"
            d="M554 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#190889"
            d="M554 186.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0e0887"
            d="M554 173.3l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#3c0694"
            d="M554 160.5l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M554 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M554 135l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M554 109.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#110888"
            d="M557.7 397.5l-3.7-2.1V391l3.7-2.1 3.7 2.1v4.3zM557.7 384.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M557.7 371.9l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M557.7 359l-3.7-2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2f078f"
            d="M557.7 346.3L554 344V340l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#130888"
            d="M557.7 333.5l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#1b088a"
            d="M557.7 320.7l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#1e078a"
            d="M557.7 307.9l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#50049c"
            d="M557.7 295l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100888"
            d="M557.7 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#130888"
            d="M557.7 269.4l-3.7-2.1V263l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M557.7 256.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M557.7 243.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#27078d"
            d="M557.7 231l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#150888"
            d="M557.7 218.2L554 216v-4.3l3.7-2.1 3.7 2.1v4.3zM557.7 205.4l-3.7-2.2V199l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M557.7 192.6l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0e0887"
            d="M557.7 179.8l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0d0887"
            d="M557.7 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3zM557.7 154.1L554 152v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M557.7 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M557.7 128.5l-3.7-2.1V122l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M557.7 115.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0f0887"
            d="M561.4 404l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M561.4 391.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M561.4 378.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#130888"
            d="M561.4 365.5l-3.7-2.1V359l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#1e078a"
            d="M561.4 352.7l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#390693"
            d="M561.4 339.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#160888"
            d="M561.4 327l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#22078b"
            d="M561.4 314.3l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#3c0694"
            d="M561.4 301.4l-3.7-2V295l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M561.4 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2c078e"
            d="M561.4 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#370692"
            d="M561.4 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#150888"
            d="M561.4 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#170889"
            d="M561.4 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1b0889"
            d="M561.4 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#3d0594"
            d="M561.4 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#100888"
            d="M561.4 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M561.4 186.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0f0887"
            d="M561.4 173.3l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M561.4 160.5l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M561.4 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM561.4 135l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M561.4 122.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM565 397.5l-3.6-2.1V391l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M565 384.7l-3.6-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M565 371.9l-3.6-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM565 359l-3.6-2v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#b7328b"
            d="M565 346.3l-3.6-2.2V340l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#140888"
            d="M565 333.5l-3.6-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#180889"
            d="M565 320.7l-3.6-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#300690"
            d="M565 307.9l-3.6-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#1c088a"
            d="M565 295l-3.6-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#2f078f"
            d="M565 282.2l-3.6-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M565 269.4l-3.6-2.1V263l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#5d02a2"
            d="M565 256.6l-3.6-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#160888"
            d="M565 243.8l-3.6-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#130888"
            d="M565 231l-3.6-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#140888"
            d="M565 218.2l-3.6-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#28078d"
            d="M565 205.4l-3.6-2.2V199l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M565 192.6l-3.6-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M565 179.8l-3.6-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0e0887"
            d="M565 167l-3.6-2.2v-4.3l3.7-2.1 3.7 2.1v4.3zM565 154.1l-3.6-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#400596"
            d="M565 141.3l-3.6-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M565 128.5l-3.6-2.1V122l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M565 115.7l-3.6-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0d0887"
            d="M568.8 404l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M568.8 391.1L565 389v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M568.8 378.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M568.8 365.5l-3.7-2.1V359l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#21078b"
            d="M568.8 352.7l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#110888"
            d="M568.8 339.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#120888"
            d="M568.8 327l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#130888"
            d="M568.8 314.3L565 312v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#110888"
            d="M568.8 301.4l-3.7-2V295l3.7-2.1 3.7 2.1v4.3zM568.8 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#27078d"
            d="M568.8 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#56039f"
            d="M568.8 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M568.8 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#160889"
            d="M568.8 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#160888"
            d="M568.8 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#190889"
            d="M568.8 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#150888"
            d="M568.8 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M568.8 186.2L565 184v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0e0887"
            d="M568.8 173.3l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M568.8 160.5l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1b088a"
            d="M568.8 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M568.8 135l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M572.5 397.5l-3.7-2.1V391l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100888"
            d="M572.5 384.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M572.5 371.9l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#150888"
            d="M572.5 359l-3.7-2v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#23078c"
            d="M572.5 346.3l-3.7-2.2V340l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#130888"
            d="M572.5 333.5l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#110888"
            d="M572.5 320.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#130888"
            d="M572.5 307.9l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#120888"
            d="M572.5 295l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#130888"
            d="M572.5 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M572.5 269.4l-3.7-2.1V263l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1a0889"
            d="M572.5 256.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#25078c"
            d="M572.5 243.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#1b0889"
            d="M572.5 231l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#110888"
            d="M572.5 218.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#160888"
            d="M572.5 205.4l-3.7-2.2V199l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M572.5 192.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0e0887"
            d="M572.5 179.8l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#110888"
            d="M572.5 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M572.5 154.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#860fa0"
            d="M572.5 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M572.5 128.5l-3.7-2.1V122l3.7-2.1 3.7 2.1v4.3zM576.1 391.1l-3.6-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M576.1 378.3l-3.6-2.1v-4.3l3.6-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#26078c"
            d="M576.1 365.5l-3.6-2.1V359l3.6-2.1 3.7 2v4.4z"
          />
          <path
            fill="#110888"
            d="M576.1 352.7l-3.6-2.1v-4.3l3.6-2.2 3.7 2.2v4.3zM576.1 339.9l-3.6-2.2v-4.2l3.6-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#190889"
            d="M576.1 327l-3.6-2v-4.3l3.6-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#1c088a"
            d="M576.1 314.3l-3.6-2.2v-4.3l3.6-2 3.7 2v4.3z"
          />
          <path
            fill="#110888"
            d="M576.1 301.4l-3.6-2V295l3.6-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1e078a"
            d="M576.1 288.6l-3.6-2.1v-4.3l3.6-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#3b0694"
            d="M576.1 275.8l-3.6-2.1v-4.3l3.6-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M576.1 263l-3.6-2.1v-4.3l3.6-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1f078a"
            d="M576.1 250.2l-3.6-2.1v-4.3l3.6-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1d088a"
            d="M576.1 237.4l-3.6-2.1V231l3.6-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#160888"
            d="M576.1 224.6l-3.6-2.1v-4.3l3.6-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#110888"
            d="M576.1 211.8l-3.6-2.2v-4.2l3.6-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#150888"
            d="M576.1 199l-3.6-2.1v-4.3l3.6-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M576.1 186.2l-3.6-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1e078a"
            d="M576.1 173.3l-3.6-2v-4.4l3.6-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1d078a"
            d="M576.1 160.5l-3.6-2.1v-4.3l3.6-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M576.1 147.7l-3.6-2.1v-4.3l3.6-2.1 3.7 2.1v4.3zM576.1 135l-3.6-2.2v-4.3l3.6-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M579.9 397.5l-3.7-2.1V391l3.6-2.1 3.8 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M579.9 384.7l-3.7-2.1v-4.3l3.6-2.1 3.8 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M579.9 371.9l-3.7-2.1v-4.3l3.6-2.1 3.8 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M579.9 359l-3.7-2v-4.3l3.6-2.1 3.8 2v4.4zM579.9 346.3l-3.7-2.2V340l3.6-2.2 3.8 2.2v4.2z"
          />
          <path
            fill="#450597"
            d="M579.9 333.5l-3.7-2.2v-4.2l3.6-2.2 3.8 2.2v4.2z"
          />
          <path
            fill="#140888"
            d="M579.9 320.7l-3.7-2.2v-4.2l3.6-2.2 3.8 2.2v4.2z"
          />
          <path
            fill="#130888"
            d="M579.9 307.9l-3.7-2.2v-4.3l3.6-2 3.8 2v4.3z"
          />
          <path
            fill="#170889"
            d="M579.9 295l-3.7-2.1v-4.3l3.6-2.1 3.8 2v4.4z"
          />
          <path
            fill="#130888"
            d="M579.9 282.2l-3.7-2.1v-4.3l3.6-2.1 3.8 2.1v4.3zM579.9 269.4l-3.7-2.1V263l3.6-2.1 3.8 2.1v4.3z"
          />
          <path
            fill="#28078d"
            d="M579.9 256.6l-3.7-2.1v-4.3l3.6-2.1 3.8 2.1v4.3z"
          />
          <path
            fill="#7103a6"
            d="M579.9 243.8l-3.7-2.1v-4.3l3.6-2.1 3.8 2v4.4z"
          />
          <path
            fill="#2d078e"
            d="M579.9 231l-3.7-2.1v-4.3l3.6-2.1 3.8 2v4.4z"
          />
          <path
            fill="#110888"
            d="M579.9 218.2l-3.7-2.2v-4.2l3.6-2.2 3.8 2.2v4.2z"
          />
          <path
            fill="#130888"
            d="M579.9 205.4l-3.7-2.2V199l3.6-2.1 3.8 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M579.9 192.6l-3.7-2.2v-4.2l3.6-2.2 3.8 2.2v4.2z"
          />
          <path
            fill="#23078c"
            d="M579.9 179.8l-3.7-2.2v-4.3l3.6-2 3.8 2v4.3z"
          />
          <path
            fill="#0e0887"
            d="M579.9 167l-3.7-2.2v-4.3l3.6-2.1 3.8 2.1v4.3zM579.9 154.1l-3.7-2.1v-4.3l3.6-2.1 3.8 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M579.9 141.3l-3.7-2.1v-4.3l3.6-2.1 3.8 2.1v4.3zM583.5 404l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M583.5 391.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M583.5 378.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM583.5 365.5l-3.7-2.1V359l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#190889"
            d="M583.5 352.7l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#1d088a"
            d="M583.5 339.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#4b049a"
            d="M583.5 327l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#22078b"
            d="M583.5 314.3l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#160888"
            d="M583.5 301.4l-3.7-2V295l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1b0889"
            d="M583.5 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M583.5 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#160888"
            d="M583.5 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M583.5 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#160889"
            d="M583.5 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#150888"
            d="M583.5 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#100887"
            d="M583.5 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#320690"
            d="M583.5 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#21078b"
            d="M583.5 186.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#1e078a"
            d="M583.5 173.3l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M583.5 160.5l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM583.5 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M587.3 397.5l-3.7-2.1V391l3.6-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M587.3 384.7l-3.7-2.1v-4.3l3.6-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M587.3 371.9l-3.7-2.1v-4.3l3.6-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#130888"
            d="M587.3 359l-3.7-2v-4.3l3.6-2.1 3.7 2v4.4z"
          />
          <path
            fill="#2d078e"
            d="M587.3 346.3l-3.7-2.2V340l3.6-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#27078d"
            d="M587.3 333.5l-3.7-2.2v-4.2l3.6-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#3d0594"
            d="M587.3 320.7l-3.7-2.2v-4.2l3.6-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#180889"
            d="M587.3 307.9l-3.7-2.2v-4.3l3.6-2 3.7 2v4.3z"
          />
          <path
            fill="#21078b"
            d="M587.3 295l-3.7-2.1v-4.3l3.6-2.1 3.7 2v4.4z"
          />
          <path
            fill="#1b0889"
            d="M587.3 282.2l-3.7-2.1v-4.3l3.6-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M587.3 269.4l-3.7-2.1V263l3.6-2.1 3.8 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M587.3 256.6l-3.7-2.1v-4.3l3.6-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M587.3 243.8l-3.7-2.1v-4.3l3.6-2.1 3.7 2v4.4z"
          />
          <path
            fill="#170889"
            d="M587.3 231l-3.7-2.1v-4.3l3.6-2.1 3.7 2v4.4z"
          />
          <path
            fill="#100887"
            d="M587.3 218.2l-3.7-2.2v-4.2l3.6-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#1c088a"
            d="M587.3 205.4l-3.7-2.2V199l3.6-2.1 3.8 2.1v4.3z"
          />
          <path
            fill="#1d078a"
            d="M587.3 192.6l-3.7-2.2v-4.2l3.6-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#440597"
            d="M587.3 179.8l-3.7-2.2v-4.3l3.6-2 3.7 2v4.3z"
          />
          <path
            fill="#0e0887"
            d="M587.3 167l-3.7-2.2v-4.3l3.6-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M587.3 154.1l-3.7-2.1v-4.3l3.6-2.1 3.7 2.1v4.3zM591 404l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3zM591 391.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#20078b"
            d="M591 378.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#180889"
            d="M591 365.5l-3.7-2.1V359l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1b088a"
            d="M591 352.7l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#53039e"
            d="M591 339.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#2f078f"
            d="M591 327l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#1c088a"
            d="M591 314.3l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#160889"
            d="M591 301.4l-3.7-2V295l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#29078d"
            d="M591 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M591 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM591 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M591 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M591 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M591 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.1v4.3z"
          />
          <path
            fill="#27078d"
            d="M591 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#120888"
            d="M591 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M591 186.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#2a078e"
            d="M591 173.3l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M591 160.5l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M594.6 410.3l-3.6-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M594.6 397.5l-3.6-2.1V391l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1b088a"
            d="M594.6 384.7l-3.6-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M594.6 371.9l-3.6-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#130888"
            d="M594.6 359l-3.6-2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2b078e"
            d="M594.6 346.3L591 344V340l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#ad2792"
            d="M594.6 333.5l-3.6-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#1c088a"
            d="M594.6 320.7l-3.6-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#110888"
            d="M594.6 307.9l-3.6-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#1e078a"
            d="M594.6 295l-3.6-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#130888"
            d="M594.6 282.2l-3.6-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M594.6 269.4l-3.6-2.1V263l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#130888"
            d="M594.6 256.6l-3.6-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M594.6 243.8l-3.6-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#1c088a"
            d="M594.6 231l-3.6-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#2f078f"
            d="M594.6 218.2L591 216v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M594.6 205.4l-3.6-2.2V199l3.7-2.1 3.7 2.1v4.3zM594.6 192.6l-3.6-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#150888"
            d="M594.6 167l-3.6-2.2v-4.3l3.7-2.1 3.7 2.1v4.3zM598.3 404l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#170889"
            d="M598.3 391.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M598.3 378.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#170889"
            d="M598.3 365.5l-3.7-2.1V359l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#150888"
            d="M598.3 352.7l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#6201a4"
            d="M598.3 339.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#5902a0"
            d="M598.3 327l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#180889"
            d="M598.3 314.3l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#3c0694"
            d="M598.3 301.4l-3.7-2V295l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M598.3 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M598.3 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M598.3 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M598.3 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M598.3 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#24078c"
            d="M598.3 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#23078b"
            d="M598.3 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#28078d"
            d="M598.3 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M602 410.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM602 397.5l-3.7-2.1V391l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#21078b"
            d="M602 384.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M602 371.9l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M602 359l-3.7-2v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#180889"
            d="M602 346.3l-3.7-2.2V340l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#f79942"
            d="M602 333.5l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#2c078e"
            d="M602 320.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0e0887"
            d="M602 307.9l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#1c088a"
            d="M602 295l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#24078c"
            d="M602 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M602 269.4l-3.7-2.1V263l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M602 256.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#150888"
            d="M602 243.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#2c078e"
            d="M602 231l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0e0887"
            d="M602 218.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#110888"
            d="M602 205.4l-3.7-2.2V199l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#310690"
            d="M602 192.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M605.7 404l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#190889"
            d="M605.7 391.1L602 389v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#23078b"
            d="M605.7 378.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#150888"
            d="M605.7 365.5l-3.7-2.1V359l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#130888"
            d="M605.7 352.7l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#390693"
            d="M605.7 339.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#400596"
            d="M605.7 327l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#370692"
            d="M605.7 314.3L602 312v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#1e078a"
            d="M605.7 301.4l-3.7-2V295l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#130888"
            d="M605.7 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#27078d"
            d="M605.7 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M605.7 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#130888"
            d="M605.7 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1a0889"
            d="M605.7 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M605.7 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#0f0887"
            d="M605.7 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#100887"
            d="M605.7 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#27078d"
            d="M609.4 397.5l-3.7-2.1V391l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#170889"
            d="M609.4 384.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1e078a"
            d="M609.4 371.9l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#180889"
            d="M609.4 359l-3.7-2v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#2f078f"
            d="M609.4 346.3l-3.7-2.2V340l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#25078c"
            d="M609.4 333.5l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#190889"
            d="M609.4 320.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#120888"
            d="M609.4 307.9l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#2d078e"
            d="M609.4 295l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#2f078f"
            d="M609.4 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M609.4 269.4l-3.7-2.1V263l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#130888"
            d="M609.4 256.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#180889"
            d="M609.4 243.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#22078b"
            d="M609.4 231l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#120888"
            d="M609.4 218.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#100887"
            d="M609.4 205.4l-3.7-2.2V199l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#5903a0"
            d="M609.4 192.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0f0887"
            d="M613.1 391.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M613.1 378.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M613.1 365.5l-3.7-2.1V359l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#190889"
            d="M613.1 352.7l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#150888"
            d="M613.1 339.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#29078d"
            d="M613.1 327l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#27078d"
            d="M613.1 314.3l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#1d088a"
            d="M613.1 301.4l-3.7-2V295l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#180889"
            d="M613.1 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#330691"
            d="M613.1 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#130888"
            d="M613.1 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#150888"
            d="M613.1 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M613.1 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M613.1 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3zM613.1 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#120888"
            d="M613.1 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#150888"
            d="M613.1 186.2l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#180889"
            d="M616.8 397.5l-3.7-2.1V391l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#160889"
            d="M616.8 384.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#190889"
            d="M616.8 371.9l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM616.8 359l-3.7-2v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#1a0889"
            d="M616.8 346.3l-3.7-2.2V340l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#130888"
            d="M616.8 333.5l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2zM616.8 320.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#100887"
            d="M616.8 307.9l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#1d088a"
            d="M616.8 295l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#2a078d"
            d="M616.8 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#150888"
            d="M616.8 269.4l-3.7-2.1V263l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#170889"
            d="M616.8 256.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#190889"
            d="M616.8 243.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#120888"
            d="M616.8 231l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#21078b"
            d="M616.8 218.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#430597"
            d="M616.8 205.4l-3.7-2.2V199l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#410596"
            d="M616.8 192.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#1d088a"
            d="M616.8 179.8l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0d0887"
            d="M620.5 404l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M620.5 391.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M620.5 378.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M620.5 365.5l-3.7-2.1V359l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#180889"
            d="M620.5 352.7l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#110888"
            d="M620.5 339.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#120888"
            d="M620.5 327l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#310690"
            d="M620.5 314.3l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#24078c"
            d="M620.5 301.4l-3.7-2V295l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M620.5 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#27078d"
            d="M620.5 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1d088a"
            d="M620.5 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2c078e"
            d="M620.5 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M620.5 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#130888"
            d="M620.5 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#320690"
            d="M620.5 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#2b078e"
            d="M620.5 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#26078c"
            d="M620.5 186.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#130888"
            d="M624.2 397.5l-3.7-2.1V391l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#21078b"
            d="M624.2 384.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M624.2 371.9l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M624.2 359l-3.7-2v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#190889"
            d="M624.2 346.3l-3.7-2.2V340l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#100888"
            d="M624.2 333.5l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#120888"
            d="M624.2 320.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#170889"
            d="M624.2 307.9l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#1b088a"
            d="M624.2 295l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#170889"
            d="M624.2 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#22078b"
            d="M624.2 269.4l-3.7-2.1V263l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#130888"
            d="M624.2 256.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M624.2 243.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4zM624.2 231l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#1a0889"
            d="M624.2 218.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#21078b"
            d="M624.2 205.4l-3.7-2.2V199l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#5803a0"
            d="M624.2 192.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#100888"
            d="M624.2 179.8l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0e0887"
            d="M628 404l-3.8-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2b078e"
            d="M628 391.1l-3.8-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M628 378.3l-3.8-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1c088a"
            d="M628 365.5l-3.8-2.1V359l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#170889"
            d="M628 352.7l-3.8-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#120888"
            d="M628 339.9l-3.8-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#130888"
            d="M628 327l-3.8-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#170889"
            d="M628 314.3l-3.8-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#110888"
            d="M628 301.4l-3.8-2V295l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M628 288.6l-3.8-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#170889"
            d="M628 275.8l-3.8-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M628 263l-3.8-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#22078b"
            d="M628 250.2l-3.8-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M628 237.4l-3.8-2.1V231l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#150888"
            d="M628 224.6l-3.8-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#160888"
            d="M628 211.8l-3.8-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#390693"
            d="M628 199l-3.8-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1b088a"
            d="M628 186.2l-3.8-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#180889"
            d="M628 173.3l-3.8-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#340691"
            d="M631.6 410.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#22078b"
            d="M631.6 397.5l-3.7-2.1V391l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1c088a"
            d="M631.6 384.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#130888"
            d="M631.6 371.9l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM631.6 359l-3.7-2v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#100888"
            d="M631.6 346.3L628 344V340l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#140888"
            d="M631.6 333.5l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2zM631.6 320.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#160889"
            d="M631.6 307.9l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#150888"
            d="M631.6 295l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0e0887"
            d="M631.6 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M631.6 269.4l-3.7-2.1V263l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#21078b"
            d="M631.6 256.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#170889"
            d="M631.6 243.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#130888"
            d="M631.6 231l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0f0887"
            d="M631.6 218.2L628 216v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#120888"
            d="M631.6 205.4l-3.7-2.2V199l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#160889"
            d="M631.6 192.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#2f078f"
            d="M631.6 179.8l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0d0887"
            d="M631.6 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#340691"
            d="M635.3 416.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#190889"
            d="M635.3 404l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#160889"
            d="M635.3 391.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M635.3 378.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1f078b"
            d="M635.3 365.5l-3.7-2.1V359l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#110888"
            d="M635.3 352.7l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#23078c"
            d="M635.3 339.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0f0887"
            d="M635.3 327l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#7103a6"
            d="M635.3 314.3l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#160888"
            d="M635.3 301.4l-3.7-2V295l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#22078b"
            d="M635.3 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M635.3 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#170889"
            d="M635.3 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M635.3 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#150888"
            d="M635.3 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#26078c"
            d="M635.3 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3zM635.3 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#2a078d"
            d="M635.3 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#21078b"
            d="M635.3 186.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M635.3 173.3l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M635.3 160.5l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M635.3 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#470598"
            d="M639 423.1l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1b0889"
            d="M639 410.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#21078b"
            d="M639 397.5l-3.7-2.1V391l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M639 384.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#21078b"
            d="M639 371.9l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#160889"
            d="M639 359l-3.7-2v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#110888"
            d="M639 346.3l-3.7-2.2V340l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#330691"
            d="M639 333.5l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#440597"
            d="M639 320.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#150888"
            d="M639 307.9l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#140888"
            d="M639 295l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0e0887"
            d="M639 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#180889"
            d="M639 269.4l-3.7-2.1V263l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#28078d"
            d="M639 256.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#25078c"
            d="M639 243.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#2c078e"
            d="M639 231l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#490499"
            d="M639 218.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#380692"
            d="M639 205.4l-3.7-2.2V199l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#190889"
            d="M639 192.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.1v4.3z"
          />
          <path
            fill="#26078c"
            d="M639 179.8l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#1f078a"
            d="M639 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M639 154.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#25078c"
            d="M642.7 442.4l-3.7-2.2V436l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#5f02a3"
            d="M642.7 429.6l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#5803a0"
            d="M642.7 416.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#160888"
            d="M642.7 404l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M642.7 391.1L639 389v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M642.7 378.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1f078a"
            d="M642.7 365.5l-3.7-2.1V359l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#170889"
            d="M642.7 352.7l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#3f0595"
            d="M642.7 339.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#26078c"
            d="M642.7 327l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#390693"
            d="M642.7 314.3L639 312v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#2a078e"
            d="M642.7 301.4l-3.7-2V295l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M642.7 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M642.7 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2d078e"
            d="M642.7 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M642.7 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1f078b"
            d="M642.7 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#320690"
            d="M642.7 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#360692"
            d="M642.7 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#56039f"
            d="M642.7 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M642.7 186.2L639 184v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#26078c"
            d="M642.7 173.3l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#130888"
            d="M642.7 160.5l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM642.7 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2d078e"
            d="M646.4 448.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#6a00a8"
            d="M646.4 436l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#160888"
            d="M646.4 423.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1d078a"
            d="M646.4 410.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M646.4 397.5l-3.7-2.1V391l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1f078b"
            d="M646.4 384.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1d088a"
            d="M646.4 371.9l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#130888"
            d="M646.4 359l-3.7-2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#150888"
            d="M646.4 346.3l-3.7-2.2V340l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#140888"
            d="M646.4 333.5l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#6f02a7"
            d="M646.4 320.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#25078c"
            d="M646.4 307.9l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#130888"
            d="M646.4 295l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0e0887"
            d="M646.4 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM646.4 269.4l-3.7-2.1V263l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M646.4 256.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#90169c"
            d="M646.4 243.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#170889"
            d="M646.4 231l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#29078d"
            d="M646.4 218.2l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2d078e"
            d="M646.4 205.4l-3.7-2.2V199l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#350691"
            d="M646.4 192.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#3c0694"
            d="M646.4 179.8l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#27078d"
            d="M646.4 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#150888"
            d="M646.4 154.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M650.1 455.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#3e0595"
            d="M650.1 442.4l-3.7-2.2V436l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1c088a"
            d="M650.1 429.6l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#190889"
            d="M650.1 416.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#330691"
            d="M650.1 404l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#57039f"
            d="M650.1 391.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M650.1 378.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#30078f"
            d="M650.1 365.5l-3.7-2.1V359l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#7f0ba2"
            d="M650.1 352.7l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#170889"
            d="M650.1 339.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#160888"
            d="M650.1 327l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#2b078e"
            d="M650.1 314.3l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#1e078a"
            d="M650.1 301.4l-3.7-2V295l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M650.1 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M650.1 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#400596"
            d="M650.1 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#440597"
            d="M650.1 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M650.1 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#50049c"
            d="M650.1 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#440597"
            d="M650.1 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#2b078e"
            d="M650.1 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M650.1 186.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#320690"
            d="M650.1 173.3l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#24078c"
            d="M650.1 160.5l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2c078e"
            d="M650.1 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#6a00a8"
            d="M653.8 448.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#160889"
            d="M653.8 436l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#5f02a3"
            d="M653.8 423.1l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1d078a"
            d="M653.8 410.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#430597"
            d="M653.8 397.5l-3.7-2.1V391l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#370692"
            d="M653.8 384.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M653.8 371.9l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2c078e"
            d="M653.8 359l-3.7-2v-4.3l3.7-2.1 3.7 2v4.4zM653.8 346.3l-3.7-2.2V340l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#140888"
            d="M653.8 333.5l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#370692"
            d="M653.8 320.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#160888"
            d="M653.8 307.9l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#190889"
            d="M653.8 295l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#170889"
            d="M653.8 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#30068f"
            d="M653.8 269.4l-3.7-2.1V263l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#20078b"
            d="M653.8 256.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#26078c"
            d="M653.8 243.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#130888"
            d="M653.8 231l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#390693"
            d="M653.8 218.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#1f078a"
            d="M653.8 205.4l-3.7-2.2V199l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M653.8 192.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2zM653.8 179.8l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#100887"
            d="M653.8 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#180889"
            d="M653.8 154.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M653.8 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1a0889"
            d="M657.5 455.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#27078d"
            d="M657.5 442.4l-3.7-2.2V436l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M657.5 429.6l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#25078c"
            d="M657.5 416.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M657.5 404l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M657.5 391.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#3c0694"
            d="M657.5 352.7l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#130888"
            d="M657.5 339.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#110888"
            d="M657.5 327l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#140888"
            d="M657.5 314.3l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#1d088a"
            d="M657.5 301.4l-3.7-2V295l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M657.5 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#150888"
            d="M657.5 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#130888"
            d="M657.5 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1a0889"
            d="M657.5 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2e078f"
            d="M657.5 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#22078b"
            d="M657.5 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#130888"
            d="M657.5 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#1e078a"
            d="M657.5 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#22078b"
            d="M657.5 186.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0f0887"
            d="M657.5 173.3l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#180889"
            d="M657.5 160.5l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#54039e"
            d="M657.5 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M661.2 461.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#22078b"
            d="M661.2 448.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#110888"
            d="M661.2 436l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#5f02a3"
            d="M661.2 423.1l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#350691"
            d="M661.2 410.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M661.2 397.5l-3.7-2.1V391l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#21078b"
            d="M661.2 346.3l-3.7-2.2V340l3.7-2.2 3.7 2.2v4.2zM661.2 333.5l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#140888"
            d="M661.2 320.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2zM661.2 307.9l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0e0887"
            d="M661.2 295l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#26078c"
            d="M661.2 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#150888"
            d="M661.2 269.4l-3.7-2.1V263l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M661.2 256.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#26078d"
            d="M661.2 243.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#28078d"
            d="M661.2 231l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#27078d"
            d="M661.2 218.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0e0887"
            d="M661.2 205.4l-3.7-2.2V199l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M661.2 192.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#2b078e"
            d="M661.2 179.8l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#100887"
            d="M661.2 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#130888"
            d="M661.2 154.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M661.2 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#6201a4"
            d="M664.9 468l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0f0887"
            d="M664.9 455.2l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#150888"
            d="M664.9 442.4l-3.7-2.2V436l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M664.9 429.6l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#25078c"
            d="M664.9 416.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M664.9 404l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#56039f"
            d="M664.9 339.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#28078d"
            d="M664.9 327l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#180889"
            d="M664.9 314.3l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0e0887"
            d="M664.9 301.4l-3.7-2V295l3.7-2.1 3.7 2.1v4.3zM664.9 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#4b049a"
            d="M664.9 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M664.9 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1c088a"
            d="M664.9 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2f078f"
            d="M664.9 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2a078e"
            d="M664.9 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.1v4.3z"
          />
          <path
            fill="#29078d"
            d="M664.9 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#180889"
            d="M664.9 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#3b0693"
            d="M664.9 186.2l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2b078e"
            d="M664.9 173.3l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M664.9 160.5l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100888"
            d="M664.9 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1e078a"
            d="M664.9 135l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M664.9 122.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M668.6 461.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#130888"
            d="M668.6 448.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#110888"
            d="M668.6 436l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#26078c"
            d="M668.6 423.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM668.6 410.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#7907a4"
            d="M668.6 333.5l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#1d088a"
            d="M668.6 320.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#110888"
            d="M668.6 307.9l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0d0887"
            d="M668.6 295l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#25078c"
            d="M668.6 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#330691"
            d="M668.6 269.4l-3.7-2.1V263l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M668.6 256.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM668.6 243.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#24078c"
            d="M668.6 231l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#310690"
            d="M668.6 218.2l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M668.6 205.4l-3.7-2.2V199l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#130888"
            d="M668.6 192.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#2b078e"
            d="M668.6 179.8l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#430596"
            d="M668.6 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M668.6 154.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M668.6 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#130888"
            d="M668.6 128.5l-3.7-2.1V122l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M668.6 115.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#460598"
            d="M672.3 468l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0d0887"
            d="M672.3 455.2l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1b0889"
            d="M672.3 442.4l-3.7-2.2V436l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M672.3 429.6l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0d0887"
            d="M672.3 416.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M672.3 327l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#26078c"
            d="M672.3 314.3l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0d0887"
            d="M672.3 301.4l-3.7-2V295l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M672.3 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#23078b"
            d="M672.3 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#27078d"
            d="M672.3 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M672.3 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#160889"
            d="M672.3 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1e078a"
            d="M672.3 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#370692"
            d="M672.3 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#110888"
            d="M672.3 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M672.3 186.2l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#180889"
            d="M672.3 173.3l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#150888"
            d="M672.3 160.5l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1a0889"
            d="M672.3 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#180889"
            d="M672.3 135l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M672.3 122.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M672.3 109.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#53039d"
            d="M676 474.4l-3.7-2.1V468l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M676 461.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M676 448.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0e0887"
            d="M676 436l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#160888"
            d="M676 423.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1a0889"
            d="M676 333.5l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#8c139e"
            d="M676 320.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0e0887"
            d="M676 307.9l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#140888"
            d="M676 295l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#24078c"
            d="M676 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M676 269.4l-3.7-2.1V263l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M676 256.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#25078c"
            d="M676 243.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#23078c"
            d="M676 231l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#370692"
            d="M676 218.2l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M676 205.4l-3.7-2.2V199l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#330691"
            d="M676 192.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.1v4.3z"
          />
          <path
            fill="#25078c"
            d="M676 179.8l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#160888"
            d="M676 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#180889"
            d="M676 154.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M676 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M676 128.5l-3.7-2.1V122l3.7-2.1 3.7 2.1v4.3zM676 115.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#100887"
            d="M676 102.9l-3.7-2.2v-4.2l3.7-2.1 3.7 2v4.3z"
          />
          <path
            fill="#0f0887"
            d="M679.7 480.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#21078b"
            d="M679.7 468l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0e0887"
            d="M679.7 455.2L676 453v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M679.7 442.4l-3.7-2.2V436l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M679.7 429.6l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#7a08a3"
            d="M679.7 314.3L676 312v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0e0887"
            d="M679.7 301.4l-3.7-2V295l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M679.7 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M679.7 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#130888"
            d="M679.7 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M679.7 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#180889"
            d="M679.7 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#4b049a"
            d="M679.7 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#1d078a"
            d="M679.7 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#2a078e"
            d="M679.7 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#440597"
            d="M679.7 186.2L676 184v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M679.7 173.3l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#190889"
            d="M679.7 160.5l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M679.7 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M679.7 135l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3zM679.7 122.1L676 120v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#150888"
            d="M679.7 109.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#981a9a"
            d="M683.4 474.4l-3.7-2.1V468l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#21078b"
            d="M683.4 461.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#100887"
            d="M683.4 448.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#2e078f"
            d="M683.4 436l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M683.4 307.9l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#180889"
            d="M683.4 295l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#130888"
            d="M683.4 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2c078e"
            d="M683.4 269.4l-3.7-2.1V263l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#130888"
            d="M683.4 256.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2a078e"
            d="M683.4 243.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#180889"
            d="M683.4 231l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#8c139e"
            d="M683.4 218.2l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#22078b"
            d="M683.4 205.4l-3.7-2.2V199l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#28078d"
            d="M683.4 192.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#120888"
            d="M683.4 179.8l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#110888"
            d="M683.4 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#190889"
            d="M683.4 154.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#130888"
            d="M683.4 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2a078e"
            d="M683.4 128.5l-3.7-2.1V122l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M683.4 115.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#170889"
            d="M683.4 102.9l-3.7-2.2v-4.2l3.7-2.1 3.7 2v4.3z"
          />
          <path
            fill="#340691"
            d="M687 468l-3.6-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#1d088a"
            d="M687 455.2l-3.6-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#4d049b"
            d="M687 442.4l-3.6-2.2V436l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#130888"
            d="M687 301.4l-3.6-2V295l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#190889"
            d="M687 288.6l-3.6-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#130888"
            d="M687 275.8l-3.6-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M687 263l-3.6-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#190889"
            d="M687 250.2l-3.6-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1a0889"
            d="M687 237.4l-3.6-2.1V231l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#20078b"
            d="M687 224.6l-3.6-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#320690"
            d="M687 211.8l-3.6-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#3a0693"
            d="M687 199l-3.6-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2f078f"
            d="M687 186.2l-3.6-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#410596"
            d="M687 173.3l-3.6-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#a62394"
            d="M687 160.5l-3.6-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M687 147.7l-3.6-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M687 135l-3.6-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1e078a"
            d="M687 122.1l-3.6-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M687 109.3l-3.6-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#170889"
            d="M690.8 461.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M690.8 448.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#180889"
            d="M690.8 307.9l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#170889"
            d="M690.8 295l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#1d078a"
            d="M690.8 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2c078e"
            d="M690.8 269.4l-3.7-2.1V263l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M690.8 256.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#25078c"
            d="M690.8 243.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#110888"
            d="M690.8 231l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0f0887"
            d="M690.8 218.2L687 216v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#30078f"
            d="M690.8 205.4l-3.7-2.2V199l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#440597"
            d="M690.8 192.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#52039d"
            d="M690.8 179.8l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#440597"
            d="M690.8 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#56039f"
            d="M690.8 154.1L687 152v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#130888"
            d="M690.8 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#22078b"
            d="M690.8 128.5l-3.7-2.1V122l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M690.8 115.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0d0887"
            d="M690.8 102.9l-3.7-2.2v-4.2l3.7-2.1 3.7 2v4.3zM694.5 301.4l-3.7-2V295l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M694.5 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1c088a"
            d="M694.5 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M694.5 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M694.5 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M694.5 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1d088a"
            d="M694.5 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#1e078a"
            d="M694.5 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#b93489"
            d="M694.5 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#20078b"
            d="M694.5 186.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#1a0889"
            d="M694.5 173.3l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#bf3c84"
            d="M694.5 160.5l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M694.5 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M694.5 135l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1a0889"
            d="M694.5 122.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#340691"
            d="M694.5 109.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0f0887"
            d="M694.5 96.5l-3.7-2.1V90l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#1a0889"
            d="M698.2 295l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#1f078a"
            d="M698.2 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2d078e"
            d="M698.2 269.4l-3.7-2.1V263l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M698.2 256.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM698.2 243.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4zM698.2 231l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0f0887"
            d="M698.2 218.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#1b088a"
            d="M698.2 205.4l-3.7-2.2V199l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#53039d"
            d="M698.2 192.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#51039d"
            d="M698.2 179.8l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#b42d8e"
            d="M698.2 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#7505a5"
            d="M698.2 154.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M698.2 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M698.2 128.5l-3.7-2.1V122l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#24078c"
            d="M698.2 115.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#1c088a"
            d="M698.2 102.9l-3.7-2.2v-4.2l3.7-2.1 3.7 2v4.3z"
          />
          <path
            fill="#300690"
            d="M701.9 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#310690"
            d="M701.9 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M701.9 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M701.9 250.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M701.9 237.4l-3.7-2.1V231l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M701.9 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#25078c"
            d="M701.9 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#6201a4"
            d="M701.9 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#370692"
            d="M701.9 186.2l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#51039d"
            d="M701.9 173.3l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#470598"
            d="M701.9 160.5l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#26078c"
            d="M701.9 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2c078e"
            d="M701.9 135l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M701.9 122.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1c088a"
            d="M701.9 109.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#110888"
            d="M701.9 96.5l-3.7-2.1V90l3.7-2.2 3.7 2.2v4.3zM705.6 282.2l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M705.6 269.4l-3.7-2.1V263l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#26078d"
            d="M705.6 256.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#120888"
            d="M705.6 231l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#350691"
            d="M705.6 218.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#300690"
            d="M705.6 205.4l-3.7-2.2V199l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#6d01a7"
            d="M705.6 192.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#6700a7"
            d="M705.6 179.8l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#150888"
            d="M705.6 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2f078f"
            d="M705.6 154.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#3a0693"
            d="M705.6 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#25078c"
            d="M705.6 128.5l-3.7-2.1V122l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M705.6 115.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#2d078f"
            d="M705.6 102.9l-3.7-2.2v-4.2l3.7-2.1 3.7 2v4.3z"
          />
          <path
            fill="#0d0887"
            d="M709.3 288.6l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M709.3 275.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM709.3 263l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M709.3 224.6l-3.7-2.1v-4.3l3.7-2.2 3.7 2.2v4.3zM709.3 211.8l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#380692"
            d="M709.3 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#6a00a8"
            d="M709.3 186.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#93189b"
            d="M709.3 173.3l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M709.3 160.5l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#150888"
            d="M709.3 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#4c049a"
            d="M709.3 135l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1a0889"
            d="M709.3 122.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#450597"
            d="M709.3 109.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#1f078b"
            d="M709.3 96.5l-3.7-2.1V90l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#0d0887"
            d="M713 231l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#0f0887"
            d="M713 218.2l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#100888"
            d="M713 205.4l-3.7-2.2V199l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#50049c"
            d="M713 192.6l-3.7-2.2v-4.2l3.7-2.2 3.7 2.1v4.3z"
          />
          <path
            fill="#1a0889"
            d="M713 179.8l-3.7-2.2v-4.3l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#20078b"
            d="M713 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#9e1e97"
            d="M713 154.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#54039e"
            d="M713 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#400595"
            d="M713 128.5l-3.7-2.1V122l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#380692"
            d="M713 115.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#350691"
            d="M713 102.9l-3.7-2.2v-4.2l3.7-2.1 3.7 2v4.3z"
          />
          <path
            fill="#120888"
            d="M713 90l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2zM716.7 199l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#5d02a2"
            d="M716.7 186.2L713 184v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#180889"
            d="M716.7 173.3l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#c44180"
            d="M716.7 160.5l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#8e149d"
            d="M716.7 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#340691"
            d="M716.7 135l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#30078f"
            d="M716.7 122.1L713 120v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#310690"
            d="M716.7 109.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#54039e"
            d="M716.7 96.5l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#0d0887"
            d="M716.7 83.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#6900a8"
            d="M720.4 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#ea7a57"
            d="M720.4 154.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#f3eb27"
            d="M720.4 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#420596"
            d="M720.4 128.5l-3.7-2.1V122l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#20078b"
            d="M720.4 115.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#2a078e"
            d="M720.4 102.9l-3.7-2.2v-4.2l3.7-2.1 3.7 2v4.3z"
          />
          <path
            fill="#300690"
            d="M720.4 90l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#190889"
            d="M724 173.3l-3.6-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#7807a4"
            d="M724 160.5l-3.6-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#9a1c99"
            d="M724 147.7l-3.6-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#7405a5"
            d="M724 135l-3.6-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#22078b"
            d="M724 122.1l-3.6-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#390693"
            d="M724 109.3l-3.6-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#1b088a"
            d="M724 96.5l-3.6-2.1V90l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#140888"
            d="M724 83.7l-3.6-2.2v-4.2L724 75l3.7 2.2v4.2z"
          />
          <path
            fill="#1b088a"
            d="M727.8 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#ce4d76"
            d="M727.8 154.1L724 152v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#28078d"
            d="M727.8 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2f078f"
            d="M727.8 128.5l-3.7-2.1V122l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1c088a"
            d="M727.8 115.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#2d078f"
            d="M727.8 102.9l-3.7-2.2v-4.2l3.7-2.1 3.7 2v4.3z"
          />
          <path
            fill="#1c088a"
            d="M727.8 90l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M727.8 77.3L724 75V71l3.7-2.2 3.7 2.2V75z"
          />
          <path
            fill="#160889"
            d="M727.8 51.6l-3.7-2v-4.4l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#1a0889"
            d="M731.5 160.5l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#ca497a"
            d="M731.5 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#6101a4"
            d="M731.5 135l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#3a0693"
            d="M731.5 122.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#1c088a"
            d="M731.5 109.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#4d049b"
            d="M731.5 96.5l-3.7-2.1V90l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#1c088a"
            d="M731.5 83.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0d0887"
            d="M731.5 70.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#20078b"
            d="M731.5 58l-3.7-2v-4.4l3.7-2 3.7 2V56z"
          />
          <path
            fill="#1c088a"
            d="M731.5 45.2l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0e0887"
            d="M735.2 167l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#840fa0"
            d="M735.2 154.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#6002a3"
            d="M735.2 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3zM735.2 128.5l-3.7-2.1V122l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#24078c"
            d="M735.2 115.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#190889"
            d="M735.2 102.9l-3.7-2.2v-4.2l3.7-2.1 3.7 2v4.3z"
          />
          <path
            fill="#28078d"
            d="M735.2 90l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#1f078a"
            d="M735.2 77.3l-3.7-2.2V71l3.7-2.2 3.7 2.2V75z"
          />
          <path
            fill="#110888"
            d="M735.2 64.5l-3.7-2.2V58l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#140888"
            d="M735.2 38.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#c03c84"
            d="M738.9 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#b42e8e"
            d="M738.9 135l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#2e078f"
            d="M738.9 122.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#3d0694"
            d="M738.9 109.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#1f078b"
            d="M738.9 96.5l-3.7-2.1V90l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#320690"
            d="M738.9 83.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#150888"
            d="M738.9 70.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#5903a0"
            d="M738.9 58l-3.7-2v-4.4l3.7-2 3.7 2V56z"
          />
          <path
            fill="#1c088a"
            d="M738.9 45.2l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M738.9 32.4l-3.7-2.1V26l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#110888"
            d="M742.6 154.1l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#5c02a2"
            d="M742.6 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#400596"
            d="M742.6 128.5l-3.7-2.1V122l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M742.6 115.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2v4.4z"
          />
          <path
            fill="#440597"
            d="M742.6 102.9l-3.7-2.2v-4.2l3.7-2.1 3.7 2v4.3z"
          />
          <path
            fill="#2b078e"
            d="M742.6 90l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#1e078a"
            d="M742.6 77.3l-3.7-2.2V71l3.7-2.2 3.7 2.2V75z"
          />
          <path
            fill="#25078c"
            d="M742.6 64.5l-3.7-2.2V58l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#160888"
            d="M742.6 51.6l-3.7-2v-4.4l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#150888"
            d="M742.6 38.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#100887"
            d="M746.3 147.7l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#26078c"
            d="M746.3 135l-3.7-2.2v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#3b0693"
            d="M746.3 96.5l-3.7-2.1V90l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#180889"
            d="M746.3 83.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#1c088a"
            d="M746.3 70.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#1b088a"
            d="M746.3 58l-3.7-2v-4.4l3.7-2 3.7 2V56z"
          />
          <path
            fill="#150888"
            d="M746.3 45.2l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#140888"
            d="M750 141.3l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#390693"
            d="M750 90l-3.7-2v-4.3l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#310690"
            d="M750 77.3l-3.7-2.2V71l3.7-2.2 3.7 2.2V75z"
          />
          <path
            fill="#1a0889"
            d="M750 64.5l-3.7-2.2V58l3.7-2 3.7 2v4.3z"
          />
          <path
            fill="#0e0887"
            d="M750 51.6l-3.7-2v-4.4l3.7-2 3.7 2v4.3zM750 38.8l-3.7-2.1v-4.3l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#0f0887"
            d="M753.7 147.7l-3.7-2.1v-4.3l3.7-2.1 3.6 2.1v4.3z"
          />
          <path
            fill="#0d0887"
            d="M753.7 96.5l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.3z"
          />
          <path
            fill="#400596"
            d="M753.7 83.7l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#160888"
            d="M753.7 70.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#100887"
            d="M753.7 58l-3.7-2v-4.4l3.7-2 3.7 2V56z"
          />
          <path
            fill="#0f0887"
            d="M753.7 45.2l-3.7-2v-4.4l3.7-2.1 3.7 2.1v4.3z"
          />
          <path
            fill="#150888"
            d="M757.4 90l-3.7-2v-4.3l3.6-2.2 3.8 2.2v4.2z"
          />
          <path
            fill="#480498"
            d="M757.4 77.3l-3.7-2.2V71l3.6-2.2 3.8 2.2V75z"
          />
          <path
            fill="#0d0887"
            d="M757.4 64.5l-3.7-2.2V58l3.6-2 3.8 2v4.3z"
          />
          <path
            fill="#1e078a"
            d="M757.4 51.6l-3.7-2v-4.4l3.6-2 3.8 2v4.3z"
          />
          <path
            fill="#2b078e"
            d="M761 83.7l-3.7-2.2v-4.2L761 75l3.7 2.2v4.2z"
          />
          <path
            fill="#4a049a"
            d="M761 70.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
          <path
            fill="#0e0887"
            d="M761 58l-3.7-2v-4.4l3.7-2 3.7 2V56z"
          />
          <path
            fill="#340691"
            d="M764.8 77.3L761 75V71l3.6-2.2 3.7 2.2V75z"
          />
          <path
            fill="#2e078f"
            d="M764.8 64.5l-3.7-2.2V58l3.6-2 3.7 2v4.3z"
          />
          <path
            fill="#4b049a"
            d="M768.5 70.9l-3.7-2.2v-4.2l3.7-2.2 3.7 2.2v4.2z"
          />
        </g>
        <g
          id="hex-legend"
          transform="translate(110 29.7)"
        >
          <path
            d="M454.7 19.9l3.5 6.1h7.2l3.5-6.1-3.5-6.1h-7.2z"
            style="isolation:isolate"
            fill="#f5e12a"
            class="hex"
          />
          <path
            d="M432.5 19.9L436 26h7l3.6-6.1-3.5-6.1H436z"
            style="isolation:isolate"
            fill="#fcad35"
            class="hex"
          />
          <path
            d="M410.3 19.9L414 26h7.1l3.6-6.1-3.6-6.1h-7.1z"
            style="isolation:isolate"
            fill="#ed8053"
            class="hex"
          />
          <path
            d="M388.1 19.9l3.6 6.1h7.1l3.6-6.1-3.6-6.1h-7.1z"
            style="isolation:isolate"
            fill="#d8596b"
            class="hex"
          />
          <path
            d="M343.8 19.9l3.5 6.1h7.1l3.6-6.1-3.6-6.1h-7z"
            style="isolation:isolate"
            fill="#96199a"
            class="hex"
          />
          <path
            d="M366 19.9l3.5 6.1h7.1l3.6-6.1-3.6-6.1h-7z"
            style="isolation:isolate"
            fill="#b93488"
            class="hex"
          />
          <path
            d="M321.6 19.9L325 26h7.2l3.5-6.1-3.5-6.1H325z"
            style="isolation:isolate"
            fill="#6101a4"
            class="hex"
          />
          <path
            d="M299.4 19.9L303 26h7.1l3.6-6.1-3.6-6.1H303z"
            style="isolation:isolate"
            fill="#2f068f"
            class="hex"
          />
          <path
            fill="#141414"
            class="hex"
            d="M277.2 19.9l3.6 6.1h7.1l3.6-6.1-3.6-6.1h-7.1z"
          />
          <path
            d="M443.6 13.6l3.5 6.1h7.1l3.6-6-3.6-6.2h-7z"
            style="isolation:isolate"
            fill="#f9c830"
            class="hex"
          />
          <path
            d="M421.4 13.6l3.6 6.1h7.1l3.6-6-3.6-6.2H425z"
            style="isolation:isolate"
            fill="#f59545"
            class="hex"
          />
          <path
            d="M399.2 13.6l3.6 6.1h7l3.6-6-3.5-6.2h-7.1z"
            style="isolation:isolate"
            fill="#e56e5d"
            class="hex"
          />
          <path
            d="M377 13.6l3.6 6.1h7l3.6-6-3.5-6.2h-7.1z"
            style="isolation:isolate"
            fill="#c9477a"
            class="hex"
          />
          <path
            d="M332.7 13.6l3.5 6.1h7.1l3.6-6-3.6-6.2h-7z"
            style="isolation:isolate"
            fill="#7c09a2"
            class="hex"
          />
          <path
            d="M354.8 13.6l3.6 6.1h7.1l3.6-6-3.6-6.2h-7z"
            style="isolation:isolate"
            fill="#aa2692"
            class="hex"
          />
          <path
            d="M310.5 13.6l3.5 6.1h7.1l3.6-6-3.5-6.2H314z"
            style="isolation:isolate"
            fill="#4c049a"
            class="hex"
          />
          <path
            fill="#0d0887"
            class="hex"
            stroke-linecap="square"
            d="M288.3 13.6l3.6 6.1h7.1l3.6-6-3.6-6.2h-7.1z"
          />
          <path
            d="M465.8 13.6l3.5 6.1h7.1l3.6-6-3.6-6.2h-7z"
            style="isolation:isolate"
            fill="#f0f821"
            class="hex"
          />
          <text
            transform="translate(200 -10)"
            style="isolation:isolate"
            font-weight="550"
            fill="#ffffff"
            font-size="1.5em"
          >
            Water temperature observations
          </text>
          <text
            transform="translate(260 19.7)"
            style="isolation:isolate"
            fill="#ffffff"
            font-size="1em"
            class="legendAxis"
          >
            0
          </text>
          <text
            transform="translate(487 19.7)"
            style="isolation:isolate"
            fill="#ffffff"
            class="legendAxis"
          >
            200,000
          </text>
        </g>
      </svg>
    </div>
    <div class="container-fluid">
      <div
        id="filter_row"
        class="row"
      >
        <div>
          <svg>
            <filter
              id="shadow1"
              style="width: 0px; height:0px"
            >
              <feDropShadow
                dx="0"
                dy="0"
                stdDeviation="1.5"
                flood-color="#ffffff"
              />
            </filter>
          </svg>
        </div>
        <div>
          <svg>
            <filter
              id="shadow2"
              style="width: 0px; height:0px"
            >
              <feDropShadow
                dx="0"
                dy="0"
                stdDeviation="5"
                flood-color="#c9c9c9"
              />
            </filter>
          </svg>
        </div>
        <div>
          <svg>
            <filter
              id="shadow3"
              style="width: 0px; height:0px"
            >
              <feDropShadow
                dx="0"
                dy="0"
                stdDeviation="5"
                flood-color="#5c5c5c"
              />
            </filter>
          </svg>
        </div>
      </div>
    </div>
  </section>
</template>

<script>
  import * as d3Base from "d3";
  import {geoScaleBar, geoScaleBottom, geoScaleTop, geoScaleKilometers, geoScaleMiles} from "d3-geo-scale-bar";
  import * as topojson from "topojson-client";
  import * as ss from 'simple-statistics';
  import monitoringText from "./../../assets/text/monitoringText";
  import MonitoringLineChart from "./../../components/2-Monitoring-Mobile/MonitoringLineChart";
  import MatrixExplainerSpace from "./../../components/2-Monitoring-Mobile/MatrixExplainerSpace";
  import MatrixExplainerTime from "./../../components/2-Monitoring-Mobile/MatrixExplainerTime";
  import MatrixExplainerColor from "./../../components/2-Monitoring-Mobile/MatrixExplainerColor";
  import DummyMatrix from "./../../components/2-Monitoring/DummyMatrix";

  export default {
      name: 'Set2',
      components: {
        MonitoringLineChart,
        MatrixExplainerSpace,
        MatrixExplainerTime,
        MatrixExplainerColor,
        DummyMatrix,
        Chapter2Icons1: () => import( /* webpackPreload: true */ /*webpackChunkName: "chapter2icons1"*/ "./../../components/2-Monitoring/Chapter2Icons1"),
        Chapter2Icons2: () => import( /* webpackPreload: true */ /*webpackChunkName: "chapter2icons2"*/ "./../../components/2-Monitoring/Chapter2Icons2")
      },
      data() {
        return {
          publicPath: process.env.BASE_URL, // this is need for the data files in the public folder, this allows the application to find the files when on different deployment roots
          d3: null, // this is used so that we can assign d3 plugins to the d3 instance
          // global variables instantiated in next section
          timestep_c2p2: 'year',
          myGroups_c2p2: null,
          myVars_c2p2: null,
          myGroups_c2p3: null,
          myVars_c2p3: null,
          temporalCountMax_c2p2: null,
          timestep_c2p3: 'date',
          chart_margin: {top: 30, right: 70, bottom: 45, left: 10},
          chart_width: null, // this will get a value in the mounted hook
          chart_height: null, // this will get a value in the mounted hook
          matrix_margin: {top: 50, right: 15, bottom: 20, left: 35},
          matrix_width_c2: null, // this will get a value in the mounted hook
          matrix_height_c2: null, // this will get a value in the mounted hook
          scaleBarTop_c2: null,
          scaleBarBottom_c2: null,
          map_c2p1: null,
          map_c2p2: null,
          map_c2p3: null,
          map_width: null,
          map_height: null,
          map_margin: null,
          map_path_c2: null,
          widthScale_c2: null,
          segments: null,
          segment_id_list: [],
          segmentDict: {},
          bay: null,
          reservoirs: null,
          
          //import text
          text: monitoringText.textContents
        }
      },
      mounted() {
        this.d3 = Object.assign(d3Base, { geoScaleBar, geoScaleBottom, geoScaleTop, geoScaleKilometers, geoScaleMiles }); // this loads d3 plugins with webpack

        this.chart_width = 500 - this.chart_margin.left - this.chart_margin.right;
        this.chart_height = window.innerHeight * 0.25 - this.chart_margin.top - this.chart_margin.bottom;
        this.matrix_width_c2 = 700 - this.matrix_margin.left - this.matrix_margin.right;
        this.matrix_height_c2 = window.innerHeight * 0.9 - this.matrix_margin.top - this.matrix_margin.bottom;
      
        this.setPanels();  // begin script when window loads
      },
      methods: {
        setPanels() {
          const self = this;

          // // CHAPTER 2 BAR CHART
          // write function to process data for stacked bar chart in chapter 2 panel 1
          function type(d, i, columns) {
            for (i=1, t=0; i < columns.length; ++i)
                // for each row, which is d, cycle through the columns
              t += d[columns[i]] = +d[columns[i]];
            // create a new column in the data titled "total"
            d.total = t;
            return d;
          }

          // // CHAPTER 2 MAPS
          // set universal map frame dimensions for Ch 2 panel maps
          this.map_width = 400;
          this.map_height = window.innerHeight * 0.5;
          this.map_margin = {top: 15, right: 5, bottom: 5, left: 5};

          //create Albers equal area conic projection centered on DRB for ch2 maps
          let map_projection_c2 = self.d3.geoAlbers()
              .center([0, 40.688894445]) //40.658894445
              .rotate([75.533333335, 0, 0]) //75.363333335 centered, 76.2 far right, 74.6 far left
              .parallels([39.9352537033, 41.1825351867])
              .scale(this.map_height * 16)
              .translate([this.map_width / 2, this.map_height / 2]);

          this.map_path_c2 = self.d3.geoPath()
              .projection(map_projection_c2);

          // create scale bar for ch 2 maps
          this.scaleBarTop_c2 = self.d3.geoScaleBar()
              .orient(self.d3.geoScaleBottom)
              .projection(map_projection_c2)
              .size([this.map_width, this.map_height])
              .left(.25) // .15 centered, .45 far right
              .top(.96)
              .units(self.d3.geoScaleKilometers)
              .distance(50)
              .label("50 kilometers")
              .labelAnchor("start")
              .tickSize(null)
              .tickValues(null);

          this.scaleBarBottom_c2 = self.d3.geoScaleBar()
              .orient(self.d3.geoScaleTop)
              .projection(map_projection_c2)
              .size([this.map_width, this.map_height])
              .left(.25) // .15 centered, .45 far right
              .top(.97)
              .units(self.d3.geoScaleMiles)
              .distance(25)
              .label("25 miles")
              .labelAnchor("start")
              .tickSize(null)
              .tickValues(null);

          //create new svg container for the ch 2 panel 1 map
          this.map_c2p1 = self.d3.select("#DRB_map_c2p1")
              .append("svg")
              .attr("class", "map_c2p1 map")
              .attr("id", "drb_map")
              .attr("viewBox", [0, 0, (this.map_width + this.map_margin.right + this.map_margin.left),
                (this.map_height + this.map_margin.top + this.map_margin.bottom)].join(' '));

          //create new svg container for the ch 2 panel 2 map
          this.map_c2p2 = self.d3.select("#DRB_map_c2p2")
              .append("svg")
              .attr("class", "map_c2p2 map")
              .attr("viewBox", [0, 0, (this.map_width + this.map_margin.right + this.map_margin.left),
                (this.map_height + this.map_margin.top + this.map_margin.bottom)].join(' '));
          
          // create new svg container for the ch 2 panel 3 map
          this.map_c2p3 = self.d3.select("#DRB_map_c2p3")
              .append("svg")
              .attr("class", "map_c2p3 map")
              .attr("viewBox", [0, 0, (this.map_width + this.map_margin.right + this.map_margin.left),
                (this.map_height + this.map_margin.top + this.map_margin.bottom)].join(' '));
          

          // // LOAD IN DATA AND CALL SCRIPTS IN STAGES
          self.loadData_1();
        },
        loadData_1() {
          const self = this;

          // First set of data and scripts to generate all Ch2 maps and Ch2 panel 1 bar chart
          let promises_1 = [self.d3.csv("data/segment_maflow.csv"),
            self.d3.csv(self.publicPath + "data/source_annual_count.csv", self.type), // process data for stacked bar chart as it is loaded
            self.d3.json(self.publicPath + "data/topojson/segment_data.json"),
            self.d3.json(self.publicPath + "data/topojson/unique_drb_sites.json"),
            self.d3.json(self.publicPath + "data/topojson/DelawareBay.json"),
            self.d3.json(self.publicPath + "data/topojson/reservoirs.json")
          ];
          Promise.all(promises_1).then(self.callback_1);
        },
        loadData_2() {
          const self = this;

          // Second set of data and scripts to generate Ch2 panel 2 matrix
          let promises_2 = [
            self.d3.csv(self.publicPath + "data/matrix_annual_obs.csv"),
            self.d3.csv(self.publicPath + "data/obs_annual_count.csv")
          ];

          Promise.all(promises_2).then(self.callback_2);
        },
        loadData_3() {
          const self = this;

          // Third set of data and scripts to generate Ch2 panel 3 matrix
          let promises_3 = [
            self.d3.csv(self.publicPath + "data/matrix_daily_2019_obs.csv"),
            self.d3.csv(self.publicPath + "data/obs_daily_count_2019.csv")
          ];
          Promise.all(promises_3).then(self.callback_3); 
        },
        // Function to process data for stacked bar chart
        type(d, i, columns) {
          let t = 0;
          for (i = 1, t; i < columns.length; ++i)
            // for each row, which is d, cycle through the columns
            t += d[columns[i]] = +d[columns[i]];
          // create a new column in the data titled "total"
          d.total = t;
          return d;
        },
        // set up Ch2 panel 1 map and Ch2 panel 1 bar chart
        callback_1(data) {
          const self = this;

          let csv_flow = data[0];
          let csv_source_count = data[1];
          let json_segments = data[2];
          let json_unique_sites = data[3];
          let json_bay = data[4];
          let json_reservoirs = data[5];

          // translate topojsons
          this.segments = topojson.feature(json_segments, json_segments.objects.segment_data).features; 
          let sites = topojson.feature(json_unique_sites, json_unique_sites.objects.unique_drb_sites).features; 
          this.bay = topojson.feature(json_bay, json_bay.objects.NHDWaterbody_DelawareBay_pt6per_smooth);
          this.reservoirs = topojson.feature(json_reservoirs, json_reservoirs.objects.reservoirs).features; 

          // join csv flow data to geojson segments
          // ch 2 map segments
          this.segments = this.joinData(this.segments, csv_flow);

          // set stroke width scale
          // for ch 2 map segments
          this.widthScale_c2 = this.makeWidthScale_c2(csv_flow);

          // build dictionary
          this.segments.forEach(function(segment) {
            self.segmentDict[segment.properties.seg_id_nat]={}
            self.segmentDict[segment.properties.seg_id_nat]['avg_ann_flow'] = segment.properties.avg_ann_flow
            self.segmentDict[segment.properties.seg_id_nat]['total_count'] = segment.properties.total_count
            self.segmentDict[segment.properties.seg_id_nat]['year_count'] = {}
            let year_key = null;
            for (year_key in segment.properties.year_count) {
              self.segmentDict[segment.properties.seg_id_nat]['year_count'][year_key] = segment.properties.year_count[year_key]
            }
            self.segmentDict[segment.properties.seg_id_nat]['day_count'] = {}
            let day_key = null;
            for (day_key in segment.properties.day_count) {
              self.segmentDict[segment.properties.seg_id_nat]['day_count'][day_key] = segment.properties.day_count[day_key]
            }
          })

          // Set up Ch 2 panel 1 -
          // set up panel 1 map
          this.setMap_c2p1(sites);
          // add bar chart to panel 1
          this.setBarChart_c2p1(csv_source_count);

          // LOAD SECOND SET OF DATA
          this.loadData_2();
        },
        // Set up  Ch2 panel 2 map and Ch 2 panel 2 matrix
        callback_2(data) {
          let csv_matrix_annual = data[0];
          let csv_annual_count = data[1];

          // Set up Ch 2 panel 2 -
          // set up panel 2 map
          this.setMap_c2p2();
          // create panel 2 matrix
          this.createMatrix_c2p2(csv_matrix_annual, csv_annual_count);

          // LOAD THIRD AND FINAL SET OF DATA
          // this.loadData_3();
        },
        // Set up  Ch2 panel 3 map and Ch 2 panel 3 matrix
        callback_3(data) {
          let csv_matrix_daily_2019 = data[0];
          let csv_daily_count_2019 = data[1];

          // Set up Ch 2 panel 3 -
          // set up panel 3 map
          this.setMap_c2p3();
          // create panel 3 matrix
          this.createMatrix_c2p3(csv_matrix_daily_2019, csv_daily_count_2019);
        },
        // Join modeled flow data to simplified segment geometries
        joinData(segments, csv_flow) {
          // loop through csv to assign each set of csv attribute values to a geojson polyline
          for (let i=0; i<csv_flow.length; i++){
            // define the current segment
            let csvSegment = csv_flow[i];
            // define the csv attribute field to use as the key
            let csvKey = csvSegment.seg_id_nat;
            // Loop through the geojson segments
            for (let a=0; a<segments.length; a++){
              // Pull the properties for the current geojson segment
              let geojsonProps = segments[a].properties;
              // set the geojson properties field to use as the key
              let geojsonKey = segments[a].properties.seg_id_nat;
              // where primary keys match, transfer csv data to geojson properties object
              if (geojsonKey == csvKey){
                // assign all attributes and values
                let val = parseFloat(csvSegment['avg_ann_flow'])
                geojsonProps['avg_ann_flow'] = val;
              };
            };

          };
          return segments;
        },
        // Make width scale for stream segments based on modeled flow
        makeWidthScale_c2(data) {
          const self = this;
          // // graduated scale
          // set width classes
          let widthClasses = [
            0.7,
            1.1,
            1.2,
            1.6,
            1.9,
            2.2,
            2.5,
            2.9,
            3.4,
            3.7
          ]; //[            0.6,            0.9,            1.2,            1.4,            1.7,            2,            2.3,            2.6,            3,            3.5,          ]

          // // graduated scale
          // create width scale generator for natural breaks classification
          let widthScale = this.d3.scaleThreshold()
              .range(widthClasses);

          // build array of all values of flow
          let domainArrayFlow = [];
          for (let i = 0; i < data.length; i++) {
            let val = parseFloat(data[i]['avg_ann_flow']);
            domainArrayFlow.push(val);
          }

          // graduated scale
          // cluster data using ckmeans clustering algoritm to create natural breaks
          let clusters = ss.ckmeans(domainArrayFlow, 10);

          // graduated scale
          // reset domain array to cluster minimumns
          domainArrayFlow = clusters.map(function(d){
            return self.d3.min(d);
          });

          // // graduated scale
          // remove first value from domain array to create class breakpoints
          domainArrayFlow.shift();

          // // graduated scale
          // assign array of last 9 cluster minimums as domain
          widthScale.domain(domainArrayFlow);

          // // return calculated scale
          return widthScale;
        },
        setMap_c2p1(sites) {
          const self = this;

          ////////// BAY //////////
          // define bay group (ONCE PER CHAPTER)
          let drb_bay = self.map_c2p1.append('defs').append("g").attr("id","drbBay");
          // append bay path to bay group (ONCE PER CHAPTER)
          drb_bay.append("path")
              .datum(self.bay)
              .attr("class", "delaware_bay")
              .attr("d", self.map_path_c2)
          // append bay group to c2p1 map  (ONCE PER MAP)
          self.map_c2p1.append("g").attr("class","c2p1")
            .append("use").attr("xlink:href","#drbBay")
          /////////////////////////

          ////////// RESERVIORS //////////
          // define reservoir group  (ONCE PER CHAPTER)
          let drb_reservoirs = self.map_c2p1.append('defs').append("g").attr("id","drbReservoirs");
          // append reservoir paths to reservoir group  (ONCE PER CHAPTER)
          drb_reservoirs.selectAll(".reservoirs")
              // bind polygons to each element to be created
              .data(self.reservoirs)
              // create an element for each datum
              .enter()
              // append each element to the svg as a path element
              .append("path")
              // project polygons
              .attr("d", self.map_path_c2)
              // assign class for styling
              .attr("class", function(d){
                return "reservoirs res_id" + d.properties.GRAND_ID
              })
              // set stroke width so that polygons appear larger
              .style("stroke-width", 0.75)
          // append reservoir group to c2p1 map  (ONCE PER MAP)
          self.map_c2p1.append("g").attr("class","c2p1")
		        .append("use").attr("xlink:href","#drbReservoirs")
          ////////////////////////////////          

          ////////// SEGMENTS //////////
          // build array of all segment ids of segments (previously: that HAVE DATA)
          let i;
          for (i=0; i<self.segments.length; i++){
            // let segment_obs_count = parseFloat(self.segments[i].properties.total_count);
            // if (segment_obs_count > 0) {
              // self.segmentsWithData.push(self.segments[i].properties.seg_id_nat);
            // }
            self.segment_id_list.push(self.segments[i].properties.seg_id_nat);
          };
          // // define group of segments WITHOUT DATA (ONCE PER CHAPTER)
          // let drb_segments = self.map_c2p1.append('defs').append("g").attr("id", "drbSegments");
          // // append paths of segments WITHOUT DATA to segment group  (ONCE PER CHAPTER)
          // drb_segments.selectAll(".river_segments")
          //     // bind segments to each element to be created
          //     .data(self.segments)
          //     // create an element for each datum
          //     .enter()
          //     // filter to ONLY segments WITHOUT data
          //     .filter(function (d){
          //       return d.properties.total_count == 0
          //     })
          //     // append each element to the svg as a path element
          //     .append("path")
          //     // assign class for styling
          //     .attr("class", function(d){
          //       return 'river_segments seg' + d.properties.seg_id_nat
          //     })
          //     // // assign classes for c2p2 interaction
          //     // .attr("class", function(d) {
          //     //   let seg_class = 'river_segments seg'
          //     //   seg_class += d.properties.seg_id_nat
          //     //   let key = null;
          //     //   for (key in d.properties.year_count) {
          //     //     if (d.properties.year_count[key] > 0) {
          //     //       seg_class += " " + self.timestep_c2p2 + key
          //     //     }
          //     //   }
          //     //   return seg_class
          //     // })
          //       // project segments
          //     .attr("d", self.map_path_c2)
          //     // add stroke width based on widthScale function
          //     .style("stroke-width", function(d){
          //       let value = d.properties['avg_ann_flow'];
          //       if (value){
          //         return self.widthScale_c2(value);
          //       } else {
          //         return "#ccc";
          //       }
          //     })
          //     // set fill to none
          //     .style("fill", "None")
          // // append group of segments WITHOUT data to c2p1 map (ONCE PER MAP)
          // self.map_c2p1.append("g").attr("class","c2p1_segments")
          //   .style("stroke", "#285C70")
          //   .append("use").attr("xlink:href","#drbSegments")
          

          //////////////////////////////
          // Define individual group <use> elements FOR EACH SEGMENT
          let segment_id = null;
          for (segment_id in self.segmentDict) {
          // self.segmentsWithData.forEach(function(segment_id) {
            // define group of single segment (ONCE PER CHAPTER, PER SEGMENT)
            let segment_group = self.map_c2p1.append('defs').append("g").attr("id", function(d) {return 'seg' + segment_id});
            // append path of single segment to the segment group  (ONCE PER CHAPTER)
            segment_group.selectAll(".river_segment")
                // bind segment to each element to be created
                .data(self.segments)
                // create an element for each datum
                .enter()
                // filter to ONLY the current segment
                .filter(function (d){
                  return d.properties.seg_id_nat == segment_id
                })
                // append the element to the svg as a path element
                .append("path")
                // assign class for styling
                .attr("class", function(d){
                  return 'river_segments seg' + segment_id
                })
                // project segments
                .attr("d", self.map_path_c2)
                // set fill to none
                .style("fill", "None")
            // append group of single segment to c2p1 map (ONCE PER MAP)
            let href_id = '#seg' + segment_id
            self.map_c2p1.append("g").attr("class",function(d) {return 'c2p1 seg' + segment_id})
              .style("stroke", "#285C70")
              // add stroke width based on widthScale function
              .style("stroke-width", function(d){
                let value = self.segmentDict[segment_id]['avg_ann_flow'];
                if (value){
                  return self.widthScale_c2(value);
                } else {
                  return "#ccc";
                }
              })
              .append("use").attr("xlink:href", href_id)
          } //)

          // add drb sites to map (directly b/c don't need to be re-used elsewhere in chapter)
          let drb_sites = self.map_c2p1.selectAll(".obs_sites")
              // bind points to each element to be created
              .data(sites)
              // create an element for each datum
              .enter()
              // append each element to the svg as a circle element
              .append("path")
              // project points and SET SIZE
              .attr("d", self.map_path_c2.pointRadius(1.1))
              // assign class for styling
              .attr("class", function(d) {
                if (d.properties.source === 'USGS'){
                  return "c2p1 obs_sites USGS_station"
                } else {
                  return "c2p1 obs_sites Other_station"
                }
              })

          // add scale bar
          self.map_c2p1.append("g").call(self.scaleBarTop_c2);
          self.map_c2p1.append("g").call(self.scaleBarBottom_c2);
        },
        setBarChart_c2p1(csv_source_count) {
          // append svg to div
          let svgChart = this.d3.select("#barChart_c2p1")
              .append("svg")
              .attr("viewBox", [0, 0, (this.chart_width + this.chart_margin.right + this.chart_margin.left),
                (this.chart_height + this.chart_margin.top + this.chart_margin.bottom)].join(' '))
              .attr("class", "c2p1 barChart chart")

          let g = svgChart.append("g")
              .attr("class", "c2p1 transformedBarChart")
              .attr("transform", "translate(" + this.chart_margin.left + "," + this.chart_margin.top + ")");

          // define x
          let x = this.d3.scaleBand()
              .rangeRound([0, this.chart_width])
              // set padding between bars
              .padding(0.1)

          // make y scale
          let y = this.d3.scaleLinear()
              .range([this.chart_height, 0]);

          // set colors
          let z = this.d3.scaleOrdinal()
              .range(["#e9eced", "#FDAD32"]); // USGS, other

          // stack to create an array for each of the series in the data
          let stack = this.d3.stack();

          // load processed data
          let data = csv_source_count

          // set x domain - create an array of the two site agency categories
          x.domain(data.map(function(d) { return d.year; }));

          // set y domain
          y.domain([0, this.d3.max(data, function(d) { return d.total })]).nice();

          // remove the year column from the data
          z.domain(data.columns.slice(1));

          // set up the series
          g.selectAll(".series")
              // keys for the stack are all but the first column
              .data(stack.keys(data.columns.slice(1))(data))
              // each agency series is given its own g
              .enter().append("g")
              .attr("class", "series")
              // keys passed to the z domain to be assigned a color
              .attr("fill", function(d) { return z(d.key); })
              .selectAll("rect")
              .data(function(d) { return d;})
              .enter().append("rect")
              // set x attribute based on year
              .attr("x", function(d) { return x(d.data.year); })
              // from the slice method d is a pair of coordinates, the upper and lower
              // bounds of the area to be displayed. This sets the upper y value
              .attr("y", function(d) { return y(d[1]); })
              // this calculates the height down from the starting point
              .attr("height", function(d) { return y(d[0]) - y(d[1]); })
              // calculate width for each band
              .attr("width", x.bandwidth())

          // place the x axis
          g.append("g")
              .attr("class", "c2p1 chartAxis bottom")
              .attr("transform", "translate(0," + this.chart_height + ")")
              .call(this.d3.axisBottom(x).tickValues(['1960', '1970', '1980', '1990', '2000', '2010', '2019' ]).tickSize(0)) /* ['1980', '1985', '1990', '1995', '2000', '2005', '2010', '2015', '2019' ] */
              .select(".domain").remove()

          // place and rotate x axis labels
          g.selectAll('text')
              .attr("y", 6)
              .attr("x", -27)
              .attr("dy", ".35em")
              .attr("transform", "rotate(-45)")
              .attr("text-anchor", "start")


          // place the y axis and format tick labels
          g.append("g")
              .attr("class", "c2p1 chartAxis right")
              // offset axis slightly to align closer to last bar
              .attr("transform", "translate(" + this.chart_width * 0.93 + "," + 0 + ")")
              // give ticks k number format and set their size to cover the width of the chart
              .call(this.d3.axisRight(y).ticks(2, "s").tickSize(- this.chart_width))
              .select(".domain").remove()

          // place and rotate the y axis label
          svgChart.selectAll(".chartAxis.right")
              .append("text")
              .attr("y", 40)
              // offset to (roughly) center on y axis
              .attr("x", -this.chart_height / 2)
              .attr("text-anchor", "middle")
              .attr("class", "c2p1 chartAxisText")
              .text("Unique temperature measurements")
              //.attr("transform", "translate(25, 0)")
              .attr("transform", "rotate(-90)")
              

          // set the tick mark lines to background color
          svgChart.selectAll(".tick line").attr("stroke", "#141414").attr("stroke-width", 0.5) //.attr("stroke-dasharray", ("1, 2"))

          //  make the legend
          let legend = g.selectAll(".legend")
              // include all but the first column in the legend
              .data(data.columns.slice(1).reverse())
              // append an item for each series
              .enter().append("g")
              .attr("class", "c2p1 barChart legend")
              .attr("transform", function(d, i) {
                return "translate(" + 0 + "," + ((i+1.5) * 15) + ")";
              })

          // append a rectangle for each series
          legend.append("rect")
              .attr("x", 14)
              .attr("width", 7)
              .attr("height", 7)
              // set color based on z attribute
              .attr("fill", z);

          // append a label for each rectangle
          legend.append("text")
              .attr("x", 27)
              .attr("y", 4)
              .attr("dy", ".35em")
              .attr("text-anchor", "start")
              // set text as column name
              .text(function(d) { return d; });

        },
        setMap_c2p2(){
          const self = this;

          // // Set up necessary elements for mousemove event within svg with viewBox
          // find root svg element
          let svg_map_c2p2 = document.querySelector('.map_c2p2');
          // create a SVGPoint for future math
          let pt_map_c2p2 = svg_map_c2p2.createSVGPoint();
          // function to get point in global SVG space
          function cursorPoint_c2p2(evt){
            pt_map_c2p2.x = evt.clientX; pt_map_c2p2.y = evt.clientY;
            return pt_map_c2p2.matrixTransform(svg_map_c2p2.getScreenCTM().inverse());
          }
          // create local variable to store point coordinates
          let loc_map_c2p2 = {x: 0, y: 0};
          // reset coordinates when mousemoves over map svg
          svg_map_c2p2.addEventListener('mousemove', function(evt){
            loc_map_c2p2 = cursorPoint_c2p2(evt);
          }, false);

          // // Add tooltip as text element appended to map svg, without coordinates
          // add tooltip to map svg
          let tooltip = self.map_c2p2.append("text")
              .attr("class", "c2p2 tooltip map")

          // // add drb segments to map BACKGROUND - for selection only
          self.segment_id_list.forEach(function(transparent_segment_id) {
          // let transparent_segment_id = null;
          // for (transparent_segment_id in self.segmentDict) {
            let href_id = '#seg' + transparent_segment_id
            self.map_c2p2.append("g")
              // // assign classes for c2p2 interaction
              .attr("class", function(d) {
                let seg_class = 'c2p2 segs_transparent seg'
                seg_class += transparent_segment_id
                let key = null;
                for (key in self.segmentDict[transparent_segment_id]['year_count']) {
                  if (self.segmentDict[transparent_segment_id]['year_count'][key] > 0) {
                    seg_class += " " + self.timestep_c2p2 + key
                  }
                }
                return seg_class
              })
              // set opacity to 0 so segments aren't visible but can be selected
              .style("opacity", 0)
              // set stroke color to background color
              .style("stroke", "#141414")
              // set stroke width to be large for selection
              .style("stroke-width", 6)
              // trigger interactions
              .on("mouseover", function(d) {
                self.mouseoverSeg_c2p2(transparent_segment_id, tooltip);
              })
              .on("mousemove", function(d) {
                // pass mouse coordinates
                let mouse_x = loc_map_c2p2.x
                let mouse_y = loc_map_c2p2.y
                self.mousemoveSeg_c2p2(transparent_segment_id, tooltip, mouse_x, mouse_y); 
              })
              .on("mouseout", function(d) {
                self.mouseoutSeg_c2p2(transparent_segment_id, tooltip);
              })
              .append("use").attr("xlink:href", href_id)
          })

          // use forEach loop over self.segmentsWithData array IF ONLY ADDING SEGMENTS WITH DATA
          // (HERE ADDING ALL, SO USE FOR LOOP over self.segmentDict built from self.segments)
          // (ACTUALLY, FOR M)
          // self.segmentsWithData.forEach(function(segment_id) {
          self.segment_id_list.forEach(function(segment_id) {
          // let segment_id = null;
          // for (segment_id in self.segmentDict) {
            let href_id = '#seg' + segment_id
            self.map_c2p2.append("g")
              .attr("class", function(d) {
                let seg_class = 'c2p2 river_segments seg'
                seg_class += segment_id
                let key = null;
                for (key in self.segmentDict[segment_id]['year_count']) {
                  if (self.segmentDict[segment_id]['year_count'][key] > 0) {
                    seg_class += " " + self.timestep_c2p2 + key
                  }
                }
                return seg_class
              })
              .style("stroke", "#285C70")
              // add stroke width based on widthScale function
              .style("stroke-width", function(d){
                let value = self.segmentDict[segment_id]['avg_ann_flow'];
                if (value){
                  return self.widthScale_c2(value);
                } else {
                  return "#ccc";
                }
              })
              // .on("mouseover", function(d) {
              //   self.mouseoverSeg_c2p2(segment_id, tooltip);
              // })
              // .on("mousemove", function(d) {
              //   // pass mouse coordinates
              //   let mouse_x = loc_map_c2p2.x
              //   let mouse_y = loc_map_c2p2.y
              //   self.mousemoveSeg_c2p2(segment_id, tooltip, mouse_x, mouse_y); 
              // })
              // .on("mouseout", function(d) {
              //   self.mouseoutSeg_c2p2(segment_id, tooltip);
              // })
              .append("use").attr("xlink:href", href_id)
          })

          // // add drb segments to map BACKGROUND - for selection only
          // let drb_segments_transparent = self.map_c2p2.selectAll(".segs_transparent")
          //     // bind segments to each element to be created
          //     .data(self.segments)
          //     // create an element for each datum
          //     .enter()
          //     // append each element to the svg as a path element
          //     .append("path")
          //     // assign class for styling
          //     .attr("class", function(d) {
          //       let transparent_seg_class = 'c2p2 segs_transparent'
          //       let key = null;
          //       for (key in d.properties.year_count) {
          //         if (d.properties.year_count[key] > 0) {
          //           transparent_seg_class += " " + self.timestep_c2p2 + key
          //         }
          //       }
          //       return transparent_seg_class
          //     })
          //     // project each element
          //     .attr("d", self.map_path_c2)
          //     // set stroke width to be large for selection
          //     .style("stroke-width", 6)
          //     // set stroke to background color
          //     .style("stroke", "#141414")
          //     // no fill
          //     .style("fill", "None")
          //     // set opacity to 0 so segments aren't visible but can be selected
          //     .style("opacity", 0)
          //     // trigger interactions
          //     .on("mouseover", function(d) {
          //       self.mouseoverSeg_c2p2(d, tooltip);
          //     })
          //     .on("mousemove", function(d) {
          //       // pass mouse coordinates
          //       let mouse_x = loc_map_c2p2.x
          //       let mouse_y = loc_map_c2p2.y
          //       self.mousemoveSeg_c2p2(d, tooltip, mouse_x, mouse_y); 
          //     })
          //     .on("mouseout", function(d) {
          //       self.mouseoutSeg_c2p2(d, tooltip);
          //     });

          // re-use bay group
          self.map_c2p2.append("g").attr("class","c2p2")
		        .append("use").attr("xlink:href","#drbBay")

          // // add delaware bay to map
          // let drb_bay = self.map_c2p2.append("path")
          //     // bind data to element
          //     .datum(self.bay)
          //     // assign class for styling
          //     .attr("class", "c2p2 delaware_bay")
          //     // project element
          //     .attr("d", self.map_path_c2);

          // re-use reservoirs group
          self.map_c2p2.append("g").attr("class","c2p2")
		        .append("use").attr("xlink:href","#drbReservoirs")

          // // add drb reservoirs to map
          // let drb_reservoirs = self.map_c2p2.selectAll(".reservoirs")
          //     // bind polygons to each element to be created
          //     .data(self.reservoirs)
          //     // create an element for each datum
          //     .enter()
          //     // append each element to the svg as a path element
          //     .append("path")
          //     // project polygons
          //     .attr("d", self.map_path_c2)
          //     // assign class for styling
          //     .attr("class", function(d){
          //       return "c2p2 reservoirs res_id" + d.properties.GRAND_ID
          //     })
          //     // set stroke width so that polygons appear larger
          //     .style("stroke-width", 0.75)

          // // re-use segments group
          // self.map_c2p2.append("g").attr("class","c2p2")
          //   .style("stroke", "#285C70")          
          //   // // trigger interactions
          //   // .on("mouseover", function(d) {
          //   //   self.mouseoverSeg_c2p2(d, tooltip);
          //   // })
          //   // .on("mousemove", function(d) {
          //   //   // pass mouse coordinates
          //   //   let mouse_x = loc_map_c2p2.x
          //   //   let mouse_y = loc_map_c2p2.y
          //   //   self.mousemoveSeg_c2p2(d, tooltip, mouse_x, mouse_y);
          //   // })
          //   // .on("mouseout", function(d) {
          //   //   self.mouseoutSeg_c2p2(d, tooltip);
          //   // })
          //   .append("use").attr("xlink:href","#drbSegments");
		        

          // // add drb segments to map
          // let drb_segments = self.map_c2p2.selectAll(".river_segments")
          //     // bind segments to each element to be created
          //     .data(self.segments)
          //     // create an element for each datum
          //     .enter()
          //     // append each element to the svg as a path element
          //     .append("path")
          //     // assign class for styling - based on segment id
          //     // and based on years in which each segment has data
          //     .attr("class", function(d) {
          //       let seg_class = 'c2p2 river_segments seg'
          //       seg_class += d.properties.seg_id_nat
          //       let key = null;
          //       for (key in d.properties.year_count) {
          //         if (d.properties.year_count[key] > 0) {
          //           seg_class += " " + self.timestep_c2p2 + key
          //         }
          //       }
          //       return seg_class
          //     })
          //     // project segments
          //     .attr("d", self.map_path_c2)
          //     // add stroke width based on widthScale function
          //     .style("stroke-width", function(d){
          //       let value = d.properties['avg_ann_flow'];
          //       return self.widthScale_c2(value);
          //     })
          //     // set fill to none
          //     .style("fill", "none")
          //     // trigger interactions
          //     .on("mouseover", function(d) {
          //       self.mouseoverSeg_c2p2(d, tooltip);
          //     })
          //     .on("mousemove", function(d) {
          //       // pass mouse coordinates
          //       let mouse_x = loc_map_c2p2.x
          //       let mouse_y = loc_map_c2p2.y
          //       self.mousemoveSeg_c2p2(d, tooltip, mouse_x, mouse_y);
          //     })
          //     .on("mouseout", function(d) {
          //       self.mouseoutSeg_c2p2(d, tooltip);
          //     });

          // add scale bar
          self.map_c2p2.append("g").call(self.scaleBarTop_c2)
          self.map_c2p2.append("g").call(self.scaleBarBottom_c2)
        },
        createMatrix_c2p2(csv_matrix_annual, csv_annual_count){
          const self = this;

          // // append the svg object to the body of the page
          // let svgMatrix = self.d3.select("#matrixChart_c2p2")
          //     .append("svg")
          //     .attr("viewBox", [0, 0, (self.matrix_width_c2 + self.matrix_margin.left + self.matrix_margin.right),
          //       (self.matrix_height_c2 + self.matrix_margin.top + self.matrix_margin.bottom)].join(' '))
          //     .attr("class", "c2p2 matrix_c2p2 matrix")
          
          // set viewBox for existing svg
          let svgMatrix = self.d3.select(".matrix_c2p2")
              .attr("viewBox", [0, 0, (self.matrix_width_c2 + self.matrix_margin.left + self.matrix_margin.right),
                (self.matrix_height_c2 + self.matrix_margin.top + self.matrix_margin.bottom)].join(' '))

          // build array of all values of observation counts
          let domainArrayTemporalCounts = [];
          let i;
          for (i=0; i<csv_matrix_annual.length; i++){
            let val = parseFloat(csv_matrix_annual[i]['obs_count']);
            domainArrayTemporalCounts.push(val);
          };

          // Find maximum count of observations to use in color scale
          self.temporalCountMax_c2p2 = Math.round(Math.max(...domainArrayTemporalCounts));

          // // Create Custom interpolator for a color scale using HEX codes
          //   // Convert Hex to RGB
          // const hex2rgb = hex => {
          //   var validHEXInput = /^#?([a-f\d]{2})([a-f\d]{2})([a-f\d]{2})$/i.exec(hex);
          //   if (!validHEXInput) {
          //       return false;
          //   }
          //   var output = {
          //       r: parseInt(validHEXInput[1], 16),
          //       g: parseInt(validHEXInput[2], 16),
          //       b: parseInt(validHEXInput[3], 16),
          //   };
          //   return `rgb(${output.r},${output.g},${output.b})`
          // }
          // let interpolatec2p2 = self.d3.interpolateRgb(hex2rgb("#285C70"), hex2rgb("#bec7ca")); // can only get two stops in this function
    
          // build color scale
          let myColor = self.d3.scaleSequential()
              .interpolator(self.d3.interpolatePlasma) /* interpolatePlasma interpolatec2p2*/
              // .domain([self.temporalCountMax_c2p2,1]) // if INVERTING color scale
              .domain([1, self.temporalCountMax_c2p2]) // if NOT INVERTING color scale

          // build list of posible counts (0 to 366)
          let count_list = [];
          for (i = 1; i <= self.temporalCountMax_c2p2; i++) {
            count_list.push(i);
          } 

          // define gradient for legend
          let defs = svgMatrix.append("defs")
              .append("linearGradient")
              .attr("id", "gradient-plasma")
              .attr("x1", "0%").attr("y1", "0%")
              .attr("x2", "100%").attr("y2", "0%")
              .selectAll("stop")
              .data(count_list)
              .enter().append("stop")
              .attr("offset", function(d,i) {
                return i/(count_list.length-1);
              })
              .attr("stop-color", function(d) {
                return myColor(d)
              })

          // append legend container
          let legendsvg = svgMatrix.append("g")
              .attr("class", "c2p2 legendWrapper")
              .attr("width", self.matrix_width_c2)
              .attr("transform", "translate(" + (self.matrix_margin.left) + "," + 0 + ")")

          // append legend text
          legendsvg.append("text")
              .attr("class", "c2p2 legendAxis")
              .attr("text-anchor", "end")
              .attr("x", self.matrix_width_c2*1/4 - 10)
              .attr("y", 17)
              .attr("fill", "#ffffff")
              .text("1 daily value")

          // append legend rectangle
          legendsvg.append("rect")
              .attr("class", "c2p2 matrixLegend")
              .attr("width", self.matrix_width_c2/2)
              .attr("height", 20)
              .attr("fill", "url(#gradient-plasma)")
              .attr("x", self.matrix_width_c2/4)

          // append legend text
          legendsvg.append("text")
              .attr("class", "c2p2 legendAxis")
              .attr("text-anchor", "start")
              .attr("x", self.matrix_width_c2*3/4 + 10)
              .attr("y", 17)
              .attr("fill", "#ffffff")
              .text("365 daily values")

          // // append background rectangle for matrix
          // svgMatrix.append("rect")
          //         .attr("class", "c2p2 matrixBkgdRect")
          //         .attr("width", self.matrix_width_c2)
          //         .attr("height", self.matrix_height_c2)
          //         .attr("fill", "#141414")
          //         .attr("filter", "url(#shadow2)")
          //         .attr("transform",
          //             "translate(" + self.matrix_margin.left + "," + self.matrix_margin.top + ")")

          // append tooltip for matrix to the matrix svg
          let tooltip = svgMatrix.append("text")
              .attr("class", "c2p2 tooltip matrix")

          // append the body of the matrix (transformed by margins)
          svgMatrix.append("g")
              .attr("class", "c2p2 transformedMatrix")
              .attr("transform",
                  "translate(" + self.matrix_margin.left + "," + self.matrix_margin.top + ")")

          // read in data for matrix
          self.myGroups_c2p2 = self.d3.map(csv_matrix_annual, function(d){return d[self.timestep_c2p2];}).keys()
          self.myVars_c2p2 = self.d3.map(csv_matrix_annual, function(d){return d.seg_id_nat;}).keys()

          // // build x scale for matrix cells
          // let x = self.d3.scaleBand()
          //     .range([0, self.matrix_width_c2])
          //     .domain(self.myGroups_c2p2)
          //     .padding(0.1);

          // // build y scale for matrix cells
          // let y = self.d3.scaleBand()
          //     .range([self.matrix_height_c2, 0])
          //     .domain(self.myVars_c2p2)
          //     .padding(0.1);

          // // add the cells to the matrix
          // // select transformed matrix
          // let transformedMatrix = self.d3.select(".c2p2.transformedMatrix")
          // // append rectangles to the matrix
          // let matrixCells = transformedMatrix.selectAll('matrixCells')
          //     // bind data to rectangles
          //     .data(csv_matrix_annual, function(d) {
          //       if (d.total_count > 0) { /* d.total_obs */
          //         return d[self.timestep_c2p2] +':'+ d.seg_id_nat;
          //       }
          //     })
          //     // create element for each data item
          //     .enter()
          //     // filter data to only include sites and times
          //     // with more than 0 observations (to limit # rectangles)
          //     .filter(function (d){
          //       return d.obs_count > 0
          //     })
          //     // append rectangles for each element in filtered data
          //     .append("rect")
          //     // set x position based on year
          //     .attr("x", function (d){
          //       return x(d[self.timestep_c2p2])
          //     })
          //     // set y position based on segment id
          //     .attr("y", function(d) {
          //       return y(d.seg_id_nat)
          //     })
          //     // set width and height based on bandwidth of axes
          //     .attr("width", x.bandwidth())
          //     .attr("height", y.bandwidth())
          //     // assign class with segment id AND year for styling
          //     .attr("class", function(d) {
          //       return 'c2p2 cell segment' + d.seg_id_nat + ' timestep' + d[self.timestep_c2p2]
          //     })
          //     // style based on # of observations for that segment in that year
          //     .style("fill", function(d) {
          //       return myColor(d.obs_count);
          //     })
          //     .style("stroke-width", 0.5)
          //     .style("stroke", function(d){
          //       return myColor(d.obs_count);
          //     })
          //     .style("opacity", 1);

          // // add text labels for each cell
          // let cellText = transformedMatrix.selectAll(".text")
          //     .data(csv_matrix_annual, function(d) {
          //       if (d.total_count > 0) { 
          //         return d[self.timestep_c2p2] + ':' + d.seg_id_nat;
          //       }
          //     })
          //     // create an element for each data item
          //     .enter()
          //     // filter data to only include sites and times
          //     // with more than 0 observations (to limit # rectangles)
          //     .filter(function (d){
          //       return d.obs_count > 0
          //     })
          //     // append text for each element in filtered data
          //     .append("text")
          //     .attr("class", function(d) {
          //       return "c2p2 cellText seg" + d.seg_id_nat + " year" + d.year;
          //     })
          //     .attr("x", function(d) {
          //         if (d.obs_count > 99) {
          //             return x(d[self.timestep_c2p2]);
          //         } else if (d.obs_count < 10) {
          //             return x(d[self.timestep_c2p2]) + x.bandwidth()/3;
          //         } else {
          //             return x(d[self.timestep_c2p2]) + x.bandwidth()/6;
          //         }
          //     })
          //     .attr("y", function(d) {
          //         return y(d.seg_id_nat) - 5;
          //     })
          //     // .attr("dy", ".75em")
          //     .attr("fill", "None")
          //     .text(function(d) {
          //       return parseInt(d.obs_count);
          //     })

          // add the overlaid rectangles (temporal and spatial) that will be used for selection
          self.createMatrixRectangles_c2p2(csv_matrix_annual, csv_annual_count, tooltip);

          // // draw x axes
          // transformedMatrix.append("g")
          //     .style("font-size", 10)
          //     .attr("transform", "translate(" + 0 + "," + self.matrix_height_c2 + ")")
          //     .attr("class", "c2p2 matrixAxis bottom")
          //     .call(self.d3.axisBottom(x).tickSize(0).tickValues(['1980', '1990', '2000', '2010', '2019']).tickPadding(7)) /* '1980-01', '1990-01', '2000-01', '2010-01', '2019-01' */
          //     .select(".domain").remove()
          // transformedMatrix.append("g")
          //     .style("font-size", 0)
          //     .attr("transform", "translate(" + 0 + "," + 0 + ")")
          //     .attr("class", "c2p2 matrixAxis top")
          //     .call(self.d3.axisTop(x).tickSize(0))
          //     .select(".domain").remove()

          // // draw y axes
          // transformedMatrix.append("g")
          //     .style("font-size", 0)
          //     .attr("class", "c2p2 matrixAxis left")
          //     //.call(self.d3.axisLeft(y).tickSize(0))
          //     .call(self.d3.axisLeft(y).tickSize(0))
          //     .select(".domain").remove()
          // transformedMatrix.append("g")
          //     .style("font-size", 0)
          //     .attr("transform", "translate(" + self.matrix_width_c2 + "," + 0 + ")")
          //     .attr("class", "c2p2 matrixAxis right")
          //     // .call(self.d3.axisRight(y).tickSize(0))
          //     .call(self.d3.axisRight(y).tickSize(0))
          //     .select(".domain").remove()
        },
        createMatrixRectangles_c2p2(csv_matrix_annual, csv_annual_count, tooltip) {
          const self = this;
          
          // // Set up necessary elements for mousemove event within svg with viewBox
          // find root svg element
          let svg_matrix_c2p2 = document.querySelector('.matrix_c2p2');
          // create a SVGPoint for future math
          let pt_matrix_c2p2 = svg_matrix_c2p2.createSVGPoint();
          // function to get point in global SVG space
          function cursorPoint_matrix_c2p2(evt){
            pt_matrix_c2p2.x = evt.clientX; pt_matrix_c2p2.y = evt.clientY;
            return pt_matrix_c2p2.matrixTransform(svg_matrix_c2p2.getScreenCTM().inverse());
          }
          // create local variable to store point coordinates
          let loc_matrix_c2p2;
          // // reset coordinates when mousemoves over matrix svg
          svg_matrix_c2p2.addEventListener('mousemove', function(evt){
            loc_matrix_c2p2 = cursorPoint_matrix_c2p2(evt);
          }, false);

          // Build matrix
          // create transformed matrix variable
          let transformedMatrix = self.d3.select(".c2p2.transformedMatrix")

          // build x scale using data read in for matrix in createMatrix_c2p2()
          let xscale = self.d3.scaleBand()
              .range([0,self.matrix_width_c2])
              .domain(self.myGroups_c2p2)
              .padding(0.1);

          // build y scale using data read in for matrix in createMatrix_c2p2()
          let yscale = self.d3.scaleBand()
              .range([self.matrix_height_c2, 0])
              .domain(self.myVars_c2p2)
              .padding(0.1);

          // //  build spatial rectangles
          // append to transformed matrix
          let SpatialRectangles = transformedMatrix.selectAll('.c2p2.matrixSpatialRect')
              // bind data to each element
              .data(self.segments)
              // create element for each datum
              .enter()
              // append rectangle for each element
              .append("rect")
              // set x value based on minimum year (1980)
              .attr("x", xscale("1980"))
              // set y value based on segment id
              .attr("y", function(d) { return yscale(d.properties.seg_id_nat) })
              // set width to width of matrix
              .attr("width", self.matrix_width_c2)
              // set height based on yscale bandwidth
              .attr("height", yscale.bandwidth())
              // set class based on segment id
              .attr("class", function(d) {
                return 'c2p2 matrixSpatialRect seg' + d.properties.seg_id_nat;
              })
              // style rectangles to be transparent but available for selection
              .style("fill", "#141414")
              .style("stroke-width", 2)
              .style("stroke", "#141414")
              .style("opacity", 0)

          // // build temporal rectangles
          // append to transformed matrix
          let TemporalRectangles = transformedMatrix.selectAll('.c2p2.matrixTemporalRect')
              // bind data (count of observations in each year) to each element
              .data(csv_annual_count)
              // create element for each datum
              .enter()
              // append rectangle for each element
              .append("rect")
              // set x value based on year and xscale
              .attr("x", function(d){
                return xscale(d[self.timestep_c2p2])
              })
              // set y value to 0
              .attr("y", 0)
              // set width based on bandwidth of x scale
              .attr("width", xscale.bandwidth())
              // set height to height of matrix
              .attr("height", self.matrix_height_c2)
              // set class based on year
              .attr("class", function(d) {
                return 'c2p2 matrixTemporalRect time' + d[self.timestep_c2p2];
              })
              // style rectangles to be transparent but available for selection
              .style("fill", "#141414")
              .style("stroke-width", 2)
              .style("stroke", "#141414")
              .style("opacity", 0)
              // trigger interactions and coordination with map on mouseover
              .on("mouseover", function(d) {
                self.mouseoverRect_c2p2(d, tooltip);
              })
              .on("mousemove", function(d) {
                let mouse_x = loc_matrix_c2p2.x
                let mouse_y = loc_matrix_c2p2.y
                self.mousemoveRect_c2p2(d, tooltip, mouse_x, mouse_y);
              })
              .on("mouseout", function(d) {
                self.mouseoutRect_c2p2(d, tooltip);
              })
        },
        setMap_c2p3(){
          const self = this;

          // // Set up necessary elements for mousemove event within svg with viewBox
          // find root svg element
          let svg_map_c2p3 = document.querySelector('.map_c2p3');
          // create a SVGPoint for future math
          let pt_map_c2p3 = svg_map_c2p3.createSVGPoint();
          // function to get point in global SVG space
          function cursorPoint_c2p3(evt){
            pt_map_c2p3.x = evt.clientX; pt_map_c2p3.y = evt.clientY;
            return pt_map_c2p3.matrixTransform(svg_map_c2p3.getScreenCTM().inverse());
          }

          // create local variable to store point coordinates
          let loc_map_c2p3 = null;
          // reset coordinates when mousemoves over map svg
          svg_map_c2p3.addEventListener('mousemove', function(evt){
            loc_map_c2p3 = cursorPoint_c2p3(evt);
          }, false);

          // // Add tooltip as text appended to map svg
          // add tooltip to map svg
          let tooltip = self.map_c2p3.append("text")
              .attr("class", "c2p3 tooltip map")

          // add drb segments to map BACKGROUND
          let drb_segments_transparent = self.map_c2p3.selectAll(".segs_transparent")
              // bind segments to each element to be created
              .data(self.segments)
              // create an element for each datum
              .enter()
              // append each element to the svg as a path element
              .append("path")
              // assign class for styling
              .attr("class", function(d) {
                let transparent_seg_class = 'c2p3 segs_transparent'
                let key = null;
                for (key in d.properties.day_count) {
                  if (d.properties.day_count[key] > 0) {
                    transparent_seg_class += " " + self.timestep_c2p3 + key
                  }
                }
                return transparent_seg_class
              })
              .attr("d", self.map_path_c2)
              .style("stroke-width", 6)
              .style("stroke", "#141414")
              .style("fill", "None")
              .style("opacity", 0)
              .on("mouseover", function(d) {
                self.mouseoverSeg_c2p3(d, tooltip);
              })
              .on("mousemove", function(d) {
                let mouse_x = loc_map_c2p3.x
                let mouse_y = loc_map_c2p3.y
                self.mousemoveSeg_c2p3(d, tooltip, mouse_x, mouse_y);
              })
              .on("mouseout", function(d) {
                self.mouseoutSeg_c2p3(d, tooltip);
              });

          // add delaware bay to map
          let drb_bay = self.map_c2p3.append("path")
              // bind data to element
              .datum(self.bay)
              // add class for styling
              .attr("class", "c2p3 delaware_bay")
              // project
              .attr("d", self.map_path_c2);

          // add drb reservoirs to map
          let drb_reservoirs = self.map_c2p3.selectAll(".reservoirs")
              // bind polygons to each element to be created
              .data(self.reservoirs)
              // create an element for each datum
              .enter()
              // append each element to the svg as a path element
              .append("path")
              // project polygons
              .attr("d", self.map_path_c2)
              // assign class for styling
              .attr("class", function(d){
                return "c2p3 reservoirs res_id" + d.properties.GRAND_ID
              })
              .style("stroke-width", 0.75)

          // add drb segments to map
          let key = null;
          let drb_segments = self.map_c2p3.selectAll(".river_segments")
              // bind segments to each element to be created
              .data(self.segments)
              // create an element for each datum
              .enter()
              // append each element to the svg as a path element
              .append("path")
              // assign class for styling based on segment id
              // and each date for which segment has data
              .attr("class", function(d){
                let seg_class = 'c2p3 river_segments seg'
                seg_class += d.properties.seg_id_nat
                for (key in d.properties.day_count) {
                  if (d.properties.day_count[key]) {
                    seg_class += " " + self.timestep_c2p3 + key
                  }
                }
                return seg_class
              })
              // project segments
              .attr("d", self.map_path_c2)
              // add stroke width based on widthScale function
              .style("stroke-width", function(d){
                let value = d.properties['avg_ann_flow'];
                if (value){
                  return self.widthScale_c2(value);
                } else {
                  return "#ccc";
                }
              })
              .style("fill", "None")
              .on("mouseover", function(d) {
                self.mouseoverSeg_c2p3(d, tooltip);
              })
              .on("mousemove", function(d) {
                let mouse_x = loc_map_c2p3.x
                let mouse_y = loc_map_c2p3.y
                self.mousemoveSeg_c2p3(d, tooltip, mouse_x, mouse_y);
              })
              .on("mouseout", function(d) {
                self.mouseoutSeg_c2p3(d, tooltip);
              });
          // add scale bar
          self.map_c2p3.append("g").call(self.scaleBarTop_c2)
          self.map_c2p3.append("g").call(self.scaleBarBottom_c2)

        },
        createMatrix_c2p3(csv_matrix_daily_2019, csv_daily_count_2019){
          const self = this;
          // append the svg object to the body of the page
          let svgMatrix = self.d3.select("#matrixChart_c2p3")
              .append("svg")
              // set viewbox
              .attr("viewBox", [0, 0, (self.matrix_width_c2 + self.matrix_margin.left + self.matrix_margin.right),
                (self.matrix_height_c2 + self.matrix_margin.top + self.matrix_margin.bottom)].join(' '))
              .attr("class", "c2p3 matrix_c2p3 matrix")

          // build array of all values of observed temperature
          let arrayObsTemps = [];
          for (i=0; i<csv_matrix_daily_2019.length; i++){
            let val = parseFloat(csv_matrix_daily_2019[i]['temp_c']);
            if (val){
              arrayObsTemps.push(val);
            } else {
              continue
            }
          };

          // Find maximum observed temperature to use in color scale
          let obsTempMax = Math.round(Math.max(...arrayObsTemps));

          // Find minimum observed temperature to use in color scale
          let obsTempMin = Math.round(Math.min(...arrayObsTemps));

          // build color scale
          let myColor = self.d3.scaleSequential()
              .interpolator(self.d3.interpolatePlasma) /* interpolateRdYlBu */
              // .domain([obsTempMax, obsTempMin]) // if INVERTING color scale
              .domain([obsTempMin, obsTempMax]) // if NOT INVERTING color scale

          // build list of posible counts (0 to 366)
          let temp_list = [];
          for (i = obsTempMin; i <= obsTempMax; i++) {
            temp_list.push(i);
          } 

          // define gradient for legend
          let defs = svgMatrix.append("defs")
              .append("linearGradient")
              .attr("id", "gradient-RYB")
              .attr("x1", "0%").attr("y1", "0%")
              .attr("x2", "100%").attr("y2", "0%")
              .selectAll("stop")
              .data(temp_list)
              .enter().append("stop")
              .attr("offset", function(d,i) {
                return i/(temp_list.length-1);
              })
              .attr("stop-color", function(d) {
                return myColor(d)
              })

          // append legend container
          let legendsvg = svgMatrix.append("g")
              .attr("class", "c2p3 legendWrapper")
              .attr("width", self.matrix_width_c2)
              .attr("transform", "translate(" + (self.matrix_margin.left) + "," + 0 + ")")

          // append legend text
          legendsvg.append("text")
              .attr("class", "c2p3 legendAxis")
              .attr("text-anchor", "end")
              .attr("x", self.matrix_width_c2*1/4 - 10)
              .attr("y", 17)
              .attr("fill", "#ffffff")
              .text(obsTempMin + " °C")

          // append legend rectangle
          legendsvg.append("rect")
              .attr("class", "c2p3 matrixLegend")
              .attr("width", self.matrix_width_c2/2)
              .attr("height", 20)
              .attr("fill", "url(#gradient-RYB)")
              .attr("x", self.matrix_width_c2/4)

          // append legend text
          legendsvg.append("text")
              .attr("class", "c2p3 legendAxis")
              .attr("text-anchor", "start")
              .attr("x", self.matrix_width_c2*3/4 + 10)
              .attr("y", 17)
              .attr("fill", "#ffffff")
              .text(obsTempMax + " °C")

          // append background rectangle for matrix
          svgMatrix.append("rect")
                  .attr("class", "c2p3 matrixBkgdRect")
                  .attr("width", self.matrix_width_c2)
                  .attr("height", self.matrix_height_c2)
                  .attr("fill", "#141414")
                  .attr("filter", "url(#shadow2)")
                  .attr("transform",
                      "translate(" + self.matrix_margin.left + "," + self.matrix_margin.top + ")")

          // append tooltip for matrix to the matrix svg
          let tooltip = svgMatrix.append("text")
              .attr("class", "c2p3 tooltip matrix")

          // append the body of the matrix (transformed by margins)
          svgMatrix.append("g")
              .attr("class", "c2p3 transformedMatrix")
              .attr("transform",
                  "translate(" + self.matrix_margin.left + "," + self.matrix_margin.top + ")");

          // read in data for matrix
          self.myGroups_c2p3 = self.d3.map(csv_matrix_daily_2019, function(d){return d[self.timestep_c2p3];}).keys()
          self.myVars_c2p3 = self.d3.map(csv_matrix_daily_2019, function(d){return d.seg_id_nat;}).keys()

          // build x scale
          let x = self.d3.scaleBand()
              .range([0, self.matrix_width_c2])
              .domain(self.myGroups_c2p3)
              .padding(0.0);

          // build y scale
          let y = self.d3.scaleBand()
              .range([self.matrix_height_c2, 0])
              .domain(self.myVars_c2p3)
              .padding(0.0);

          // // add the cells to the matrix
          // select transformed matrix
          let transformedMatrix = self.d3.select(".c2p3.transformedMatrix")
          // append rectangles to the matrix
          let matrixCells = transformedMatrix.selectAll('matrixCells')
              // bind data to rectangles
              .data(csv_matrix_daily_2019, function(d) {
                if (d.total_count > 0) {  
                  return d[self.timestep_c2p3] +':'+ d.seg_id_nat; 
                }
              })
              // create element for each data item
              .enter()
              // filter data to only include sites and times
              // with more than 0 observations (to limit # rectangles)
              .filter(function (d){
                return d.obs_count > 0
              })
              // append rectangles for each element in filtered data
              .append("rect")
              // set x position based on date
              .attr("x", function (d){
                return x(d[self.timestep_c2p3])
              })
              // set y position based on segment id
              .attr("y", function(d) {
                return y(d.seg_id_nat)
              })
              // set width and height based on bandwidth of axes
              .attr("width", x.bandwidth())
              .attr("height", y.bandwidth())
              // assign class with segment id AND date for styling
              .attr("class", function(d) {
                return 'c2p3 cell segment' + d.seg_id_nat + ' timestep' + d[self.timestep_c2p3]
              })
              // style based on # of observations for that segment in that year
              .style("fill", function(d) {
                return myColor(d.temp_c);
              })
              .style("stroke-width", 0.5)
              .style("stroke", function(d) {
                return myColor(d.temp_c);
              })
              .style("opacity", 1);

          // add the overlaid rectangles (temporal and spatial) that will be used for selection
          self.createMatrixRectangles_c2p3(csv_matrix_daily_2019, csv_daily_count_2019, tooltip);

          transformedMatrix.append("g")
              .style("font-size", 10)
              .attr("transform", "translate(" + 0 + "," + self.matrix_height_c2 + ")")
              .attr("class", "c2p3 matrixAxis bottom")
              .call(self.d3.axisBottom(x).tickSize(0).tickValues(['2019-01-01', '2019-03-01', '2019-05-01', '2019-07-01', '2019-09-01', '2019-11-01']).tickPadding(7)) //.tickFormat(self.d3.timeFormat("%Y"))
              .select(".domain").remove()
          transformedMatrix.append("g")
              .style("font-size", 0)
              .attr("transform", "translate(" + 0 + "," + 0 + ")")
              .attr("class", "c2p3 matrixAxis top")
              .call(self.d3.axisTop(x).tickSize(0))
              .select(".domain").remove()

          // draw y axes
          transformedMatrix.append("g")
              .style("font-size", 0)
              .attr("class", "c2p3 matrixAxis left")
              .call(self.d3.axisLeft(y).tickSize(0))
              .select(".domain").remove()
          transformedMatrix.append("g")
              .style("font-size", 0)
              .attr("transform", "translate(" + self.matrix_width_c2 + "," + 0 + ")")
              .attr("class", "c2p3 matrixAxis right")
              .call(self.d3.axisRight(y).tickSize(0))
              .select(".domain").remove()

        },
        createMatrixRectangles_c2p3(csv_matrix_daily_2019, csv_daily_count_2019, tooltip) {
          const self = this;
          // // Set up necessary elements for mousemove event within svg with viewBox
          // find root svg element
          let svg_matrix_c2p3 = document.querySelector('.matrix_c2p3');
          // create a SVGPoint for future math
          let pt_matrix_c2p3 = svg_matrix_c2p3.createSVGPoint();
          // function to get point in global SVG space
          function cursorPoint_matrix_c2p3(evt){
            pt_matrix_c2p3.x = evt.clientX; pt_matrix_c2p3.y = evt.clientY;
            return pt_matrix_c2p3.matrixTransform(svg_matrix_c2p3.getScreenCTM().inverse());
          }
          // create local variable to store point coordinates
          let loc_matrix_c2p3;
          // reset coordinates when mousemoves over matrix svg
          svg_matrix_c2p3.addEventListener('mousemove', function(evt){
            loc_matrix_c2p3 = cursorPoint_matrix_c2p3(evt);
          }, false);

          // // Build matrix
          // create transformed matrix variable
          let transformedMatrix = self.d3.select(".c2p3.transformedMatrix")

          // build x scale using data for matrix read in createMatrix_c2p3()
          let xscale = self.d3.scaleBand()
              .range([0, self.matrix_width_c2])
              .domain(self.myGroups_c2p3)
              .padding(0);

          // build y scale using data for matrix read in createMatrix_c2p3()
          let yscale = self.d3.scaleBand()
              .range([self.matrix_height_c2, 0])
              .domain(self.myVars_c2p3)
              .padding(0);

          // // build spatial rectangles
          // append to transformed matrix
          let SpatialRectangles = transformedMatrix.selectAll('.c2p3.matrixSpatialRect')
              // bind data to each element
              .data(self.segments)
              // create element for each datum
              .enter()
              // append rectangle for each element
              .append("rect")
              // set x value based on minimum date (2019-01-01)
              .attr("x", xscale("2019-01-01"))
              // set y value based on segment id
              .attr("y", function(d) { return yscale(d.properties.seg_id_nat) })
              // set width to width of matrix
              .attr("width", self.matrix_width_c2)
              // set height based on yscale bandwidth
              .attr("height", yscale.bandwidth() )
              // set class based on segment id
              .attr("class", function(d) {
                return 'c2p3 matrixSpatialRect seg' + d.properties.seg_id_nat;
              })
              // style rectangles to be transparent but available for selection
              .style("fill", "#141414")
              .style("stroke-width", 1)
              .style("stroke", "#141414")
              .style("opacity", 0)

          // // build temporal rectangles
          // append to transformed matrix
          let TemporalRectangles = transformedMatrix.selectAll('.c2p3.matrixTemporalRect')
              // bind data (count of observations on each date) to each element
              .data(csv_daily_count_2019)
              // create element for each datum
              .enter()
              // append rectangle for each element
              .append("rect")
              // set x value based on date and xscale
              .attr("x", function(d){
                return xscale(d[self.timestep_c2p3])
              })
              // set y value to 0
              .attr("y", 0)
              // set width based on bandwidth of x scale
              .attr("width", xscale.bandwidth())
              // set height to height of matrix
              .attr("height", self.matrix_height_c2)
              // set class based on date
              .attr("class", function(d) {
                return 'c2p3 matrixTemporalRect time' + d[self.timestep_c2p3];
              })
              // style rectangles to be transparent but available for selection
              .style("fill", "#141414")
              .style("stroke-width", 2)
              .style("stroke", "#141414")
              .style("opacity", 0)
              // trigger interactions and coordination with map on mouseover
              .on("mouseover", function(d) {
                self.mouseoverRect_c2p3(d, tooltip);
              })
              .on("mousemove", function(d) {
                let mouse_x = loc_matrix_c2p3.x
                let mouse_y = loc_matrix_c2p3.y
                self.mousemoveRect_c2p3(d, tooltip, mouse_x, mouse_y);
              })
              .on("mouseout", function(d) {
                self.mouseoutRect_c2p3(d, tooltip);
              })
        },
        mousemoveSeg_c2p2(segment_id, tooltip, mouse_x, mouse_y) {
          const self = this;

          // find # of observations for selected reach
          let num_obs = self.segmentDict[segment_id].total_count//data.properties.total_count;

          // bind mouse coordinates and # of obs to tooltip
          tooltip
              .attr("y", mouse_y - 10)
              .attr("x", mouse_x + 10)
              .attr("text-align", "left")
              .text(this.d3.format(',')(num_obs) + " obs.")
              .raise()
        },
        mouseoverSeg_c2p2(segment_id, tooltip) {
          const self = this;

          // select all *temporal* rectangles and set fill and stroke to none
          // so they can't be selected
          this.d3.selectAll(".c2p2.matrixTemporalRect")
              .style("fill", "None")
              .style("stroke", "None")

          // build y scale for hover bar chart
          let barMax = this.matrix_height_c2/16
          let yScale_barChart_c2p2 = this.d3.scaleLinear()
              // set range of possible output values 
              .range([barMax, 0])
              // define range of input values
              .domain([1, this.temporalCountMax_c2p2]);
          
          // re-build y scale for matrix
          let yScale_matrix_c2p2 = this.d3.scaleBand()
              .range([this.matrix_height_c2, 0])
              .domain(this.myVars_c2p2)
              .padding(0.1);

          // make tooltip visible
          tooltip
              .style("opacity", 1);
          // select all spatial rectangles and make mostly opaque to dim matrix
          this.d3.selectAll(".c2p2.matrixSpatialRect")
              .style("opacity", 0.8)
              .style("stroke-width", 1);
          // // select background rectangle and remove filter
          // this.d3.selectAll(".c2p2.matrixBkgdRect")
          //     .attr("filter", "url(#shadow3)")
          // // select matrix cells for highlighted segment and raise
          // for (let i = 0; i < this.myGroups_c2p2.length; i++) {
          //     let seg_year = this.myGroups_c2p2[i]
          //     let barHeight;
          //     this.d3.selectAll(".c2p2.cell.segment" + segment_id + ".timestep" + seg_year) 
          //         .attr("height", function(i) {
          //             if (self.segmentDict[segment_id].year_count[seg_year] > 0) {
          //               barHeight = (barMax - yScale_barChart_c2p2(self.segmentDict[segment_id].year_count[seg_year]))+1;
          //               return barHeight;
          //             }
          //         })
          //         .attr("y", function(i){
          //             if (self.segmentDict[segment_id].year_count[seg_year] > 0) {
          //                 return yScale_matrix_c2p2(segment_id) - barHeight; 
          //             }
          //         })
          //         .raise()
          //     // turn on text for cells associated with segment
          //     this.d3.selectAll(".c2p2.cellText.seg" + segment_id + ".year" + seg_year) 
          //         .attr("y", function(d) {
          //             return yScale_matrix_c2p2(segment_id) - barHeight - 5; 
          //         })
          //         .attr("fill", "#ffffff")
          //         .raise()   
          // }
          // select the spatial rectangle corresponding to the highlighted segment
          if (self.segmentDict[segment_id].total_count > 0) {
              // select the spatial rectangle corresponding to the highlighted segment
              this.d3.selectAll(".c2p2.matrixSpatialRect.seg" + segment_id) 
                  // set stroke width, opacity, and stroke color
                  // based on whether segment has any observations in record
                  .attr("height", 0.5)
                  .style("stroke-width", 0)
                  .style("opacity", 1)
                  .style("stroke", "None")
                  .raise()
          } else {
              // select the spatial rectangle corresponding to the highlighted segment
              this.d3.selectAll(".c2p2.matrixSpatialRect.seg" + segment_id) 
                  // set stroke width, opacity, and stroke color
                  // based on whether segment has any observations in record
                  .attr("height", 3)
                  .style("fill", "#141414")
                  .style("stroke-width", 0.5)
                  .style("opacity", 1)
                  .style("stroke", "#e0e0e0")
                  // raise the spatial rectangle
                  .raise();
          }
          // select mouseovered segment and set to white with a shadow
          // and raise segment
          this.d3.selectAll(".c2p2.river_segments.seg" + segment_id)
              .attr("filter", "url(#shadow1)") 
              .style("stroke", "#ffffff")
              .style("opacity", 1)
              .raise()
        },
        mouseoutSeg_c2p2(segment_id, tooltip) {
          const self = this;

          // re-build y scale for matrix cells y placement
          let yScale_matrix_c2p2 = this.d3.scaleBand()
              .range([this.matrix_height_c2, 0])
              .domain(this.myVars_c2p2)
              .padding(0.1);

          // hide tooltip
          tooltip
              .style("opacity", 0)
          // select all spatial rectangles and set opacity back to zero
          // with black fill and stroke and raise
          this.d3.selectAll(".c2p2.matrixSpatialRect")
              .style("stroke", "#141414")
              .style("fill", "#141414")
              .style("stroke-width", 1)
              .style("opacity", 0)
              .attr("height", yScale_matrix_c2p2.bandwidth())
              .raise()
          // select all *temporal* rectangles and set fill and stroke back
          // to black and raise so that they are selectable
          this.d3.selectAll(".c2p2.matrixTemporalRect")
              .style("fill", "#141414")
              .style("stroke", "#141414")
              .raise()
          // // resize spatial cells associated with segment
          // this.d3.selectAll(".c2p2.cell.segment" + segment_id) 
          //     .attr("height", yScale_matrix_c2p2.bandwidth())
          //     .attr("y", yScale_matrix_c2p2(segment_id))
          // // turn off text for cells associated with segment
          // this.d3.selectAll(".c2p2.cellText.seg" + segment_id) 
          //     .attr("y", function(d) {
          //         return yScale_matrix_c2p2(segment_id) - 5; 
          //     })
          //     .attr("fill", "None")
          // un-dim riversegments, reservoirs, and bay
          // and reset to default styling
          this.d3.selectAll(".c2p2.river_segments.seg" + segment_id) 
              .attr("filter","None")
              .style("stroke", "#285C70")
              .style("opacity", 1)
              .lower()
          // // reset filter on background rectangle and lower
          // this.d3.selectAll(".c2p2.matrixBkgdRect")
          //     .attr("filter", "url(#shadow2)")
        },
        mousemoveRect_c2p2(data, tooltip, mouse_x, mouse_y) {
          const self = this;

          // identify selected year
          let selected_year = data[self.timestep_c2p2];
          // bind mouse coordinates and year to tooltip
          tooltip
              .attr("y", mouse_y - 15)
              .attr("x", mouse_x - 39)
              .attr("text-align", "left")
              .text(selected_year)
              .raise()
        },
        mouseoverRect_c2p2(data, tooltip) {
          const self = this;

          // select all the *spatial* rectangles and make them unselectable
          // by setting fill to none and stroke to none
          this.d3.selectAll(".c2p2.matrixSpatialRect")
              .style("fill", "None")
              .style("stroke", "None")

          // show tooltip
          tooltip
              .style("opacity", 1);
          // select background rectangle and remove filter
          this.d3.selectAll(".c2p2.matrixBkgdRect")
              .attr("filter", "url(#shadow3)")
          // select all temporal rectangles and make mostly opaque
          // with thick stroke for selection
          this.d3.selectAll(".c2p2.matrixTemporalRect")
              .style("opacity", 0.8);
          // select mouseovered rectangle and set opacity to zero
          this.d3.selectAll(".c2p2.matrixTemporalRect.time" + data[self.timestep_c2p2])
              .style("opacity", 0)
          // select all river segments that have data in highlighted year
          // and make white
          this.d3.selectAll(".c2p2.segs_transparent." + self.timestep_c2p2 + data[self.timestep_c2p2])
          // this.d3.selectAll(".river_segments." + self.timestep_c2p2 + data[self.timestep_c2p2])
              .style("stroke", "#ffffff")
              .style("stroke-width", 1.25)
              .style("opacity", 1)
              .raise()
        },
        mouseoutRect_c2p2(data, tooltip) {
          const self = this;
          // select all *spatial* rectangles and reset fill and stroke to black and raise
          this.d3.selectAll(".c2p2.matrixSpatialRect")
              .style("fill", "#141414")
              .style("stroke", "#141414")
              .raise()

          // hide tooltip
          tooltip
              .style("opacity", 0)
          // select all temporal rectangles and set fill and stroke back to black
          // with no opacity and raise (so available for selection but not visible)
          this.d3.selectAll(".c2p2.matrixTemporalRect")
              .style("stroke", "#141414")
              .style("fill", "#141414")
              .style("opacity", 0)
              .raise()
          // un-dim river segments
          // lower elements as needed
          this.d3.selectAll(".c2p2.segs_transparent." + self.timestep_c2p2 + data[self.timestep_c2p2])
          // this.d3.selectAll(".river_segments." + self.timestep_c2p2 + data[self.timestep_c2p2])
              .style("stroke", "#141414")
              .style("stroke-width", 6)
              .style("opacity", 0)
              .lower()
          // select background rectangle and replace filter
          this.d3.selectAll(".c2p2.matrixBkgdRect")
              .attr("filter", "url(#shadow2)")
        },
        mousemoveSeg_c2p3(data, tooltip, mouse_x, mouse_y) {
          // find # of obs in 2019 for selected segment
          let num_obs = data.properties.year_count['2019'];

          // bind mouse coordinates and # obs to tooltip
          tooltip
              .attr("y", mouse_y - 15)
              .attr("x", mouse_x + 15)
              .attr("text-align", "left")
              .text(this.d3.format(',')(num_obs) + " obs.")
              .raise()
        },
        mouseoverSeg_c2p3(data, tooltip) {

          // select all *temporal* rectangles and set fill and stroke to none
          // so they can't be selected
          this.d3.selectAll(".c2p3.matrixTemporalRect")
              .style("fill", "None")
              .style("stroke", "None")

          // re-build y scale for matrix
          let yScale_matrix_c2p3 = this.d3.scaleBand()
              .range([this.matrix_height_c2, 0])
              .domain(this.myVars_c2p3)
              .padding(0.0);

          // set height for hovered matrix cells
          let cellHeight_c2p3 = 12

          // make tooltip visible
          tooltip
              .style("opacity", 1);
          // select all spatial rectangles and make mostly opaque to dim matrix
          this.d3.selectAll(".c2p3.matrixSpatialRect")
              .style("opacity", 0.7)
              .style("stroke-width", 1);
          // select background rectangle and remove filter
          this.d3.selectAll(".c2p3.matrixBkgdRect")
              .attr("filter", "url(#shadow3)")
          // select matrix cells for highlighted segment and raise
          this.d3.selectAll(".c2p3.cell.segment" + data.properties.seg_id_nat)
              .attr("height", cellHeight_c2p3)
              .attr("y", function(d){
                  return yScale_matrix_c2p3(data.properties.seg_id_nat) - cellHeight_c2p3/2; 
              })
              .raise()
          // select the spatial rectangle corresponding to the highlighted segment
          // set stroke width, opacity, and stroke color
          // based on whether segment has any observations in record
          if (data.properties.year_count['2019'] > 0) {
              // select the spatial rectangle corresponding to the highlighted segment
              this.d3.selectAll(".c2p3.matrixSpatialRect.seg" + data.properties.seg_id_nat)
                .style("stroke-width", 0)
                .style("opacity", 0)
                .style("stroke", "None")
                // raise the spatial rectangle
                .raise()
          } else {
              // select the spatial rectangle corresponding to the highlighted segment
              this.d3.selectAll(".c2p3.matrixSpatialRect.seg" + data.properties.seg_id_nat)
                .style("stroke-width", 0.5)
                .style("opacity", 1)
                .style("stroke", "#e0e0e0")
                .attr("height", 3)
                // raise the spatial rectangle
                .raise()
          }
          // select mouseovered segment and set to white with a shadow
          // and raise segment
          this.d3.selectAll(".c2p3.river_segments.seg" + data.properties.seg_id_nat)
              .attr("filter", "url(#shadow1)")
              .style("stroke", "#ffffff")
              .style("opacity", 1)
              .raise()
        },
        mouseoutSeg_c2p3(data, tooltip) {

          // re-build y scale for matrix
          let yScale_matrix_c2p3 = this.d3.scaleBand()
              .range([this.matrix_height_c2, 0])
              .domain(this.myVars_c2p3)
              .padding(0.0);

          // hide tooltip
          tooltip
              .style("opacity", 0)
          // select all spatial rectangles and set opacity back to zero
          // with black fill and stroke and raise
          this.d3.selectAll(".c2p3.matrixSpatialRect")
              .attr("height", yScale_matrix_c2p3.bandwidth())
              .style("stroke", "None")
              .style("stroke", "#141414")
              .style("fill", "#141414")
              .style("stroke-width", 1)
              .style("opacity", 0)
              .raise()
          // select all *temporal* rectangles and set fill and stroke back
          // to black and raise so that they are selectable
          this.d3.selectAll(".c2p3.matrixTemporalRect")
              .style("fill", "#141414")
              .style("stroke", "#141414")
              .raise()
          // resize matrix cells associated with segment
          this.d3.selectAll(".c2p3.cell.segment" + data.properties.seg_id_nat) 
              .attr("height", yScale_matrix_c2p3.bandwidth())
              .attr("y", yScale_matrix_c2p3(data.properties.seg_id_nat))
          // un-dim river segments, reservoirs, and bay
          // and reset to default styling
          this.d3.selectAll(".c2p3.river_segments.seg" + data.properties.seg_id_nat)
              .attr("filter","None")
              .style("stroke", "#285C70")
              .style("opacity", 1)
              .lower()
          // reset filter on background rectangle and lower
          this.d3.selectAll(".c2p3.matrixBkgdRect")
              .attr("filter", "url(#shadow2)")
        },
        mousemoveRect_c2p3(data, tooltip, mouse_x, mouse_y) {
          // identify selected date
          let selected_year = data[this.timestep_c2p3];

          // set tooltip x coordinate based on mouse coordinates and position w/i matrix
          let x_position;
          if (mouse_x > 70){
            x_position = mouse_x - 60
          } else {
            x_position = mouse_x + 20
          }

          // bind adjusted mouse coordinates and year to tooltip
          tooltip
              .attr("y", mouse_y - 20)
              .attr("x", x_position)
              .attr("text-align", "left")
              .text(selected_year)
              .raise()

        },
        mouseoverRect_c2p3(data, tooltip) {
          const self = this;

          // select all the *spatial* rectangles and make them unselectable
          // by setting fill to none and stroke to none
          this.d3.selectAll(".c2p3.matrixSpatialRect")
              .style("fill", "None")
              .style("stroke", "None")

          // rebuild x scale for matrix cells
          let x = self.d3.scaleBand()
              .range([0, self.matrix_width_c2])
              .domain(self.myGroups_c2p3)
              .padding(0.0);

          // set width for hovered matrix cells
          let cellWidth_c2p3 = 8

          // show tooltip
          tooltip
              .style("opacity", 1)
          // select background rectangle and remove filter
          this.d3.selectAll(".c2p3.matrixBkgdRect")
              .attr("filter", "url(#shadow3)")
          // select all temporal rectangles and make mostly opaque
          this.d3.selectAll(".c2p3.matrixTemporalRect")
              .style("opacity", 0.6)
              .style("stroke", "#141414")
              .style("fill", "#141414")
              .style("stroke-width", 2)
          // select matrix cells for highlighted timestep and raise
          this.d3.selectAll(".c2p3.cell.timestep" + data[self.timestep_c2p3])
              .attr("x", function (d){
                return x(data[self.timestep_c2p3]) - cellWidth_c2p3/2 
              })
              .attr("width", cellWidth_c2p3)
              .raise()
          // select all river segments that have data in highlighted year
          // and make white
          this.d3.selectAll(".c2p3.segs_transparent." + self.timestep_c2p3 + data[self.timestep_c2p3])
              .style("stroke", "#ffffff")
              .style("stroke-width", 1.25)
              .style("opacity", 1)
              .raise()
        },
        mouseoutRect_c2p3(data, tooltip) {
          const self = this;
          
          // select all *spatial* rectangles and reset fill and stroke to black
          this.d3.selectAll(".c2p3.matrixSpatialRect")
              .style("fill", "#141414")
              .style("stroke", "#141414")
              .raise()

          // hide tooltip
          tooltip
              .style("opacity", 0)

          // rebuild x scale for matrix cells
          let x = self.d3.scaleBand()
              .range([0, self.matrix_width_c2])
              .domain(self.myGroups_c2p3)
              .padding(0.0);
          
          // select all temporal rectangles and set fill and stroke back to black
          // with no opacity (so available for selection but not visible)
          this.d3.selectAll(".c2p3.matrixTemporalRect")
              .style("fill", "#141414")
              .style("stroke", "#141414")
              .style("stroke-width", 2)
              .style("opacity", 0)
              .raise()
          // select matrix cells for highlighted timestep
          this.d3.selectAll(".c2p3.cell.timestep" + data[self.timestep_c2p3])
              .attr("x", function(d){
                  return x(data[self.timestep_c2p3])
              })
              // set width and height based on bandwidth of axes
              .attr("width", x.bandwidth())
          // un-dim river segments
          // lower elements as needed
           this.d3.selectAll(".c2p3.segs_transparent." + self.timestep_c2p3 + data[self.timestep_c2p3])
              .style("stroke", "#141414")
              .style("stroke-width", 6)
              .style("opacity", 0)
              .lower()
          // select background rectangle and replace filter
          this.d3.selectAll(".c2p3.matrixBkgdRect")
              .attr("filter", "url(#shadow2)")
        }
      }
  }

</script>

<style scoped lang="scss">
#section_2 {
  margin-bottom: 0;
  text-align: left;

  .row {
    margin-top: 3vh;
    margin-bottom: 3vh;
  }

  #filter_row {
    height: 1vh;
  }

  #DRB_map_c2p1 {
    display: block;
    max-width: 700px;
    width: 100%;
  }

  #barChart_c2p1 {
    display: block;
    max-width: 700px;
    width: 100%;
  }

  .inset-viz-subtitle {
    fill: #285C70; //$offWhite
    font-style: italic;
    font-size: .5em;
    text-align: center;
    font-weight: 100;
    opacity: 1;
  }

  #timeseries {
    display: block;
    max-width: 700px;
  }

  #hex-map {
    padding-left: 5em;
    padding-right: 5em;
    padding-top: 0em;
    padding-bottom: 1em;
  }

  .explainer-grid-container {
    padding: 5px;
    display: grid;
    grid-template-columns: 1fr auto auto auto 1fr;
    gap: 0px 10px;
    width: 100vw;
    min-width: 0;
    max-height: 90vh;
    @media screen and (max-width: 600px) {
      padding: 10px 0;
      gap: 0px;
    }
  }
  .explainer-grid-item {
    padding: 0px;
    display: flex;
    align-items: center;
    justify-content: center;
    text-align: center;
    min-width: 25vw;
    max-width: 350px;
  }
  #MatrixExplainerSpace {
    grid-column: 2;
  }
  #MatrixExplainerTime {
    grid-column: 3;
  }
  #MatrixExplainerColor {
    grid-column: 4;
  }
  .map-matrix-grid-container {
    padding: 25px;
    display: grid;
    align-items: center;
    justify-content: center;
    grid-template-columns: auto ;
    grid-template-rows: 100%;
    grid-template-areas:
        "map matrix";
    gap: 0px 10px;
    height: 90vh;
    // max-height: 90%;
    // width: 100%;
    min-width: 0;
    min-height: 0;
  }
  .mm-grid-item {
    padding: 0px;
    display: flex;
    min-width: 45vw;
    max-height: 90vh;
  }
  #DRB_map_c2p2 {
    grid-area: map;
    display: flex;
    max-height: 100%;
  }
  #matrixChart_c2p2 {
    grid-area: matrix;
    display: flex;
    max-height: 100%;
  }
  #DRB_map_c2p3 {
    grid-area: map;
    display: flex;
    max-height: 100%;
  }
  #matrixChart_c2p3 {
    grid-area: matrix;
    display: flex;
    max-height: 100%;
  }
  .annotation-text {
    fill: #c3cccf;
    font-size: 0.5em;
    font-style: italic;
  }
  .annotation-text {
    fill: #c3cccf;
    font-size: 0.5em;
    font-style: italic;
  }
}
</style>
<style lang="scss">
// this is a unscoped style tag, since the elements were added with d3 after Vue processed the template we to target the selectors we have to use an unscoped style block--that means these are global styles
.label, .domain{
  color: #1f4f61; //#285C70
  font-size: 0.5em;
}
.c2p2.cellText {
  font-size: 0.45em;
  //text-anchor: middle;
}

.delaware_bay {
  fill: #285C70; // original was #6399ba;
}

.river_segments {
  stroke: inherit;
  stroke-width: inherit;
  // stroke: #285C70;// original was #6399ba;
  // stroke-linecap: round;
}

.reservoirs {
  fill: #285C70; // original was #6399ba;
  stroke: #285C70;// original was #6399ba;
}

.obs_sites {
  stroke: #141414;
  stroke-width: 0.1;
  opacity: 0.8;
}

.USGS_station {
  fill: #e9eced;
}

.Other_station {
  fill: #FDAD32;
}

.chartAxis {
  color: #999999;
  font-size: .60em;
}

.legend {
  font-family: 'Open Sans', arial, sans-serif;
  font-size: 0.5em;
  fill: #999999;
}
.legendAxis {
  color: #ffffff;
  font-size: 1em;;
}
.matrixAxis {
  fill: #999999;
  font-size: 1.1vh;
}
.chartAxisText {
  fill: #999999;
  font-size: 1.1vh;
}
.tooltip {
  fill: #ffffff;
  font-family: sans-serif;
  font-size: 0.7em;
  font-weight: bold;
  line-height: 1em;
}
#hex-map {
  padding: 4rem;
  width: 80%;
  height: auto;
  max-height: 80vh;
}
.hex {
  fill-rule: evenodd;
  stroke:#141414; //#141414
  stroke-miterlimit: 10;
  stroke-width: 0.1;
}
</style>
