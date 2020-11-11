<template>
  <div id="matrix-time-view">
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
            transform="translate(12 55.4)"
            xlink:href="data:image/png;base64,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AIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJAiUAEASBGoAACkCFQAAFIEKgAAKQIVAIAUgQoAQIpABQAgRaACAJDy2oF6f+kDAAB8d161AV8zUK89sWs/BwDAf9+17Xbt5y76K4G6nsSrnRAAADfrVfrw3aUPvKJ5knfbawAAevbY/NPB+a1eI1CPTv5ozRjdXwMA0HVt6x19/k+5JlCP/sj9wfGaBQDAbfkzvbcfVxeb8CxQz3750Ul8Pjjua05M78bzLX4AAPrW7jtaR014TbgeNuE1E9Rpj9TP2+uj9Wl8vbXvulMAgNuyNt+nx/VSrO6tOJbjRS8F6tEv2Senn7b1x7bWOH0zBCoAwC3a+29vvj/G1124T1J3p8F6zQR1j9J5YmugzhP7uKz5CKv7x88IVACA27S34B9jjN/H8/bbQ3Vtxkux+sxRoK4/dBSnezl/HA8nONdv4ylOP4+Hv/FmCFQAgFt1FKgfxxgfxkP7rS24x+rR9v/em89cs8W/x+kepr89rg9jjB/G8zj9YQhUAIBbdxaov40xfh0PHThjdQbrGqp7pI5xEKbTNXfx71v78w/NSp4ntMfpx/E8UO/GcaAKVgCAlj0e9131dVj5YYzxrzHGL+OpC2cnHk1S1wnqYaTugXo/nt/YtJ7IWZz+OI7j9Mfx8PvfjucT1JU4BQBoOorUfWg5e/CX8RCp/xpPE9WzSL24zX9pi//sRNYt/RmhYzzF6QzXNVD36ak4BQBo2yNyH1yuXTgD9ZfxNE2d2/0vTVG/cnaT1PyB/drTeZfWvN5gxucYD3/04xjj/Rjjp/EQr28f193yOWEKAHBb1ja8H0936s8u/DAe2vCXMcb/PR5/ffzeepf/2pbz934Vql8C9f379/cfPnxY43Gv5LWU18noGE8B+/t4OJl1ejoD1Q1SAAC3a92a39tw3eqfawbqOkHdt/m/eP/+/ZevX7pJ6miMO59vul5POr//cTzF6X73vutPAQBuz0vXoe43S81I/XVZc5t/TlCveYD/6Rb/3Xg6gbvxFKgzNPeH8M/x7pycnk1PRSkAwG2639b+D5vWx4/Obf/9kVP7dahjOX7xLY+ZmiG6Tk7Xrf3fxlOcHj37VJwCANy2fZd9tuAaqeuz8ufXH8fx9PTyBPXkOtR1irq+P783n3c6A3V9rNS6tS9QAQBu2zrEXLf69/8yut5c/9L0dIzx/PrTMS5PUOfrz+O5dar6djz84bmlL04BAL5fL0XqDNU1WD8t66oJ6t39/dfvL1PUuTX/5mC9HcdRum/tTyIVAOC27UPMPVL3WP108v0vcbpPT8c4CdQxvkTqGqpvDo5nUXp23alIBQC4TXs07pPQs1i9PziOMcb9UZyO8fJ/khrj4RfcjefXoh69d3QzlDgFAPi+HEXqPK6RevT6y9R0OR46naCO8Wyrf4yv4/MoSI/iVJgCAHxf1oDcI3V9ffTeGON4a396MVCn7ZrUl47765VQBQC4bWfheBasXx1fCtPpqkAd46tp6hiXo1SQAgB8345C8ihWxxjXxekY3xCo00GorkQpAMDf02lUXhum0zcH6u5CsAIA8DfzrUG6+8uBCgAAr+nNpQ8AAMB/0v8Di4o1h+d+TpIAAAAASUVORK5CYII="
          />
          <rect
            x="27"
            y="70.6"
            width="650"
            height="1043.8"
          />
        </g>
      </g>
      <g id="matrix_cells_2013">
        <rect
          class="cls-3"
          x="563.5"
          y="517.1"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-4"
          x="563.5"
          y="306.5"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-5"
          x="563.5"
          y="1105.2"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-6"
          x="563.5"
          y="1096.1"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-5"
          x="563.5"
          y="1084.6"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-7"
          x="563.5"
          y="1082.4"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-8"
          x="563.5"
          y="1027.4"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-6"
          x="563.5"
          y="1018.3"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-9"
          x="563.5"
          y="1016"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-10"
          x="563.5"
          y="997.7"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-7"
          x="563.5"
          y="993.1"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-11"
          x="563.5"
          y="979.4"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-7"
          x="563.5"
          y="974.8"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-12"
          x="563.5"
          y="967.9"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-11"
          x="563.5"
          y="965.6"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-6"
          x="563.5"
          y="956.5"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-7"
          x="563.5"
          y="945"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-7"
          x="563.5"
          y="942.8"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-11"
          x="563.5"
          y="931.3"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-13"
          x="563.5"
          y="929"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-9"
          x="563.5"
          y="926.7"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-11"
          x="563.5"
          y="924.5"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-7"
          x="563.5"
          y="917.6"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-14"
          x="563.5"
          y="915.3"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-9"
          x="563.5"
          y="908.4"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-7"
          x="563.5"
          y="901.6"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-9"
          x="563.5"
          y="899.3"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-15"
          x="563.5"
          y="878.7"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-12"
          x="563.5"
          y="871.8"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-16"
          x="563.5"
          y="867.2"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-8"
          x="563.5"
          y="864.9"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-9"
          x="563.5"
          y="862.7"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-8"
          x="563.5"
          y="832.9"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-17"
          x="563.5"
          y="823.8"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-18"
          x="563.5"
          y="819.2"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-8"
          x="563.5"
          y="812.3"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-8"
          x="563.5"
          y="807.7"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-9"
          x="563.5"
          y="805.4"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-15"
          x="563.5"
          y="798.6"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-19"
          x="563.5"
          y="796.3"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-18"
          x="563.5"
          y="791.7"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-9"
          x="563.5"
          y="787.1"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-20"
          x="563.5"
          y="775.7"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-9"
          x="563.5"
          y="773.4"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-18"
          x="563.5"
          y="771.1"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-9"
          x="563.5"
          y="759.7"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-9"
          x="563.5"
          y="757.4"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-12"
          x="563.5"
          y="755.1"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-18"
          x="563.5"
          y="743.7"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-18"
          x="563.5"
          y="739.1"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-21"
          x="563.5"
          y="729.9"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-9"
          x="563.5"
          y="725.3"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-8"
          x="563.5"
          y="709.3"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-5"
          x="563.5"
          y="700.2"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-9"
          x="563.5"
          y="697.9"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-9"
          x="563.5"
          y="695.6"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-9"
          x="563.5"
          y="693.3"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-9"
          x="563.5"
          y="688.7"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-5"
          x="563.5"
          y="684.2"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-22"
          x="563.5"
          y="681.9"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-23"
          x="563.5"
          y="670.4"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-7"
          x="563.5"
          y="668.1"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-18"
          x="563.5"
          y="631.5"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-9"
          x="563.5"
          y="622.4"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-18"
          x="563.5"
          y="608.6"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-5"
          x="563.5"
          y="604.1"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-24"
          x="563.5"
          y="597.2"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-18"
          x="563.5"
          y="567.4"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-9"
          x="563.5"
          y="560.6"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-9"
          x="563.5"
          y="524"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-8"
          x="563.5"
          y="519.4"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-9"
          x="563.5"
          y="503.4"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-8"
          x="563.5"
          y="496.5"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-9"
          x="563.5"
          y="494.2"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-7"
          x="563.5"
          y="487.3"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-18"
          x="563.5"
          y="478.2"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-8"
          x="563.5"
          y="475.9"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-9"
          x="563.5"
          y="464.5"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-9"
          x="563.5"
          y="462.2"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-8"
          x="563.5"
          y="455.3"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-8"
          x="563.5"
          y="450.7"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-9"
          x="563.5"
          y="448.4"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-10"
          x="563.5"
          y="432.4"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-18"
          x="563.5"
          y="427.8"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-12"
          x="563.5"
          y="421"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-12"
          x="563.5"
          y="416.4"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-12"
          x="563.5"
          y="414.1"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-8"
          x="563.5"
          y="409.5"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-8"
          x="563.5"
          y="405"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-7"
          x="563.5"
          y="393.5"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-12"
          x="563.5"
          y="388.9"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-12"
          x="563.5"
          y="375.2"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-8"
          x="563.5"
          y="356.9"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-8"
          x="563.5"
          y="352.3"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-8"
          x="563.5"
          y="347.7"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-12"
          x="563.5"
          y="343.2"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-7"
          x="563.5"
          y="336.3"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-8"
          x="563.5"
          y="331.7"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-9"
          x="563.5"
          y="324.9"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-7"
          x="563.5"
          y="322.6"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-5"
          x="563.5"
          y="311.1"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-25"
          x="563.5"
          y="295.1"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-26"
          x="563.5"
          y="286"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-27"
          x="563.5"
          y="274.5"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-28"
          x="563.5"
          y="272.2"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-15"
          x="563.5"
          y="242.5"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-10"
          x="563.5"
          y="237.9"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-26"
          x="563.5"
          y="231"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-8"
          x="563.5"
          y="217.3"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-29"
          x="563.5"
          y="210.4"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-30"
          x="563.5"
          y="205.9"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-31"
          x="563.5"
          y="183"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-32"
          x="563.5"
          y="180.7"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-26"
          x="563.5"
          y="178.4"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-33"
          x="563.5"
          y="160.1"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-34"
          x="563.5"
          y="157.8"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-15"
          x="563.5"
          y="155.5"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-15"
          x="563.5"
          y="153.2"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-15"
          x="563.5"
          y="146.4"
          width="14.6"
          height="2.06"
        />
        <rect
          class="cls-7"
          x="563.5"
          y="125.8"
          width="14.6"
          height="2.06"
        />
      </g>
      <g id="Time_axis">
        <g>
          <line
            class="cls-35"
            x1="119.9"
            y1="1054.9"
            x2="120.9"
            y2="1054.9"
          />
          <line
            class="cls-36"
            x1="126.9"
            y1="1054.9"
            x2="580.1"
            y2="1054.9"
          />
          <line
            class="cls-35"
            x1="583.1"
            y1="1054.9"
            x2="584.1"
            y2="1054.9"
          />
          <polygon
            class="cls-37"
            points="122.5 1063.9 107 1054.9 122.5 1046 122.5 1063.9"
          />
          <polygon
            class="cls-37"
            points="581.5 1063.9 597 1054.9 581.5 1046 581.5 1063.9"
          />
        </g>
      </g>
      <g id="Time_axis_text">
        <text
          class="legend-text"
          transform="translate(611.5 1063.8)"
        >2019</text>
        <text
          class="legend-text"
          transform="translate(43.2 1063.8)"
        >1980</text>
      </g>
      <g id="label_2013">
        <text
          class="legend-text"
          transform="translate(550 98.5)"
        >2013</text>
      </g>
      <g id="Descriptor_text">
        <text
          class="viz-comment"
          transform="translate(162.1 219.4)"
        >and <tspan
          class="viz-emph"
          x="52"
          y="0"
        >Time</tspan><tspan
          x="112"
          y="0"
        >, where each year is</tspan><tspan
          class="viz-comment"
          x="0"
          y="42"
        >represented as a column of cells</tspan></text>
      </g>
      <g id="Descriptor_arrow">
        <g>
          <path
            class="cls-49"
            d="M531.2,339.1a57.9,57.9,0,0,1-47.2-57"
          />
          <polygon
            class="cls-50"
            points="529.9 331.3 542 340.1 528.3 346.2 529.9 331.3"
          />
        </g>
      </g>
    </svg>
  </div>
</template>

<script>
export default {
    name: "MatrixExplainerTime"
}
</script>

<style scoped>
#matrix-time-view {
        width: 100%;
    }

    .cls-1 {
        isolation: isolate;
      }

      .cls-2 {
        opacity: 0.8;
        mix-blend-mode: screen;
      }

      .cls-3 {
        fill: #e26660;
        stroke: #e26660;
      }

      .cls-10, .cls-11, .cls-12, .cls-13, .cls-14, .cls-15, .cls-16, .cls-17, .cls-18, .cls-19, .cls-20, .cls-21, .cls-22, .cls-23, .cls-24, .cls-25, .cls-26, .cls-27, .cls-28, .cls-29, .cls-3, .cls-30, .cls-31, .cls-32, .cls-33, .cls-34, .cls-4, .cls-5, .cls-6, .cls-7, .cls-8, .cls-9 {
        stroke-width: 0.5px;
      }

      .cls-4 {
        fill: #f4ed27;
        stroke: #f4ed27;
      }

      .cls-5 {
        fill: #20068f;
        stroke: #20068f;
      }

      .cls-6 {
        fill: #240691;
        stroke: #240691;
      }

      .cls-7 {
        fill: #1b068d;
        stroke: #1b068d;
      }

      .cls-8 {
        fill: #130789;
        stroke: #130789;
      }

      .cls-9 {
        fill: #19068c;
        stroke: #19068c;
      }

      .cls-10 {
        fill: #1d068e;
        stroke: #1d068e;
      }

      .cls-11 {
        fill: #220690;
        stroke: #220690;
      }

      .cls-12 {
        fill: #16078a;
        stroke: #16078a;
      }

      .cls-13 {
        fill: #f7e425;
        stroke: #f7e425;
      }

      .cls-14 {
        fill: #280592;
        stroke: #280592;
      }

      .cls-15 {
        fill: #f0f921;
        stroke: #f0f921;
      }

      .cls-16 {
        fill: #feb72d;
        stroke: #feb72d;
      }

      .cls-17 {
        fill: #fa9c3c;
        stroke: #fa9c3c;
      }

      .cls-18 {
        fill: #0d0887;
        stroke: #0d0887;
      }

      .cls-19 {
        fill: #fdaf31;
        stroke: #fdaf31;
      }

      .cls-20 {
        fill: #f1f426;
        stroke: #f1f426;
      }

      .cls-21 {
        fill: #f9983e;
        stroke: #f9983e;
      }

      .cls-22 {
        fill: #db5c68;
        stroke: #db5c68;
      }

      .cls-23 {
        fill: #3e049c;
        stroke: #3e049c;
      }

      .cls-24 {
        fill: #3c049b;
        stroke: #3c049b;
      }

      .cls-25 {
        fill: #f5eb27;
        stroke: #f5eb27;
      }

      .cls-26 {
        fill: #f2f227;
        stroke: #f2f227;
      }

      .cls-27 {
        fill: #f9dc24;
        stroke: #f9dc24;
      }

      .cls-28 {
        fill: #7e03a8;
        stroke: #7e03a8;
      }

      .cls-29 {
        fill: #f1f525;
        stroke: #f1f525;
      }

      .cls-30 {
        fill: #f3f027;
        stroke: #f3f027;
      }

      .cls-31 {
        fill: #350498;
        stroke: #350498;
      }

      .cls-32 {
        fill: #f6e626;
        stroke: #f6e626;
      }

      .cls-33 {
        fill: #5b01a5;
        stroke: #5b01a5;
      }

      .cls-34 {
        fill: #2f0596;
        stroke: #2f0596;
      }

      .cls-35, .cls-36, .cls-49 {
        fill: none;
        stroke-miterlimit: 10;
      }

      .cls-35, .cls-36 {
        stroke: #4d4c4d;
        stroke-width: 3px;
      }

      .cls-36 {
        stroke-dasharray: 2 6;
      }

      .cls-37 {
        fill: #4d4c4d;
      }

      .cls-38, .cls-39 {
        font-size: 26px;
        font-family: SourceSansPro-Regular, Source Sans Pro;
      }

      .cls-38, .cls-50 {
        fill: #7d7d7d;
      }

      .cls-39 {
        fill: #c1c0c0;
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
        letter-spacing: 0em;
      }

      .cls-43 {
        letter-spacing: -0.01em;
      }

      .cls-44 {
        letter-spacing: 0em;
      }

      .cls-45 {
        letter-spacing: -0.01em;
      }

      .cls-46 {
        letter-spacing: -0.01em;
      }

      .cls-47 {
        letter-spacing: -0.01em;
      }

      .cls-48 {
        letter-spacing: -0.02em;
      }

      .cls-49 {
        stroke: #7d7d7d;
      }
</style>