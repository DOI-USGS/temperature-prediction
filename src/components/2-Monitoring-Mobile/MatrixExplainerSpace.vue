<template>
  <div id="matrix-space-view">
    <svg
      xmlns="http://www.w3.org/2000/svg"
      xmlns:xlink="http://www.w3.org/1999/xlink"
      viewBox="0 0 700 1160"
    >
      <g id="matrix_halo">
        <g>
          <image
            class="cls-2"
            width="680"
            height="1074"
            transform="translate(12 56.4)"
            xlink:href="data:image/png;base64,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AIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAg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"
          />
          <rect
            x="27"
            y="71.6"
            width="650"
            height="1043.8"
            class="background"
          />
        </g>
      </g>
      <g id="Space_axis">
        <g>
          <line
            class="cls-3"
            x1="603.2"
            y1="151.4"
            x2="603.2"
            y2="152.4"
          />
          <line
            class="cls-4"
            x1="603.2"
            y1="158.4"
            x2="603.2"
            y2="1031.6"
          />
          <line
            class="cls-3"
            x1="603.2"
            y1="1034.6"
            x2="603.2"
            y2="1035.6"
          />
          <polygon
            class="cls-5"
            points="594.3 154 603.2 138.5 612.2 154 594.3 154"
          />
          <polygon
            class="cls-5"
            points="594.3 1033 603.2 1048.5 612.2 1033 594.3 1033"
          />
        </g>
      </g>
      <g id="Space_axis_text">
        <text
          class="legend-text"
          transform="translate(580 121.1)"
        >North</text>
        <text
          class="legend-text"
          transform="translate(580 1083.2)"
        >South</text>
      </g>
      <g id="matrix_cells_seg1656">
        <rect
          class="cls-7"
          x="644.6"
          y="307.5"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-8"
          x="628.4"
          y="307.5"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-9"
          x="612.2"
          y="307.5"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-10"
          x="596"
          y="307.5"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-11"
          x="579.7"
          y="307.5"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-12"
          x="563.5"
          y="307.5"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-13"
          x="547.3"
          y="307.5"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-13"
          x="531.1"
          y="307.5"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-14"
          x="514.9"
          y="307.5"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-9"
          x="498.7"
          y="307.5"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-15"
          x="482.5"
          y="307.5"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-16"
          x="466.3"
          y="307.5"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-17"
          x="450.1"
          y="307.5"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-18"
          x="433.9"
          y="307.5"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-19"
          x="417.6"
          y="307.5"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-20"
          x="401.4"
          y="307.5"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-21"
          x="385.2"
          y="307.5"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-22"
          x="369"
          y="307.5"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-23"
          x="352.8"
          y="307.5"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-24"
          x="336.6"
          y="307.5"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-25"
          x="320.4"
          y="307.5"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-10"
          x="304.2"
          y="307.5"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-26"
          x="288"
          y="307.5"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-27"
          x="271.8"
          y="307.5"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-28"
          x="255.6"
          y="307.5"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-29"
          x="239.3"
          y="307.5"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-14"
          x="223.1"
          y="307.5"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-30"
          x="206.9"
          y="307.5"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-14"
          x="190.7"
          y="307.5"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-31"
          x="174.5"
          y="307.5"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-32"
          x="158.3"
          y="307.5"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-33"
          x="142.1"
          y="307.5"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-34"
          x="125.9"
          y="307.5"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-34"
          x="109.7"
          y="307.5"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-25"
          x="93.5"
          y="307.5"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-35"
          x="77.2"
          y="307.5"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-36"
          x="61"
          y="307.5"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-37"
          x="44.8"
          y="307.5"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-21"
          x="28.6"
          y="307.5"
          width="14.6"
          height="2.06"
        />
      </g>
      <g id="Descriptor_arrow">
        <g transform="translate(30, 0)"> 
          <path
            class="cls-38"
            d="M453,286.4a58.1,58.1,0,0,0-57.1-47.3"
          />
          <polygon
            class="cls-39"
            points="460 283.4 453.9 297.1 445.1 285 460 283.4"
          />
        </g>
      </g>
      <g id="Descriptor_text">
        <text
          class="viz-emph"
          transform="translate(79.5 233)"
        >Space, <tspan
          class="viz-comment"
          x="90"
          y="0"
        >where each reach is</tspan><tspan
          class="viz-comment"
          x="0"
          y="42"
        >represented as a row of cells.</tspan></text>
      </g>
    </svg>
  </div>
</template>

<script>
export default {
    name: "MatrixExplainerSpace"
}
</script>

<style scoped>
#matrix-space-view {
        width: 100%;
    }
    
    .background {
      fill: rgb(32, 29, 26);
    }

    .cls-2 {
        opacity: 0.8;
        mix-blend-mode: screen;
      }

      .cls-3, .cls-38, .cls-4 {
        fill: none;
        stroke-miterlimit: 10;
      }

      .cls-3, .cls-4 {
        stroke: #4d4c4d;
        stroke-width: 3px;
      }

      .cls-4 {
        stroke-dasharray: 1.99 5.97;
      }

      .cls-5 {
        fill: #4d4c4d;
      }

      .cls-40, .cls-6 {
        font-size: 26px;
      }

      .cls-39, .cls-43, .cls-44, .cls-45, .cls-46, .cls-47, .cls-48, .cls-6 {
        fill: #7d7d7d;
      }

      .cls-43, .cls-44, .cls-45, .cls-46, .cls-47, .cls-48, .cls-6 {
        font-family: SourceSansPro-Regular, Source Sans Pro;
      }

      .cls-7 {
        fill: #e87059;
        stroke: #e87059;
      }

      .cls-10, .cls-11, .cls-12, .cls-13, .cls-14, .cls-15, .cls-16, .cls-17, .cls-18, .cls-19, .cls-20, .cls-21, .cls-22, .cls-23, .cls-24, .cls-25, .cls-26, .cls-27, .cls-28, .cls-29, .cls-30, .cls-31, .cls-32, .cls-33, .cls-34, .cls-35, .cls-36, .cls-37, .cls-7, .cls-8, .cls-9 {
        stroke-width: 0.5px;
      }

      .cls-8 {
        fill: #fdc627;
        stroke: #fdc627;
      }

      .cls-9 {
        fill: #fcd025;
        stroke: #fcd025;
      }

      .cls-10 {
        fill: #fb9f3a;
        stroke: #fb9f3a;
      }

      .cls-11 {
        fill: #fbd524;
        stroke: #fbd524;
      }

      .cls-12 {
        fill: #f4ed27;
        stroke: #f4ed27;
      }

      .cls-13 {
        fill: #f7e225;
        stroke: #f7e225;
      }

      .cls-14 {
        fill: #f0f921;
        stroke: #f0f921;
      }

      .cls-15 {
        fill: #f6e626;
        stroke: #f6e626;
      }

      .cls-16 {
        fill: #feb72d;
        stroke: #feb72d;
      }

      .cls-17 {
        fill: #f5e926;
        stroke: #f5e926;
      }

      .cls-18 {
        fill: #fec029;
        stroke: #fec029;
      }

      .cls-19 {
        fill: #fdb42f;
        stroke: #fdb42f;
      }

      .cls-20 {
        fill: #feba2c;
        stroke: #feba2c;
      }

      .cls-21 {
        fill: #fdc527;
        stroke: #fdc527;
      }

      .cls-22 {
        fill: #f68f44;
        stroke: #f68f44;
      }

      .cls-23 {
        fill: #fca636;
        stroke: #fca636;
      }

      .cls-24 {
        fill: #7701a8;
        stroke: #7701a8;
      }

      .cls-25 {
        fill: #f48948;
        stroke: #f48948;
      }

      .cls-26 {
        fill: #fdac33;
        stroke: #fdac33;
      }

      .cls-27 {
        fill: #ef7c51;
        stroke: #ef7c51;
      }

      .cls-28 {
        fill: #c33d80;
        stroke: #c33d80;
      }

      .cls-29 {
        fill: #fbd324;
        stroke: #fbd324;
      }

      .cls-30 {
        fill: #fca934;
        stroke: #fca934;
      }

      .cls-31 {
        fill: #f0f724;
        stroke: #f0f724;
      }

      .cls-32 {
        fill: #ce4b75;
        stroke: #ce4b75;
      }

      .cls-33 {
        fill: #eb7655;
        stroke: #eb7655;
      }

      .cls-34 {
        fill: #7e03a8;
        stroke: #7e03a8;
      }

      .cls-35 {
        fill: #feb82c;
        stroke: #feb82c;
      }

      .cls-36 {
        fill: #c5407e;
        stroke: #c5407e;
      }

      .cls-37 {
        fill: #f9973f;
        stroke: #f9973f;
      }

      .cls-38 {
        stroke: #7d7d7d;
      }

      .cls-40 {
        fill: #eaeae9;
        font-family: SourceSansPro-Bold, Source Sans Pro;
        font-weight: 700;
      }

      .cls-41 {
        letter-spacing: -0.01em;
      }

      .cls-42 {
        letter-spacing: -0.03em;
      }

      .cls-43, .cls-44, .cls-45, .cls-46, .cls-47, .cls-48 {
        font-weight: 400;
      }

     
</style>