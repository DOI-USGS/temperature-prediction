<template>
  <div id="matrix-space-view">
    <svg
      id="svg-matrix-space"
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
            xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAqgAAAQyCAYAAABklQ1DAAAACXBIWXMAAAsSAAALEgHS3X78AAAcaklEQVR4Xu3d0VIcR5qA0USSbc149/1fdMeWLUvsBaRIUlV0y2ZmvpbPiciopmmgLr/4s6q4u7+/HwAAUPHm0gcAAOA/6d2lD1zy4cOHu0ufAQDg7+P9+/d/aYv+7lu3+C8EqVgFAPh7Oo3Kbw3WqwP1IEzXr4/CVKwCAHzfjkJyfe/Z968N1asCdYnTS8f99UqwAgDctrNwPIrSw+M1kfpioG5T07vxPEjvTt4by3F/DQDA7TsL0v310XtjjJdD9TRQT6am63pz8vooUo++BgDgtuzheBSkn09e77F6GqmX7uJfY/PNwXFfe8SKVACA78NRnO7r87bulvfX43z/0OEEdZuensXo22W9FKuTOAUAuG1rOJ5F6ecxxqdlHX3/yzT1aIr6VaBeiNM1St89rrfLcY/Vs+1+AABu07pNfxSlfyzHP8Z5rJ5G6tkW/75Nv8bpuzHGD8t6txxnqIpUAIDvz0txOoP043J883jcf8fahV9NUJ8F6smzTtfp6bsxxo/jIUh/HGP8tH39bllH16UCAHC7jq43/WNZv4+HIP19HF/yuV+zOsZ4aNB1ivqtE9Q5NX0/HuJ0HudaI3VOXPffBQDA7dnjct3Sn3H62+Nah5Xrz643T80ufHmC+mjdkt+np+vk9B/bev/4vTlRXU9s3eqfxCoAQNsej/vW/tzK//1xfRhj/DqehpRjPL+Df7/+dG73f/M1qHugzsnpP8YYP48x/rmsNVLPpqgAANyes+npGqc/jKf7kebPnN3ZP9vwfIJ6cv3pGqjrNahzgvrPMcb/PK5/jqdJ6k/j6QRnoM4TFakAALdlRuScfs7Q/DgetvQ/jKcB5Wy+9eapj+P5E5++Glyu16GebfHPH1i36Ne79/dA/d/xME39eTwF6jpFPToRoQoA0LZON9frSNfp6QzUOZwcy2fm9v8Pj6/nnf1vHr9/OEV96T9JrRPU/S7+uc0/t/Z/Hk+Rum7174+dch0qAMBteOn60zVQZ5zOyek6Nf1tWXsTnnbgHqj7hPPoOtQZqT+O59ei/jwepqlzirrfLHV2HapIBQBoOYrTdYK63hy1xunn5f1fx9dPeDprwmdT1JdukprHoynqHqlzmjonqP8YT9ehHj0TFQCA27E/JmqdkO5x+n6cx+neg4ddeGmLfx73a1H3R07NLf85UZ03SwlUAIDbdxaoe5x+GM//kdPsxrUlX4zTMc5vklpf71PUfZI6Q3Wu9QH+691cAhUA4DYdBeoep/vz8PfJ6VXb+2O8PEGdjiL17XLcY3Wu9QRPHykAAEDefgf/7LnP46n91ihdW/GlOD10zRb//t4aq2+39e5kCVQAgNu1Burd8t7ee+u6FKXftMV/Zr1eYAbq0fb/finAiw9lBQAgbwbqGqefxnH/HbXiGN/QgGeBuv+iPU73Sep+PFvffIIAAPxXzTC9X74+arz9uK/xwvGZayaoRz94TbierfXnAAC4HZc675oAvdiB1wTqJesfuXSyR58HAKBnTkzvttff0np/ymsE6rWOqhoAgKbZa/u1p/92by594AWvWsoAANy8V+nDvxKou2tP4trPAQDw33dtu137uYteM1DHeMUTAwDgZrxqA752oAIAwF8iUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAg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"
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
          class="explainer-minor-text"
          transform="translate(575 121.1)"
        >North</text>
        <text
          class="explainer-minor-text"
          transform="translate(575 1083.2)"
        >South</text>
      </g>
      <g id="matrix_cells_seg1658">
        <rect x="661.5" y="311.1" class="st6" width="14.2" height="2.1"/>
        <rect x="645.6" y="311.1" class="st7" width="14.2" height="2.1"/>
        <rect x="629.6" y="311.1" class="st0" width="14.2" height="2.1"/>
        <rect x="613.8" y="311.1" class="st8" width="14.2" height="2.1"/>
        <rect x="598" y="311.1" class="st9" width="14.2" height="2.1"/>
        <rect x="582.2" y="311.1" class="st10" width="14.2" height="2.1"/>
        <rect x="566.3" y="311.1" class="st10" width="14.2" height="2.1"/>
        <rect x="550.5" y="311.1" class="st11" width="14.2" height="2.1"/>
        <rect x="534.7" y="311.1" class="st12" width="14.2" height="2.1"/>
        <rect x="518.9" y="311.1" class="st12" width="14.2" height="2.1"/>
        <rect x="503.1" y="311.1" class="st9" width="14.2" height="2.1"/>
        <rect x="487.3" y="311.1" class="st9" width="14.2" height="2.1"/>
        <rect x="471.5" y="311.1" class="st9" width="14.2" height="2.1"/>
        <rect x="455.7" y="311.1" class="st13" width="14.2" height="2.1"/>
        <rect x="439.8" y="311.1" class="st14" width="14.2" height="2.1"/>
        <rect x="424" y="311.1" class="st11" width="14.2" height="2.1"/>
        <rect x="408.1" y="311.1" class="st15" width="14.2" height="2.1"/>
        <rect x="392.3" y="311.1" class="st16" width="14.2" height="2.1"/>
        <rect x="376.5" y="311.1" class="st11" width="14.2" height="2.1"/>
        <rect x="360.7" y="311.1" class="st17" width="14.2" height="2.1"/>
        <rect x="344.9" y="311.1" class="st8" width="14.2" height="2.1"/>
        <rect x="329.1" y="311.1" class="st18" width="14.2" height="2.1"/>
        <rect x="313.3" y="311.1" class="st19" width="14.2" height="2.1"/>
        <rect x="297.5" y="311.1" class="st0" width="14.2" height="2.1"/>
        <rect x="281.7" y="311.1" class="st0" width="14.2" height="2.1"/>
        <rect x="265.9" y="311.1" class="st0" width="14.2" height="2.1"/>
        <rect x="250.1" y="311.1" class="st20" width="14.2" height="2.1"/>
        <rect x="234.2" y="311.1" class="st6" width="14.2" height="2.1"/>
        <rect x="218.4" y="311.1" class="st21" width="14.2" height="2.1"/>
        <rect x="202.6" y="311.1" class="st6" width="14.2" height="2.1"/>
        <rect x="186.8" y="311.1" class="st22" width="14.2" height="2.1"/>
        <rect x="171" y="311.1" class="st23" width="14.2" height="2.1"/>
        <rect x="155.1" y="311.1" class="st6" width="14.2" height="2.1"/>
        <rect x="139.3" y="311.1" class="st7" width="14.2" height="2.1"/>
        <rect x="123.5" y="311.1" class="st24" width="14.2" height="2.1"/>
        <rect x="107.7" y="311.1" class="st25" width="14.2" height="2.1"/>
        <rect x="91.9" y="311.1" class="st26" width="14.2" height="2.1"/>
        <rect x="76" y="311.1" class="st27" width="14.2" height="2.1"/>
        <rect x="60.2" y="311.1" class="st28" width="14.2" height="2.1"/>
        <rect x="44.4" y="311.1" class="st29" width="14.2" height="2.1"/>
        <rect x="28.6" y="311.1" class="st30" width="14.2" height="2.1"/>
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
          transform="translate(79.5 223)"
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

.background{
  fill: $boxCharcoal;
}

#matrix-space-view {
  width: 100%;
}

#svg-matrix-space {
  max-height: 100vh;
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
  stroke: $dimGray;
  stroke-width: 3px;
}

.cls-4 {
  stroke-dasharray: 2 6;
}

.cls-5 {
  fill: $dimGray;
}

.cls-39 {
  fill: $dimGray;
}

.cls-38 {
  stroke: $dimGray;
  stroke-width: 1.5px;
}

.st0{fill:#0F0F0F;}
.st6{fill:#F0F921;stroke:#F0F921;stroke-width:0.5;stroke-miterlimit:10;}
.st7{fill:#D5536F;stroke:#D5536F;stroke-width:0.5;stroke-miterlimit:10;}
.st8{fill:#260591;stroke:#260591;stroke-width:0.5;stroke-miterlimit:10;}
.st9{fill:#240691;stroke:#240691;stroke-width:0.5;stroke-miterlimit:10;}
.st10{fill:#19068C;stroke:#19068C;stroke-width:0.5;stroke-miterlimit:10;}
.st11{fill:#20068F;stroke:#20068F;stroke-width:0.5;stroke-miterlimit:10;}
.st12{fill:#2E0595;stroke:#2E0595;stroke-width:0.5;stroke-miterlimit:10;}
.st13{fill:#3F049C;stroke:#3F049C;stroke-width:0.5;stroke-miterlimit:10;}
.st14{fill:#46039F;stroke:#46039F;stroke-width:0.5;stroke-miterlimit:10;}
.st15{fill:#1B068D;stroke:#1B068D;stroke-width:0.5;stroke-miterlimit:10;}
.st16{fill:#220690;stroke:#220690;stroke-width:0.5;stroke-miterlimit:10;}
.st17{fill:#280592;stroke:#280592;stroke-width:0.5;stroke-miterlimit:10;}
.st18{fill:#F79044;stroke:#F79044;stroke-width:0.5;stroke-miterlimit:10;}
.st19{fill:#5601A4;stroke:#5601A4;stroke-width:0.5;stroke-miterlimit:10;}
.st20{fill:#16078A;stroke:#16078A;stroke-width:0.5;stroke-miterlimit:10;}
.st21{fill:#FEBB2B;stroke:#FEBB2B;stroke-width:0.5;stroke-miterlimit:10;}
.st22{fill:#F5E926;stroke:#F5E926;stroke-width:0.5;stroke-miterlimit:10;}
.st23{fill:#F2F227;stroke:#F2F227;stroke-width:0.5;stroke-miterlimit:10;}
.st24{fill:#7E03A8;stroke:#7E03A8;stroke-width:0.5;stroke-miterlimit:10;}
.st25{fill:#A72197;stroke:#A72197;stroke-width:0.5;stroke-miterlimit:10;}
.st26{fill:#F8DF25;stroke:#F8DF25;stroke-width:0.5;stroke-miterlimit:10;}
.st27{fill:#F0804E;stroke:#F0804E;stroke-width:0.5;stroke-miterlimit:10;}
.st28{fill:#F1834C;stroke:#F1834C;stroke-width:0.5;stroke-miterlimit:10;}
.st29{fill:#FCD225;stroke:#FCD225;stroke-width:0.5;stroke-miterlimit:10;}
.st30{fill:#F1F426;stroke:#F1F426;stroke-width:0.5;stroke-miterlimit:10;}

</style>