<template>
  <div id="matrix-temperature">
    <!-- h3 class="viz-title">
      Temperature of all DRB reaches during a year
    </h3 -->
    <svg
      xmlns="http://www.w3.org/2000/svg"
      xmlns:xlink="http://www.w3.org/1999/xlink"
      viewBox="0 0 700 1160"
    >
      <defs>
        <linearGradient
          id="linear-gradient-temp"
          x1="43.84"
          y1="1008.65"
          x2="44.84"
          y2="1008.65"
          gradientTransform="matrix(325, 0, 0, -20, -14058.5, 20241.6)"
          gradientUnits="userSpaceOnUse"
        >
          <stop
            offset="0"
            stop-color="#0d0887"
          />
          <stop
            offset="0"
            stop-color="#0d0887"
          />
          <stop
            offset="0.01"
            stop-color="#100788"
          />
          <stop
            offset="0.01"
            stop-color="#130789"
          />
          <stop
            offset="0.01"
            stop-color="#130789"
          />
          <stop
            offset="0.01"
            stop-color="#16078a"
          />
          <stop
            offset="0.02"
            stop-color="#19068c"
          />
          <stop
            offset="0.02"
            stop-color="#19068c"
          />
          <stop
            offset="0.02"
            stop-color="#1b068d"
          />
          <stop
            offset="0.02"
            stop-color="#1d068e"
          />
          <stop
            offset="0.03"
            stop-color="#20068f"
          />
          <stop
            offset="0.03"
            stop-color="#20068f"
          />
          <stop
            offset="0.03"
            stop-color="#220690"
          />
          <stop
            offset="0.04"
            stop-color="#240691"
          />
          <stop
            offset="0.04"
            stop-color="#240691"
          />
          <stop
            offset="0.04"
            stop-color="#260591"
          />
          <stop
            offset="0.04"
            stop-color="#280592"
          />
          <stop
            offset="0.05"
            stop-color="#280592"
          />
          <stop
            offset="0.05"
            stop-color="#2a0593"
          />
          <stop
            offset="0.05"
            stop-color="#2c0594"
          />
          <stop
            offset="0.05"
            stop-color="#2e0595"
          />
          <stop
            offset="0.06"
            stop-color="#2e0595"
          />
          <stop
            offset="0.06"
            stop-color="#2f0596"
          />
          <stop
            offset="0.06"
            stop-color="#310597"
          />
          <stop
            offset="0.07"
            stop-color="#310597"
          />
          <stop
            offset="0.07"
            stop-color="#330597"
          />
          <stop
            offset="0.07"
            stop-color="#350498"
          />
          <stop
            offset="0.07"
            stop-color="#350498"
          />
          <stop
            offset="0.08"
            stop-color="#370499"
          />
          <stop
            offset="0.08"
            stop-color="#38049a"
          />
          <stop
            offset="0.08"
            stop-color="#3a049a"
          />
          <stop
            offset="0.08"
            stop-color="#3a049a"
          />
          <stop
            offset="0.09"
            stop-color="#3c049b"
          />
          <stop
            offset="0.09"
            stop-color="#3e049c"
          />
          <stop
            offset="0.09"
            stop-color="#3e049c"
          />
          <stop
            offset="0.1"
            stop-color="#3f049c"
          />
          <stop
            offset="0.1"
            stop-color="#41049d"
          />
          <stop
            offset="0.1"
            stop-color="#41049d"
          />
          <stop
            offset="0.1"
            stop-color="#43039e"
          />
          <stop
            offset="0.11"
            stop-color="#44039e"
          />
          <stop
            offset="0.11"
            stop-color="#46039f"
          />
          <stop
            offset="0.11"
            stop-color="#46039f"
          />
          <stop
            offset="0.12"
            stop-color="#48039f"
          />
          <stop
            offset="0.12"
            stop-color="#4903a0"
          />
          <stop
            offset="0.12"
            stop-color="#4903a0"
          />
          <stop
            offset="0.12"
            stop-color="#4b03a1"
          />
          <stop
            offset="0.13"
            stop-color="#4c02a1"
          />
          <stop
            offset="0.13"
            stop-color="#4c02a1"
          />
          <stop
            offset="0.13"
            stop-color="#4e02a2"
          />
          <stop
            offset="0.13"
            stop-color="#5002a2"
          />
          <stop
            offset="0.14"
            stop-color="#5102a3"
          />
          <stop
            offset="0.14"
            stop-color="#5102a3"
          />
          <stop
            offset="0.14"
            stop-color="#5302a3"
          />
          <stop
            offset="0.15"
            stop-color="#5502a4"
          />
          <stop
            offset="0.15"
            stop-color="#5502a4"
          />
          <stop
            offset="0.15"
            stop-color="#5601a4"
          />
          <stop
            offset="0.15"
            stop-color="#5801a4"
          />
          <stop
            offset="0.16"
            stop-color="#5801a4"
          />
          <stop
            offset="0.16"
            stop-color="#5901a5"
          />
          <stop
            offset="0.16"
            stop-color="#5b01a5"
          />
          <stop
            offset="0.16"
            stop-color="#5c01a6"
          />
          <stop
            offset="0.17"
            stop-color="#5c01a6"
          />
          <stop
            offset="0.17"
            stop-color="#5e01a6"
          />
          <stop
            offset="0.17"
            stop-color="#6001a6"
          />
          <stop
            offset="0.18"
            stop-color="#6001a6"
          />
          <stop
            offset="0.18"
            stop-color="#6100a7"
          />
          <stop
            offset="0.18"
            stop-color="#6300a7"
          />
          <stop
            offset="0.18"
            stop-color="#6300a7"
          />
          <stop
            offset="0.19"
            stop-color="#6400a7"
          />
          <stop
            offset="0.19"
            stop-color="#6600a7"
          />
          <stop
            offset="0.19"
            stop-color="#6700a8"
          />
          <stop
            offset="0.19"
            stop-color="#6700a8"
          />
          <stop
            offset="0.2"
            stop-color="#6900a8"
          />
          <stop
            offset="0.2"
            stop-color="#6a00a8"
          />
          <stop
            offset="0.2"
            stop-color="#6a00a8"
          />
          <stop
            offset="0.21"
            stop-color="#6c00a8"
          />
          <stop
            offset="0.21"
            stop-color="#6e00a8"
          />
          <stop
            offset="0.21"
            stop-color="#6f00a8"
          />
          <stop
            offset="0.21"
            stop-color="#6f00a8"
          />
          <stop
            offset="0.22"
            stop-color="#7100a8"
          />
          <stop
            offset="0.22"
            stop-color="#7201a8"
          />
          <stop
            offset="0.22"
            stop-color="#7201a8"
          />
          <stop
            offset="0.22"
            stop-color="#7401a8"
          />
          <stop
            offset="0.23"
            stop-color="#7501a8"
          />
          <stop
            offset="0.23"
            stop-color="#7501a8"
          />
          <stop
            offset="0.23"
            stop-color="#7701a8"
          />
          <stop
            offset="0.24"
            stop-color="#7801a8"
          />
          <stop
            offset="0.24"
            stop-color="#7a02a8"
          />
          <stop
            offset="0.24"
            stop-color="#7a02a8"
          />
          <stop
            offset="0.24"
            stop-color="#7b02a8"
          />
          <stop
            offset="0.25"
            stop-color="#7d03a8"
          />
          <stop
            offset="0.25"
            stop-color="#7d03a8"
          />
          <stop
            offset="0.25"
            stop-color="#7e03a8"
          />
          <stop
            offset="0.25"
            stop-color="#8004a8"
          />
          <stop
            offset="0.26"
            stop-color="#8004a8"
          />
          <stop
            offset="0.26"
            stop-color="#8104a7"
          />
          <stop
            offset="0.26"
            stop-color="#8305a7"
          />
          <stop
            offset="0.27"
            stop-color="#8405a7"
          />
          <stop
            offset="0.27"
            stop-color="#8405a7"
          />
          <stop
            offset="0.27"
            stop-color="#8606a6"
          />
          <stop
            offset="0.27"
            stop-color="#8707a6"
          />
          <stop
            offset="0.28"
            stop-color="#8707a6"
          />
          <stop
            offset="0.28"
            stop-color="#8808a6"
          />
          <stop
            offset="0.28"
            stop-color="#8a09a5"
          />
          <stop
            offset="0.28"
            stop-color="#8a09a5"
          />
          <stop
            offset="0.29"
            stop-color="#8b0aa5"
          />
          <stop
            offset="0.29"
            stop-color="#8d0ba5"
          />
          <stop
            offset="0.29"
            stop-color="#8e0ca4"
          />
          <stop
            offset="0.3"
            stop-color="#8e0ca4"
          />
          <stop
            offset="0.3"
            stop-color="#8f0da4"
          />
          <stop
            offset="0.3"
            stop-color="#910ea3"
          />
          <stop
            offset="0.3"
            stop-color="#910ea3"
          />
          <stop
            offset="0.31"
            stop-color="#920fa3"
          />
          <stop
            offset="0.31"
            stop-color="#9410a2"
          />
          <stop
            offset="0.31"
            stop-color="#9410a2"
          />
          <stop
            offset="0.32"
            stop-color="#9511a1"
          />
          <stop
            offset="0.32"
            stop-color="#9613a1"
          />
          <stop
            offset="0.32"
            stop-color="#9814a0"
          />
          <stop
            offset="0.32"
            stop-color="#9814a0"
          />
          <stop
            offset="0.33"
            stop-color="#99159f"
          />
          <stop
            offset="0.33"
            stop-color="#9a169f"
          />
          <stop
            offset="0.33"
            stop-color="#9a169f"
          />
          <stop
            offset="0.33"
            stop-color="#9c179e"
          />
          <stop
            offset="0.34"
            stop-color="#9d189d"
          />
          <stop
            offset="0.34"
            stop-color="#9d189d"
          />
          <stop
            offset="0.34"
            stop-color="#9e199d"
          />
          <stop
            offset="0.35"
            stop-color="#a01a9c"
          />
          <stop
            offset="0.35"
            stop-color="#a11b9b"
          />
          <stop
            offset="0.35"
            stop-color="#a11b9b"
          />
          <stop
            offset="0.35"
            stop-color="#a21d9a"
          />
          <stop
            offset="0.36"
            stop-color="#a31e9a"
          />
          <stop
            offset="0.36"
            stop-color="#a31e9a"
          />
          <stop
            offset="0.36"
            stop-color="#a51f99"
          />
          <stop
            offset="0.36"
            stop-color="#a62098"
          />
          <stop
            offset="0.37"
            stop-color="#a62098"
          />
          <stop
            offset="0.37"
            stop-color="#a72197"
          />
          <stop
            offset="0.37"
            stop-color="#a82296"
          />
          <stop
            offset="0.38"
            stop-color="#aa2395"
          />
          <stop
            offset="0.38"
            stop-color="#aa2395"
          />
          <stop
            offset="0.38"
            stop-color="#ab2494"
          />
          <stop
            offset="0.38"
            stop-color="#ac2694"
          />
          <stop
            offset="0.39"
            stop-color="#ac2694"
          />
          <stop
            offset="0.39"
            stop-color="#ad2793"
          />
          <stop
            offset="0.39"
            stop-color="#ae2892"
          />
          <stop
            offset="0.39"
            stop-color="#ae2892"
          />
          <stop
            offset="0.4"
            stop-color="#b02991"
          />
          <stop
            offset="0.4"
            stop-color="#b12a90"
          />
          <stop
            offset="0.4"
            stop-color="#b22b8f"
          />
          <stop
            offset="0.41"
            stop-color="#b22b8f"
          />
          <stop
            offset="0.41"
            stop-color="#b32c8e"
          />
          <stop
            offset="0.41"
            stop-color="#b42e8d"
          />
          <stop
            offset="0.41"
            stop-color="#b42e8d"
          />
          <stop
            offset="0.42"
            stop-color="#b52f8c"
          />
          <stop
            offset="0.42"
            stop-color="#b6308b"
          />
          <stop
            offset="0.42"
            stop-color="#b7318a"
          />
          <stop
            offset="0.42"
            stop-color="#b7318a"
          />
          <stop
            offset="0.43"
            stop-color="#b83289"
          />
          <stop
            offset="0.43"
            stop-color="#ba3388"
          />
          <stop
            offset="0.43"
            stop-color="#ba3388"
          />
          <stop
            offset="0.44"
            stop-color="#bb3488"
          />
          <stop
            offset="0.44"
            stop-color="#bc3587"
          />
          <stop
            offset="0.44"
            stop-color="#bc3587"
          />
          <stop
            offset="0.44"
            stop-color="#bd3786"
          />
          <stop
            offset="0.45"
            stop-color="#be3885"
          />
          <stop
            offset="0.45"
            stop-color="#bf3984"
          />
          <stop
            offset="0.45"
            stop-color="#bf3984"
          />
          <stop
            offset="0.45"
            stop-color="#c03a83"
          />
          <stop
            offset="0.46"
            stop-color="#c13b82"
          />
          <stop
            offset="0.46"
            stop-color="#c13b82"
          />
          <stop
            offset="0.46"
            stop-color="#c23c81"
          />
          <stop
            offset="0.47"
            stop-color="#c33d80"
          />
          <stop
            offset="0.47"
            stop-color="#c33d80"
          />
          <stop
            offset="0.47"
            stop-color="#c43e7f"
          />
          <stop
            offset="0.47"
            stop-color="#c5407e"
          />
          <stop
            offset="0.48"
            stop-color="#c6417d"
          />
          <stop
            offset="0.48"
            stop-color="#c6417d"
          />
          <stop
            offset="0.48"
            stop-color="#c7427c"
          />
          <stop
            offset="0.48"
            stop-color="#c8437b"
          />
          <stop
            offset="0.49"
            stop-color="#c8437b"
          />
          <stop
            offset="0.49"
            stop-color="#c9447a"
          />
          <stop
            offset="0.49"
            stop-color="#ca457a"
          />
          <stop
            offset="0.5"
            stop-color="#ca457a"
          />
          <stop
            offset="0.5"
            stop-color="#cb4679"
          />
          <stop
            offset="0.5"
            stop-color="#cc4778"
          />
          <stop
            offset="0.5"
            stop-color="#cc4977"
          />
          <stop
            offset="0.51"
            stop-color="#cc4977"
          />
          <stop
            offset="0.51"
            stop-color="#cd4a76"
          />
          <stop
            offset="0.51"
            stop-color="#ce4b75"
          />
          <stop
            offset="0.52"
            stop-color="#ce4b75"
          />
          <stop
            offset="0.52"
            stop-color="#cf4c74"
          />
          <stop
            offset="0.52"
            stop-color="#d04d73"
          />
          <stop
            offset="0.52"
            stop-color="#d04d73"
          />
          <stop
            offset="0.53"
            stop-color="#d14e72"
          />
          <stop
            offset="0.53"
            stop-color="#d24f71"
          />
          <stop
            offset="0.53"
            stop-color="#d35171"
          />
          <stop
            offset="0.53"
            stop-color="#d35171"
          />
          <stop
            offset="0.54"
            stop-color="#d45270"
          />
          <stop
            offset="0.54"
            stop-color="#d5536f"
          />
          <stop
            offset="0.54"
            stop-color="#d5536f"
          />
          <stop
            offset="0.55"
            stop-color="#d5546e"
          />
          <stop
            offset="0.55"
            stop-color="#d6556d"
          />
          <stop
            offset="0.55"
            stop-color="#d6556d"
          />
          <stop
            offset="0.55"
            stop-color="#d7566c"
          />
          <stop
            offset="0.56"
            stop-color="#d8576b"
          />
          <stop
            offset="0.56"
            stop-color="#d9586a"
          />
          <stop
            offset="0.56"
            stop-color="#d9586a"
          />
          <stop
            offset="0.56"
            stop-color="#da5a6a"
          />
          <stop
            offset="0.57"
            stop-color="#da5b69"
          />
          <stop
            offset="0.57"
            stop-color="#da5b69"
          />
          <stop
            offset="0.57"
            stop-color="#db5c68"
          />
          <stop
            offset="0.58"
            stop-color="#dc5d67"
          />
          <stop
            offset="0.58"
            stop-color="#dc5d67"
          />
          <stop
            offset="0.58"
            stop-color="#dd5e66"
          />
          <stop
            offset="0.58"
            stop-color="#de5f65"
          />
          <stop
            offset="0.59"
            stop-color="#de6164"
          />
          <stop
            offset="0.59"
            stop-color="#de6164"
          />
          <stop
            offset="0.59"
            stop-color="#df6263"
          />
          <stop
            offset="0.59"
            stop-color="#e06363"
          />
          <stop
            offset="0.6"
            stop-color="#e06363"
          />
          <stop
            offset="0.6"
            stop-color="#e16462"
          />
          <stop
            offset="0.6"
            stop-color="#e26561"
          />
          <stop
            offset="0.61"
            stop-color="#e26660"
          />
          <stop
            offset="0.61"
            stop-color="#e26660"
          />
          <stop
            offset="0.61"
            stop-color="#e3685f"
          />
          <stop
            offset="0.61"
            stop-color="#e4695e"
          />
          <stop
            offset="0.62"
            stop-color="#e4695e"
          />
          <stop
            offset="0.62"
            stop-color="#e56a5d"
          />
          <stop
            offset="0.62"
            stop-color="#e56b5d"
          />
          <stop
            offset="0.62"
            stop-color="#e56b5d"
          />
          <stop
            offset="0.63"
            stop-color="#e66c5c"
          />
          <stop
            offset="0.63"
            stop-color="#e76e5b"
          />
          <stop
            offset="0.63"
            stop-color="#e76f5a"
          />
          <stop
            offset="0.64"
            stop-color="#e76f5a"
          />
          <stop
            offset="0.64"
            stop-color="#e87059"
          />
          <stop
            offset="0.64"
            stop-color="#e97158"
          />
          <stop
            offset="0.64"
            stop-color="#e97158"
          />
          <stop
            offset="0.65"
            stop-color="#e97257"
          />
          <stop
            offset="0.65"
            stop-color="#ea7457"
          />
          <stop
            offset="0.65"
            stop-color="#ea7457"
          />
          <stop
            offset="0.65"
            stop-color="#eb7556"
          />
          <stop
            offset="0.66"
            stop-color="#eb7655"
          />
          <stop
            offset="0.66"
            stop-color="#ec7754"
          />
          <stop
            offset="0.66"
            stop-color="#ec7754"
          />
          <stop
            offset="0.67"
            stop-color="#ed7953"
          />
          <stop
            offset="0.67"
            stop-color="#ed7a52"
          />
          <stop
            offset="0.67"
            stop-color="#ed7a52"
          />
          <stop
            offset="0.67"
            stop-color="#ee7b51"
          />
          <stop
            offset="0.68"
            stop-color="#ef7c51"
          />
          <stop
            offset="0.68"
            stop-color="#ef7c51"
          />
          <stop
            offset="0.68"
            stop-color="#ef7e50"
          />
          <stop
            offset="0.68"
            stop-color="#f07f4f"
          />
          <stop
            offset="0.69"
            stop-color="#f0804e"
          />
          <stop
            offset="0.69"
            stop-color="#f0804e"
          />
          <stop
            offset="0.69"
            stop-color="#f1814d"
          />
          <stop
            offset="0.7"
            stop-color="#f1834c"
          />
          <stop
            offset="0.7"
            stop-color="#f1834c"
          />
          <stop
            offset="0.7"
            stop-color="#f2844b"
          />
          <stop
            offset="0.7"
            stop-color="#f3854b"
          />
          <stop
            offset="0.71"
            stop-color="#f3854b"
          />
          <stop
            offset="0.71"
            stop-color="#f3874a"
          />
          <stop
            offset="0.71"
            stop-color="#f48849"
          />
          <stop
            offset="0.72"
            stop-color="#f48948"
          />
          <stop
            offset="0.72"
            stop-color="#f48948"
          />
          <stop
            offset="0.72"
            stop-color="#f58b47"
          />
          <stop
            offset="0.72"
            stop-color="#f58c46"
          />
          <stop
            offset="0.73"
            stop-color="#f58c46"
          />
          <stop
            offset="0.73"
            stop-color="#f68d45"
          />
          <stop
            offset="0.73"
            stop-color="#f68f44"
          />
          <stop
            offset="0.73"
            stop-color="#f68f44"
          />
          <stop
            offset="0.74"
            stop-color="#f79044"
          />
          <stop
            offset="0.74"
            stop-color="#f79143"
          />
          <stop
            offset="0.74"
            stop-color="#f79342"
          />
          <stop
            offset="0.75"
            stop-color="#f79342"
          />
          <stop
            offset="0.75"
            stop-color="#f89441"
          />
          <stop
            offset="0.75"
            stop-color="#f89540"
          />
          <stop
            offset="0.75"
            stop-color="#f89540"
          />
          <stop
            offset="0.76"
            stop-color="#f9973f"
          />
          <stop
            offset="0.76"
            stop-color="#f9983e"
          />
          <stop
            offset="0.76"
            stop-color="#f9983e"
          />
          <stop
            offset="0.76"
            stop-color="#f99a3e"
          />
          <stop
            offset="0.77"
            stop-color="#fa9b3d"
          />
          <stop
            offset="0.77"
            stop-color="#fa9c3c"
          />
          <stop
            offset="0.77"
            stop-color="#fa9c3c"
          />
          <stop
            offset="0.78"
            stop-color="#fa9e3b"
          />
          <stop
            offset="0.78"
            stop-color="#fb9f3a"
          />
          <stop
            offset="0.78"
            stop-color="#fb9f3a"
          />
          <stop
            offset="0.78"
            stop-color="#fba139"
          />
          <stop
            offset="0.79"
            stop-color="#fba238"
          />
          <stop
            offset="0.79"
            stop-color="#fba238"
          />
          <stop
            offset="0.79"
            stop-color="#fca338"
          />
          <stop
            offset="0.79"
            stop-color="#fca537"
          />
          <stop
            offset="0.8"
            stop-color="#fca636"
          />
          <stop
            offset="0.8"
            stop-color="#fca636"
          />
          <stop
            offset="0.8"
            stop-color="#fca835"
          />
          <stop
            offset="0.81"
            stop-color="#fca934"
          />
          <stop
            offset="0.81"
            stop-color="#fca934"
          />
          <stop
            offset="0.81"
            stop-color="#fdab33"
          />
          <stop
            offset="0.81"
            stop-color="#fdac33"
          />
          <stop
            offset="0.82"
            stop-color="#fdae32"
          />
          <stop
            offset="0.82"
            stop-color="#fdae32"
          />
          <stop
            offset="0.82"
            stop-color="#fdaf31"
          />
          <stop
            offset="0.82"
            stop-color="#fdb130"
          />
          <stop
            offset="0.83"
            stop-color="#fdb130"
          />
          <stop
            offset="0.83"
            stop-color="#fdb22f"
          />
          <stop
            offset="0.83"
            stop-color="#fdb42f"
          />
          <stop
            offset="0.84"
            stop-color="#fdb42f"
          />
          <stop
            offset="0.84"
            stop-color="#fdb52e"
          />
          <stop
            offset="0.84"
            stop-color="#feb72d"
          />
          <stop
            offset="0.84"
            stop-color="#feb82c"
          />
          <stop
            offset="0.85"
            stop-color="#feb82c"
          />
          <stop
            offset="0.85"
            stop-color="#feba2c"
          />
          <stop
            offset="0.85"
            stop-color="#febb2b"
          />
          <stop
            offset="0.85"
            stop-color="#febb2b"
          />
          <stop
            offset="0.86"
            stop-color="#febd2a"
          />
          <stop
            offset="0.86"
            stop-color="#febe2a"
          />
          <stop
            offset="0.86"
            stop-color="#febe2a"
          />
          <stop
            offset="0.87"
            stop-color="#fec029"
          />
          <stop
            offset="0.87"
            stop-color="#fdc229"
          />
          <stop
            offset="0.87"
            stop-color="#fdc328"
          />
          <stop
            offset="0.87"
            stop-color="#fdc328"
          />
          <stop
            offset="0.88"
            stop-color="#fdc527"
          />
          <stop
            offset="0.88"
            stop-color="#fdc627"
          />
          <stop
            offset="0.88"
            stop-color="#fdc627"
          />
          <stop
            offset="0.88"
            stop-color="#fdc827"
          />
          <stop
            offset="0.89"
            stop-color="#fdca26"
          />
          <stop
            offset="0.89"
            stop-color="#fdca26"
          />
          <stop
            offset="0.89"
            stop-color="#fdcb26"
          />
          <stop
            offset="0.9"
            stop-color="#fccd25"
          />
          <stop
            offset="0.9"
            stop-color="#fcce25"
          />
          <stop
            offset="0.9"
            stop-color="#fcce25"
          />
          <stop
            offset="0.9"
            stop-color="#fcd025"
          />
          <stop
            offset="0.91"
            stop-color="#fcd225"
          />
          <stop
            offset="0.91"
            stop-color="#fcd225"
          />
          <stop
            offset="0.91"
            stop-color="#fbd324"
          />
          <stop
            offset="0.92"
            stop-color="#fbd524"
          />
          <stop
            offset="0.92"
            stop-color="#fbd524"
          />
          <stop
            offset="0.92"
            stop-color="#fbd724"
          />
          <stop
            offset="0.92"
            stop-color="#fad824"
          />
          <stop
            offset="0.93"
            stop-color="#fada24"
          />
          <stop
            offset="0.93"
            stop-color="#fada24"
          />
          <stop
            offset="0.93"
            stop-color="#f9dc24"
          />
          <stop
            offset="0.93"
            stop-color="#f9dd25"
          />
          <stop
            offset="0.94"
            stop-color="#f9dd25"
          />
          <stop
            offset="0.94"
            stop-color="#f8df25"
          />
          <stop
            offset="0.94"
            stop-color="#f8e125"
          />
          <stop
            offset="0.95"
            stop-color="#f8e125"
          />
          <stop
            offset="0.95"
            stop-color="#f7e225"
          />
          <stop
            offset="0.95"
            stop-color="#f7e425"
          />
          <stop
            offset="0.95"
            stop-color="#f6e626"
          />
          <stop
            offset="0.96"
            stop-color="#f6e626"
          />
          <stop
            offset="0.96"
            stop-color="#f6e826"
          />
          <stop
            offset="0.96"
            stop-color="#f5e926"
          />
          <stop
            offset="0.96"
            stop-color="#f5e926"
          />
          <stop
            offset="0.97"
            stop-color="#f5eb27"
          />
          <stop
            offset="0.97"
            stop-color="#f4ed27"
          />
          <stop
            offset="0.97"
            stop-color="#f4ed27"
          />
          <stop
            offset="0.98"
            stop-color="#f3ee27"
          />
          <stop
            offset="0.98"
            stop-color="#f3f027"
          />
          <stop
            offset="0.98"
            stop-color="#f2f227"
          />
          <stop
            offset="0.98"
            stop-color="#f2f227"
          />
          <stop
            offset="0.99"
            stop-color="#f1f426"
          />
          <stop
            offset="0.99"
            stop-color="#f1f525"
          />
          <stop
            offset="0.99"
            stop-color="#f1f525"
          />
          <stop
            offset="0.99"
            stop-color="#f0f724"
          />
          <stop
            offset="1"
            stop-color="#f0f921"
          />
          <stop
            offset="1"
            stop-color="#f0f921"
          />
        </linearGradient>
      </defs>
      <g id="matrix_background">
        <g>
          <rect
            class="matrix_background"
            x="39"
            y="113.6"
            width="605.4"
            height="972.23"
          />
        </g>
      </g>
      <g id="date_labels">
        <text
          class="explainer-minor-text"
          transform="translate(420.6 1119.4)"
        >Sept</text>
        <text
          class="explainer-minor-text"
          transform="translate(523.9 1119.4)"
        >Nov</text>
        <text
          class="explainer-minor-text"
          transform="translate(610.2 1119.4)"
        >Dec</text>
        <text
          class="explainer-minor-text"
          transform="translate(323.4 1119.4)"
        >Jul</text>
        <text
          class="explainer-minor-text"
          transform="translate(218.9 1119.4)"
        >May</text>
        <text
          class="explainer-minor-text"
          transform="translate(118.3 1119.4)"
        >Mar</text>
        <text
          class="explainer-minor-text"
          transform="translate(29 1119.4)"
        >Jan</text>
      </g>
      <g id="date_tick_marks">
        <line
          class="tick-marks"
          x1="47.3"
          y1="1091.7"
          x2="47.3"
          y2="1101.1"
        />
        <line
          class="tick-marks"
          x1="137.7"
          y1="1091.7"
          x2="137.7"
          y2="1101.1"
        />
        <line
          class="tick-marks"
          x1="339.9"
          y1="1091.7"
          x2="339.9"
          y2="1101.1"
        />
        <line
          class="tick-marks"
          x1="238.9"
          y1="1091.7"
          x2="238.9"
          y2="1101.1"
        />
        <line
          class="tick-marks"
          x1="544"
          y1="1091.7"
          x2="544"
          y2="1101.1"
        />
        <line
          class="tick-marks"
          x1="630.3"
          y1="1091.7"
          x2="630.3"
          y2="1101.1"
        />
        <line
          class="tick-marks"
          x1="442.8"
          y1="1091.7"
          x2="442.8"
          y2="1101.1"
        />
      </g>
      <g id="legend">
        <rect
          class="cls-8"
          x="187.1"
          y="60.4"
          width="325"
          height="20"
        />
      </g>
      <g>
        <image
          width="100%"
          height="100%"
          xlink:href="@/assets/components/c2p3-matrix.png"
        />
      </g>
      <g id="legend_text">
        <text
          class="explainer-minor-text"
          transform="translate(130 75)"
        >0 °C</text>
        <text
          class="explainer-minor-text"
          transform="translate(528.6 75)"
        >30 °C</text>
      </g>
      <g id="orientation-axis">
        <g
          id="Space_axis"
          data-name="Space axis"
        >
          <g>
            <line
              class="NS_arrow"
              x1="673.2"
              y1="177"
              x2="673.2"
              y2="1041.4"
            />
            <polygon
              class="cls-783"
              points="662.9 179.5 673.2 164.4 683.6 179.5 662.9 179.5"
            />
            <polygon
              class="cls-783"
              points="662.9 1038.8 673.2 1054 683.6 1038.8 662.9 1038.8"
            />
          </g>
        </g>
        <text
          class="explainer-minor-text"
          transform="translate(664.9 142.9)"
        >N</text>
        <text
          class="explainer-minor-text"
          transform="translate(666.3 1084.8)"
        >S</text>
      </g>
    </svg>    
    <svg class="filter">
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
</template>

<script>
export default {
    name: "MatrixTemperature"
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

#matrix-background{
  fill: $boxCharcoal;
}
.matrix_background {
  fill: $boxCharcoal;
  filter: url(#shadow2);
}
#matrix-temperature {
        width: 100%;
}
.NS_arrow {
        stroke: $grayBlue;
        stroke-width: 3px;
        stroke-dasharray: 2 6;
}
.filter {
  height: 0;
  width: 0;
}
.cls-1, .cls-784 {
        isolation: isolate;
      }

      .cls-2 {
        opacity: 0.8;
        mix-blend-mode: screen;
      }

      .cls-3 {
        font-size: 18.63px;
        fill: #c1c0c0;
      }

      .cls-3, .cls-780, .cls-784 {
        font-family: SourceSansPro-Regular, Source Sans Pro;
      }

      .cls-4 {
        letter-spacing: -0.02em;
      }

      .cls-5 {
        letter-spacing: 0em;
      }

      .cls-6 {
        letter-spacing: 0em;
      }

      .cls-7, .cls-781, .cls-782 {
        fill: none;
        stroke-miterlimit: 10;
      }

      .cls-7 {
        stroke: #c1c0c0;
      }

      .cls-8 {
        fill: url(#linear-gradient-temp);
      }

      .cls-9 {
        fill: #9acbe1;
        stroke: #9acbe1;
      }

      .cls-10, .cls-100, .cls-101, .cls-102, .cls-103, .cls-104, .cls-105, .cls-106, .cls-107, .cls-108, .cls-109, .cls-11, .cls-110, .cls-111, .cls-112, .cls-113, .cls-114, .cls-115, .cls-116, .cls-117, .cls-118, .cls-119, .cls-12, .cls-120, .cls-121, .cls-122, .cls-123, .cls-124, .cls-125, .cls-126, .cls-127, .cls-128, .cls-129, .cls-13, .cls-130, .cls-131, .cls-132, .cls-133, .cls-134, .cls-135, .cls-136, .cls-137, .cls-138, .cls-139, .cls-14, .cls-140, .cls-141, .cls-142, .cls-143, .cls-144, .cls-145, .cls-146, .cls-147, .cls-148, .cls-149, .cls-15, .cls-150, .cls-151, .cls-152, .cls-153, .cls-154, .cls-155, .cls-156, .cls-157, .cls-158, .cls-159, .cls-16, .cls-160, .cls-161, .cls-162, .cls-163, .cls-164, .cls-165, .cls-166, .cls-167, .cls-168, .cls-169, .cls-17, .cls-170, .cls-171, .cls-172, .cls-173, .cls-174, .cls-175, .cls-176, .cls-177, .cls-178, .cls-179, .cls-18, .cls-180, .cls-181, .cls-182, .cls-183, .cls-184, .cls-185, .cls-186, .cls-187, .cls-188, .cls-189, .cls-19, .cls-190, .cls-191, .cls-192, .cls-193, .cls-194, .cls-195, .cls-196, .cls-197, .cls-198, .cls-199, .cls-20, .cls-200, .cls-201, .cls-202, .cls-203, .cls-204, .cls-205, .cls-206, .cls-207, .cls-208, .cls-209, .cls-21, .cls-210, .cls-211, .cls-212, .cls-213, .cls-214, .cls-215, .cls-216, .cls-217, .cls-218, .cls-219, .cls-22, .cls-220, .cls-221, .cls-222, .cls-223, .cls-224, .cls-225, .cls-226, .cls-227, .cls-228, .cls-229, .cls-23, .cls-230, .cls-231, .cls-232, .cls-233, .cls-234, .cls-235, .cls-236, .cls-237, .cls-238, .cls-239, .cls-24, .cls-240, .cls-241, .cls-242, .cls-243, .cls-244, .cls-245, .cls-246, .cls-247, .cls-248, .cls-249, .cls-25, .cls-250, .cls-251, .cls-252, .cls-253, .cls-254, .cls-255, .cls-256, .cls-257, .cls-258, .cls-259, .cls-26, .cls-260, .cls-261, .cls-262, .cls-263, .cls-264, .cls-265, .cls-266, .cls-267, .cls-268, .cls-269, .cls-27, .cls-270, .cls-271, .cls-272, .cls-273, .cls-274, .cls-275, .cls-276, .cls-277, .cls-278, .cls-279, .cls-28, .cls-280, .cls-281, .cls-282, .cls-283, .cls-284, .cls-285, .cls-286, .cls-287, .cls-288, .cls-289, .cls-29, .cls-290, .cls-291, .cls-292, .cls-293, .cls-294, .cls-295, .cls-296, .cls-297, .cls-298, .cls-299, .cls-30, .cls-300, .cls-301, .cls-302, .cls-303, .cls-304, .cls-305, .cls-306, .cls-307, .cls-308, .cls-309, .cls-31, .cls-310, .cls-311, .cls-312, .cls-313, .cls-314, .cls-315, .cls-316, .cls-317, .cls-318, .cls-319, .cls-32, .cls-320, .cls-321, .cls-322, .cls-323, .cls-324, .cls-325, .cls-326, .cls-327, .cls-328, .cls-329, .cls-33, .cls-330, .cls-331, .cls-332, .cls-333, .cls-334, .cls-335, .cls-336, .cls-337, .cls-338, .cls-339, .cls-34, .cls-340, .cls-341, .cls-342, .cls-343, .cls-344, .cls-345, .cls-346, .cls-347, .cls-348, .cls-349, .cls-35, .cls-350, .cls-351, .cls-352, .cls-353, .cls-354, .cls-355, .cls-356, .cls-357, .cls-358, .cls-359, .cls-36, .cls-360, .cls-361, .cls-362, .cls-363, .cls-364, .cls-365, .cls-366, .cls-367, .cls-368, .cls-369, .cls-37, .cls-370, .cls-371, .cls-372, .cls-373, .cls-374, .cls-375, .cls-376, .cls-377, .cls-378, .cls-379, .cls-38, .cls-380, .cls-381, .cls-382, .cls-383, .cls-384, .cls-385, .cls-386, .cls-387, .cls-388, .cls-389, .cls-39, .cls-390, .cls-391, .cls-392, .cls-393, .cls-394, .cls-395, .cls-396, .cls-397, .cls-398, .cls-399, .cls-40, .cls-400, .cls-401, .cls-402, .cls-403, .cls-404, .cls-405, .cls-406, .cls-407, .cls-408, .cls-409, .cls-41, .cls-410, .cls-411, .cls-412, .cls-413, .cls-414, .cls-415, .cls-416, .cls-417, .cls-418, .cls-419, .cls-42, .cls-420, .cls-421, .cls-422, .cls-423, .cls-424, .cls-425, .cls-426, .cls-427, .cls-428, .cls-429, .cls-43, .cls-430, .cls-431, .cls-432, .cls-433, .cls-434, .cls-435, .cls-436, .cls-437, .cls-438, .cls-439, .cls-44, .cls-440, .cls-441, .cls-442, .cls-443, .cls-444, .cls-445, .cls-446, .cls-447, .cls-448, .cls-449, .cls-45, .cls-450, .cls-451, .cls-452, .cls-453, .cls-454, .cls-455, .cls-456, .cls-457, .cls-458, .cls-459, .cls-46, .cls-460, .cls-461, .cls-462, .cls-463, .cls-464, .cls-465, .cls-466, .cls-467, .cls-468, .cls-469, .cls-47, .cls-470, .cls-471, .cls-472, .cls-473, .cls-474, .cls-475, .cls-476, .cls-477, .cls-478, .cls-479, .cls-48, .cls-480, .cls-481, .cls-482, .cls-483, .cls-484, .cls-485, .cls-486, .cls-487, .cls-488, .cls-489, .cls-49, .cls-490, .cls-491, .cls-492, .cls-493, .cls-494, .cls-495, .cls-496, .cls-497, .cls-498, .cls-499, .cls-50, .cls-500, .cls-501, .cls-502, .cls-503, .cls-504, .cls-505, .cls-506, .cls-507, .cls-508, .cls-509, .cls-51, .cls-510, .cls-511, .cls-512, .cls-513, .cls-514, .cls-515, .cls-516, .cls-517, .cls-518, .cls-519, .cls-52, .cls-520, .cls-521, .cls-522, .cls-523, .cls-524, .cls-525, .cls-526, .cls-527, .cls-528, .cls-529, .cls-53, .cls-530, .cls-531, .cls-532, .cls-533, .cls-534, .cls-535, .cls-536, .cls-537, .cls-538, .cls-539, .cls-54, .cls-540, .cls-541, .cls-542, .cls-543, .cls-544, .cls-545, .cls-546, .cls-547, .cls-548, .cls-549, .cls-55, .cls-550, .cls-551, .cls-552, .cls-553, .cls-554, .cls-555, .cls-556, .cls-557, .cls-558, .cls-559, .cls-56, .cls-560, .cls-561, .cls-562, .cls-563, .cls-564, .cls-565, .cls-566, .cls-567, .cls-568, .cls-569, .cls-57, .cls-570, .cls-571, .cls-572, .cls-573, .cls-574, .cls-575, .cls-576, .cls-577, .cls-578, .cls-579, .cls-58, .cls-580, .cls-581, .cls-582, .cls-583, .cls-584, .cls-585, .cls-586, .cls-587, .cls-588, .cls-589, .cls-59, .cls-590, .cls-591, .cls-592, .cls-593, .cls-594, .cls-595, .cls-596, .cls-597, .cls-598, .cls-599, .cls-60, .cls-600, .cls-601, .cls-602, .cls-603, .cls-604, .cls-605, .cls-606, .cls-607, .cls-608, .cls-609, .cls-61, .cls-610, .cls-611, .cls-612, .cls-613, .cls-614, .cls-615, .cls-616, .cls-617, .cls-618, .cls-619, .cls-62, .cls-620, .cls-621, .cls-622, .cls-623, .cls-624, .cls-625, .cls-626, .cls-627, .cls-628, .cls-629, .cls-63, .cls-630, .cls-631, .cls-632, .cls-633, .cls-634, .cls-635, .cls-636, .cls-637, .cls-638, .cls-639, .cls-64, .cls-640, .cls-641, .cls-642, .cls-643, .cls-644, .cls-645, .cls-646, .cls-647, .cls-648, .cls-649, .cls-65, .cls-650, .cls-651, .cls-652, .cls-653, .cls-654, .cls-655, .cls-656, .cls-657, .cls-658, .cls-659, .cls-66, .cls-660, .cls-661, .cls-662, .cls-663, .cls-664, .cls-665, .cls-666, .cls-667, .cls-668, .cls-669, .cls-67, .cls-670, .cls-671, .cls-672, .cls-673, .cls-674, .cls-675, .cls-676, .cls-677, .cls-678, .cls-679, .cls-68, .cls-680, .cls-681, .cls-682, .cls-683, .cls-684, .cls-685, .cls-686, .cls-687, .cls-688, .cls-689, .cls-69, .cls-690, .cls-691, .cls-692, .cls-693, .cls-694, .cls-695, .cls-696, .cls-697, .cls-698, .cls-699, .cls-70, .cls-700, .cls-701, .cls-702, .cls-703, .cls-704, .cls-705, .cls-706, .cls-707, .cls-708, .cls-709, .cls-71, .cls-710, .cls-711, .cls-712, .cls-713, .cls-714, .cls-715, .cls-716, .cls-717, .cls-718, .cls-719, .cls-72, .cls-720, .cls-721, .cls-722, .cls-723, .cls-724, .cls-725, .cls-726, .cls-727, .cls-728, .cls-729, .cls-73, .cls-730, .cls-731, .cls-732, .cls-733, .cls-734, .cls-735, .cls-736, .cls-737, .cls-738, .cls-739, .cls-74, .cls-740, .cls-741, .cls-742, .cls-743, .cls-744, .cls-745, .cls-746, .cls-747, .cls-748, .cls-749, .cls-75, .cls-750, .cls-751, .cls-752, .cls-753, .cls-754, .cls-755, .cls-756, .cls-757, .cls-758, .cls-759, .cls-76, .cls-760, .cls-761, .cls-762, .cls-763, .cls-764, .cls-765, .cls-766, .cls-767, .cls-768, .cls-769, .cls-77, .cls-770, .cls-771, .cls-772, .cls-773, .cls-774, .cls-775, .cls-776, .cls-777, .cls-778, .cls-779, .cls-78, .cls-79, .cls-80, .cls-81, .cls-82, .cls-83, .cls-84, .cls-85, .cls-86, .cls-87, .cls-88, .cls-89, .cls-9, .cls-90, .cls-91, .cls-92, .cls-93, .cls-94, .cls-95, .cls-96, .cls-97, .cls-98, .cls-99 {
        stroke-width: 0.5px;
      }

      .cls-10 {
        fill: #97c8e0;
        stroke: #97c8e0;
      }

      .cls-11 {
        fill: #95c7df;
        stroke: #95c7df;
      }

      .cls-12 {
        fill: #9ccce2;
        stroke: #9ccce2;
      }

      .cls-13 {
        fill: #8cbfdb;
        stroke: #8cbfdb;
      }

      .cls-14 {
        fill: #99c9e1;
        stroke: #99c9e1;
      }

      .cls-15 {
        fill: #85b9d8;
        stroke: #85b9d8;
      }

      .cls-16 {
        fill: #90c2dd;
        stroke: #90c2dd;
      }

      .cls-17 {
        fill: #a0cfe3;
        stroke: #a0cfe3;
      }

      .cls-18 {
        fill: #79aed2;
        stroke: #79aed2;
      }

      .cls-19 {
        fill: #6da3cc;
        stroke: #6da3cc;
      }

      .cls-20 {
        fill: #a5d2e6;
        stroke: #a5d2e6;
      }

      .cls-21 {
        fill: #70a6cd;
        stroke: #70a6cd;
      }

      .cls-22 {
        fill: #81b6d6;
        stroke: #81b6d6;
      }

      .cls-23 {
        fill: #72a8cf;
        stroke: #72a8cf;
      }

      .cls-24 {
        fill: #74a9cf;
        stroke: #74a9cf;
      }

      .cls-25 {
        fill: #6398c6;
        stroke: #6398c6;
      }

      .cls-26 {
        fill: #5180ba;
        stroke: #5180ba;
      }

      .cls-27 {
        fill: #4d7ab7;
        stroke: #4d7ab7;
      }

      .cls-28 {
        fill: #5789bf;
        stroke: #5789bf;
      }

      .cls-29 {
        fill: #5383bc;
        stroke: #5383bc;
      }

      .cls-30 {
        fill: #4e7cb8;
        stroke: #4e7cb8;
      }

      .cls-31 {
        fill: #466eb1;
        stroke: #466eb1;
      }

      .cls-32 {
        fill: #4f7eb9;
        stroke: #4f7eb9;
      }

      .cls-33 {
        fill: #4c78b6;
        stroke: #4c78b6;
      }

      .cls-34 {
        fill: #4770b2;
        stroke: #4770b2;
      }

      .cls-35 {
        fill: #456cb0;
        stroke: #456cb0;
      }

      .cls-36 {
        fill: #4b77b5;
        stroke: #4b77b5;
      }

      .cls-37 {
        fill: #5687be;
        stroke: #5687be;
      }

      .cls-38 {
        fill: #5a8dc0;
        stroke: #5a8dc0;
      }

      .cls-39 {
        fill: #476eb1;
        stroke: #476eb1;
      }

      .cls-40 {
        fill: #6296c5;
        stroke: #6296c5;
      }

      .cls-41 {
        fill: #5282bb;
        stroke: #5282bb;
      }

      .cls-42 {
        fill: #88bcda;
        stroke: #88bcda;
      }

      .cls-43 {
        fill: #8ec1dc;
        stroke: #8ec1dc;
      }

      .cls-44 {
        fill: #93c5de;
        stroke: #93c5de;
      }

      .cls-45 {
        fill: #87bbd9;
        stroke: #87bbd9;
      }

      .cls-46 {
        fill: #7ab0d3;
        stroke: #7ab0d3;
      }

      .cls-47 {
        fill: #8abeda;
        stroke: #8abeda;
      }

      .cls-48 {
        fill: #80b5d5;
        stroke: #80b5d5;
      }

      .cls-49 {
        fill: #7eb3d5;
        stroke: #7eb3d5;
      }

      .cls-50 {
        fill: #9ecde3;
        stroke: #9ecde3;
      }

      .cls-51 {
        fill: #7bb1d3;
        stroke: #7bb1d3;
      }

      .cls-52 {
        fill: #7cb2d4;
        stroke: #7cb2d4;
      }

      .cls-53 {
        fill: #4b76b5;
        stroke: #4b76b5;
      }

      .cls-54 {
        fill: #446aaf;
        stroke: #446aaf;
      }

      .cls-55 {
        fill: #4a74b4;
        stroke: #4a74b4;
      }

      .cls-56 {
        fill: #4872b3;
        stroke: #4872b3;
      }

      .cls-57 {
        fill: #4266ad;
        stroke: #4266ad;
      }

      .cls-58 {
        fill: #4162ab;
        stroke: #4162ab;
      }

      .cls-59 {
        fill: #5585bd;
        stroke: #5585bd;
      }

      .cls-60 {
        fill: #598bbf;
        stroke: #598bbf;
      }

      .cls-61 {
        fill: #4871b2;
        stroke: #4871b2;
      }

      .cls-62 {
        fill: #77add1;
        stroke: #77add1;
      }

      .cls-63 {
        fill: #91c4dd;
        stroke: #91c4dd;
      }

      .cls-64 {
        fill: #6a9fca;
        stroke: #6a9fca;
      }

      .cls-65 {
        fill: #6ba1cb;
        stroke: #6ba1cb;
      }

      .cls-66 {
        fill: #75abd0;
        stroke: #75abd0;
      }

      .cls-67 {
        fill: #4164ac;
        stroke: #4164ac;
      }

      .cls-68 {
        fill: #4265ac;
        stroke: #4265ac;
      }

      .cls-69 {
        fill: #4368ae;
        stroke: #4368ae;
      }

      .cls-70 {
        fill: #3f5fa9;
        stroke: #3f5fa9;
      }

      .cls-71 {
        fill: #4469ae;
        stroke: #4469ae;
      }

      .cls-72 {
        fill: #72a8ce;
        stroke: #72a8ce;
      }

      .cls-73 {
        fill: #6fa4cd;
        stroke: #6fa4cd;
      }

      .cls-74 {
        fill: #669bc8;
        stroke: #669bc8;
      }

      .cls-75 {
        fill: #689dc9;
        stroke: #689dc9;
      }

      .cls-76 {
        fill: #659ac7;
        stroke: #659ac7;
      }

      .cls-77 {
        fill: #5d90c2;
        stroke: #5d90c2;
      }

      .cls-78 {
        fill: #3f5ea9;
        stroke: #3f5ea9;
      }

      .cls-79 {
        fill: #4163ab;
        stroke: #4163ab;
      }

      .cls-80 {
        fill: #4366ad;
        stroke: #4366ad;
      }

      .cls-81 {
        fill: #a2d0e4;
        stroke: #a2d0e4;
      }

      .cls-82 {
        fill: #6ba0ca;
        stroke: #6ba0ca;
      }

      .cls-83 {
        fill: #4367ad;
        stroke: #4367ad;
      }

      .cls-84 {
        fill: #5d91c2;
        stroke: #5d91c2;
      }

      .cls-85 {
        fill: #4973b3;
        stroke: #4973b3;
      }

      .cls-86 {
        fill: #83b8d7;
        stroke: #83b8d7;
      }

      .cls-87 {
        fill: #6da2cc;
        stroke: #6da2cc;
      }

      .cls-88 {
        fill: #456baf;
        stroke: #456baf;
      }

      .cls-89 {
        fill: #679dc9;
        stroke: #679dc9;
      }

      .cls-90 {
        fill: #6195c5;
        stroke: #6195c5;
      }

      .cls-91 {
        fill: #5f93c4;
        stroke: #5f93c4;
      }

      .cls-92 {
        fill: #5f92c3;
        stroke: #5f92c3;
      }

      .cls-93 {
        fill: #598cc0;
        stroke: #598cc0;
      }

      .cls-94 {
        fill: #6ca2cb;
        stroke: #6ca2cb;
      }

      .cls-95 {
        fill: #6ea4cc;
        stroke: #6ea4cc;
      }

      .cls-96 {
        fill: #5e92c3;
        stroke: #5e92c3;
      }

      .cls-97 {
        fill: #5889bf;
        stroke: #5889bf;
      }

      .cls-98 {
        fill: #6094c4;
        stroke: #6094c4;
      }

      .cls-99 {
        fill: #3e5ca8;
        stroke: #3e5ca8;
      }

      .cls-100 {
        fill: #3b53a3;
        stroke: #3b53a3;
      }

      .cls-101 {
        fill: #3c57a5;
        stroke: #3c57a5;
      }

      .cls-102 {
        fill: #4060aa;
        stroke: #4060aa;
      }

      .cls-103 {
        fill: #36459c;
        stroke: #36459c;
      }

      .cls-104 {
        fill: #35439b;
        stroke: #35439b;
      }

      .cls-105 {
        fill: #36479d;
        stroke: #36479d;
      }

      .cls-106 {
        fill: #37489e;
        stroke: #37489e;
      }

      .cls-107 {
        fill: #3b54a4;
        stroke: #3b54a4;
      }

      .cls-108 {
        fill: #37499e;
        stroke: #37499e;
      }

      .cls-109 {
        fill: #384ca0;
        stroke: #384ca0;
      }

      .cls-110 {
        fill: #5c8fc1;
        stroke: #5c8fc1;
      }

      .cls-111 {
        fill: #5281bb;
        stroke: #5281bb;
      }

      .cls-112 {
        fill: #3d59a7;
        stroke: #3d59a7;
      }

      .cls-113 {
        fill: #3c55a4;
        stroke: #3c55a4;
      }

      .cls-114 {
        fill: #3a51a2;
        stroke: #3a51a2;
      }

      .cls-115 {
        fill: #3a52a3;
        stroke: #3a52a3;
      }

      .cls-116 {
        fill: #394fa1;
        stroke: #394fa1;
      }

      .cls-117 {
        fill: #3d5aa7;
        stroke: #3d5aa7;
      }

      .cls-118 {
        fill: #384b9f;
        stroke: #384b9f;
      }

      .cls-119 {
        fill: #394da0;
        stroke: #394da0;
      }

      .cls-120 {
        fill: #34409a;
        stroke: #34409a;
      }

      .cls-121 {
        fill: #384a9f;
        stroke: #384a9f;
      }

      .cls-122 {
        fill: #3d59a6;
        stroke: #3d59a6;
      }

      .cls-123 {
        fill: #323896;
        stroke: #323896;
      }

      .cls-124 {
        fill: #323a97;
        stroke: #323a97;
      }

      .cls-125 {
        fill: #343e99;
        stroke: #343e99;
      }

      .cls-126 {
        fill: #313695;
        stroke: #313695;
      }

      .cls-127 {
        fill: #343f99;
        stroke: #343f99;
      }

      .cls-128 {
        fill: #323996;
        stroke: #323996;
      }

      .cls-129 {
        fill: #36469d;
        stroke: #36469d;
      }

      .cls-130 {
        fill: #333c98;
        stroke: #333c98;
      }

      .cls-131 {
        fill: #333b98;
        stroke: #333b98;
      }

      .cls-132 {
        fill: #394ea1;
        stroke: #394ea1;
      }

      .cls-133 {
        fill: #333b97;
        stroke: #333b97;
      }

      .cls-134 {
        fill: #6599c7;
        stroke: #6599c7;
      }

      .cls-135 {
        fill: #35439c;
        stroke: #35439c;
      }

      .cls-136 {
        fill: #36459d;
        stroke: #36459d;
      }

      .cls-137 {
        fill: #35429b;
        stroke: #35429b;
      }

      .cls-138 {
        fill: #323b97;
        stroke: #323b97;
      }

      .cls-139 {
        fill: #3c58a6;
        stroke: #3c58a6;
      }

      .cls-140 {
        fill: #34419a;
        stroke: #34419a;
      }

      .cls-141 {
        fill: #35419b;
        stroke: #35419b;
      }

      .cls-142 {
        fill: #333d99;
        stroke: #333d99;
      }

      .cls-143 {
        fill: #333d98;
        stroke: #333d98;
      }

      .cls-144 {
        fill: #313795;
        stroke: #313795;
      }

      .cls-145 {
        fill: #343f9a;
        stroke: #343f9a;
      }

      .cls-146 {
        fill: #3e5ba7;
        stroke: #3e5ba7;
      }

      .cls-147 {
        fill: #35419a;
        stroke: #35419a;
      }

      .cls-148 {
        fill: #333e99;
        stroke: #333e99;
      }

      .cls-149 {
        fill: #3d58a6;
        stroke: #3d58a6;
      }

      .cls-150 {
        fill: #35449c;
        stroke: #35449c;
      }

      .cls-151 {
        fill: #88bcd9;
        stroke: #88bcd9;
      }

      .cls-152 {
        fill: #394fa2;
        stroke: #394fa2;
      }

      .cls-153 {
        fill: #6fa5cd;
        stroke: #6fa5cd;
      }

      .cls-154 {
        fill: #6aa0ca;
        stroke: #6aa0ca;
      }

      .cls-155 {
        fill: #4061aa;
        stroke: #4061aa;
      }

      .cls-156 {
        fill: #5b8ec1;
        stroke: #5b8ec1;
      }

      .cls-157 {
        fill: #4c77b5;
        stroke: #4c77b5;
      }

      .cls-158 {
        fill: #3a50a2;
        stroke: #3a50a2;
      }

      .cls-159 {
        fill: #bee2ee;
        stroke: #bee2ee;
      }

      .cls-160 {
        fill: #384da0;
        stroke: #384da0;
      }

      .cls-161 {
        fill: #4264ac;
        stroke: #4264ac;
      }

      .cls-162 {
        fill: #4e7bb7;
        stroke: #4e7bb7;
      }

      .cls-163 {
        fill: #36449c;
        stroke: #36449c;
      }

      .cls-164 {
        fill: #5281ba;
        stroke: #5281ba;
      }

      .cls-165 {
        fill: #323997;
        stroke: #323997;
      }

      .cls-166 {
        fill: #466db0;
        stroke: #466db0;
      }

      .cls-167 {
        fill: #588abf;
        stroke: #588abf;
      }

      .cls-168 {
        fill: #5687bd;
        stroke: #5687bd;
      }

      .cls-169 {
        fill: #5586bd;
        stroke: #5586bd;
      }

      .cls-170 {
        fill: #3e5da8;
        stroke: #3e5da8;
      }

      .cls-171 {
        fill: #4972b3;
        stroke: #4972b3;
      }

      .cls-172 {
        fill: #507fb9;
        stroke: #507fb9;
      }

      .cls-173 {
        fill: #507eb9;
        stroke: #507eb9;
      }

      .cls-174 {
        fill: #4f7db9;
        stroke: #4f7db9;
      }

      .cls-175 {
        fill: #4a75b4;
        stroke: #4a75b4;
      }

      .cls-176 {
        fill: #4d79b6;
        stroke: #4d79b6;
      }

      .cls-177 {
        fill: #3c56a5;
        stroke: #3c56a5;
      }

      .cls-178 {
        fill: #374a9f;
        stroke: #374a9f;
      }

      .cls-179 {
        fill: #5485bc;
        stroke: #5485bc;
      }

      .cls-180 {
        fill: #5384bc;
        stroke: #5384bc;
      }

      .cls-181 {
        fill: #5788be;
        stroke: #5788be;
      }

      .cls-182 {
        fill: #5a8cc0;
        stroke: #5a8cc0;
      }

      .cls-183 {
        fill: #4368ad;
        stroke: #4368ad;
      }

      .cls-184 {
        fill: #76acd0;
        stroke: #76acd0;
      }

      .cls-185 {
        fill: #82b7d7;
        stroke: #82b7d7;
      }

      .cls-186 {
        fill: #5383bb;
        stroke: #5383bb;
      }

      .cls-187 {
        fill: #78add1;
        stroke: #78add1;
      }

      .cls-188 {
        fill: #5d91c3;
        stroke: #5d91c3;
      }

      .cls-189 {
        fill: #679cc8;
        stroke: #679cc8;
      }

      .cls-190 {
        fill: #99cae1;
        stroke: #99cae1;
      }

      .cls-191 {
        fill: #6297c6;
        stroke: #6297c6;
      }

      .cls-192 {
        fill: #aad6e7;
        stroke: #aad6e7;
      }

      .cls-193 {
        fill: #acd7e8;
        stroke: #acd7e8;
      }

      .cls-194 {
        fill: #bce1ed;
        stroke: #bce1ed;
      }

      .cls-195 {
        fill: #b2dbea;
        stroke: #b2dbea;
      }

      .cls-196 {
        fill: #b0d9e9;
        stroke: #b0d9e9;
      }

      .cls-197 {
        fill: #7db3d4;
        stroke: #7db3d4;
      }

      .cls-198 {
        fill: #b5ddeb;
        stroke: #b5ddeb;
      }

      .cls-199 {
        fill: #5585bc;
        stroke: #5585bc;
      }

      .cls-200 {
        fill: #c0e3ee;
        stroke: #c0e3ee;
      }

      .cls-201 {
        fill: #def1eb;
        stroke: #def1eb;
      }

      .cls-202 {
        fill: #c8e7ef;
        stroke: #c8e7ef;
      }

      .cls-203 {
        fill: #d5edef;
        stroke: #d5edef;
      }

      .cls-204 {
        fill: #cfeaef;
        stroke: #cfeaef;
      }

      .cls-205 {
        fill: #e3f4e8;
        stroke: #e3f4e8;
      }

      .cls-206 {
        fill: #d2ecef;
        stroke: #d2ecef;
      }

      .cls-207 {
        fill: #e1f3e9;
        stroke: #e1f3e9;
      }

      .cls-208 {
        fill: #ebf7df;
        stroke: #ebf7df;
      }

      .cls-209 {
        fill: #cdeaef;
        stroke: #cdeaef;
      }

      .cls-210 {
        fill: #e8f6e3;
        stroke: #e8f6e3;
      }

      .cls-211 {
        fill: #b4dceb;
        stroke: #b4dceb;
      }

      .cls-212 {
        fill: #d0ebef;
        stroke: #d0ebef;
      }

      .cls-213 {
        fill: #a3d1e5;
        stroke: #a3d1e5;
      }

      .cls-214 {
        fill: #cae8ef;
        stroke: #cae8ef;
      }

      .cls-215 {
        fill: #d7eeee;
        stroke: #d7eeee;
      }

      .cls-216 {
        fill: #d4edef;
        stroke: #d4edef;
      }

      .cls-217 {
        fill: #dbf0ed;
        stroke: #dbf0ed;
      }

      .cls-218 {
        fill: #bbe0ed;
        stroke: #bbe0ed;
      }

      .cls-219 {
        fill: #c3e4ef;
        stroke: #c3e4ef;
      }

      .cls-220 {
        fill: #b9dfec;
        stroke: #b9dfec;
      }

      .cls-221 {
        fill: #c2e4ee;
        stroke: #c2e4ee;
      }

      .cls-222 {
        fill: #e4f4e6;
        stroke: #e4f4e6;
      }

      .cls-223 {
        fill: #c7e6ef;
        stroke: #c7e6ef;
      }

      .cls-224 {
        fill: #aed8e9;
        stroke: #aed8e9;
      }

      .cls-225 {
        fill: #c5e5ef;
        stroke: #c5e5ef;
      }

      .cls-226 {
        fill: #abd6e8;
        stroke: #abd6e8;
      }

      .cls-227 {
        fill: #b7deec;
        stroke: #b7deec;
      }

      .cls-228 {
        fill: #add8e8;
        stroke: #add8e8;
      }

      .cls-229 {
        fill: #a9d5e7;
        stroke: #a9d5e7;
      }

      .cls-230 {
        fill: #394da1;
        stroke: #394da1;
      }

      .cls-231 {
        fill: #9ecee3;
        stroke: #9ecee3;
      }

      .cls-232 {
        fill: #7eb3d4;
        stroke: #7eb3d4;
      }

      .cls-233 {
        fill: #a7d4e6;
        stroke: #a7d4e6;
      }

      .cls-234 {
        fill: #96c7df;
        stroke: #96c7df;
      }

      .cls-235 {
        fill: #7bb0d3;
        stroke: #7bb0d3;
      }

      .cls-236 {
        fill: #9fcee3;
        stroke: #9fcee3;
      }

      .cls-237 {
        fill: #afd9e9;
        stroke: #afd9e9;
      }

      .cls-238 {
        fill: #92c4de;
        stroke: #92c4de;
      }

      .cls-239 {
        fill: #3b55a4;
        stroke: #3b55a4;
      }

      .cls-240 {
        fill: #7eb4d5;
        stroke: #7eb4d5;
      }

      .cls-241 {
        fill: #a4d2e5;
        stroke: #a4d2e5;
      }

      .cls-242 {
        fill: #89bdda;
        stroke: #89bdda;
      }

      .cls-243 {
        fill: #a0cfe4;
        stroke: #a0cfe4;
      }

      .cls-244 {
        fill: #4e7bb8;
        stroke: #4e7bb8;
      }

      .cls-245 {
        fill: #a6d3e6;
        stroke: #a6d3e6;
      }

      .cls-246 {
        fill: #476fb1;
        stroke: #476fb1;
      }

      .cls-247 {
        fill: #9bcbe2;
        stroke: #9bcbe2;
      }

      .cls-248 {
        fill: #4a76b5;
        stroke: #4a76b5;
      }

      .cls-249 {
        fill: #d1ebef;
        stroke: #d1ebef;
      }

      .cls-250 {
        fill: #cce9ef;
        stroke: #cce9ef;
      }

      .cls-251 {
        fill: #689ec9;
        stroke: #689ec9;
      }

      .cls-252 {
        fill: #dcf1ec;
        stroke: #dcf1ec;
      }

      .cls-253 {
        fill: #dff2ea;
        stroke: #dff2ea;
      }

      .cls-254 {
        fill: #e2f3e8;
        stroke: #e2f3e8;
      }

      .cls-255 {
        fill: #d8efee;
        stroke: #d8efee;
      }

      .cls-256 {
        fill: #e6f5e5;
        stroke: #e6f5e5;
      }

      .cls-257 {
        fill: #c4e5ef;
        stroke: #c4e5ef;
      }

      .cls-258 {
        fill: #598bc0;
        stroke: #598bc0;
      }

      .cls-259 {
        fill: #71a6ce;
        stroke: #71a6ce;
      }

      .cls-260 {
        fill: #e0f2ea;
        stroke: #e0f2ea;
      }

      .cls-261 {
        fill: #eef8da;
        stroke: #eef8da;
      }

      .cls-262 {
        fill: #edf8dc;
        stroke: #edf8dc;
      }

      .cls-263 {
        fill: #dbf0ec;
        stroke: #dbf0ec;
      }

      .cls-264 {
        fill: #4f7db8;
        stroke: #4f7db8;
      }

      .cls-265 {
        fill: #8fc2dc;
        stroke: #8fc2dc;
      }

      .cls-266 {
        fill: #91c3dd;
        stroke: #91c3dd;
      }

      .cls-267 {
        fill: #a4d1e5;
        stroke: #a4d1e5;
      }

      .cls-268 {
        fill: #b5dceb;
        stroke: #b5dceb;
      }

      .cls-269 {
        fill: #8dc1dc;
        stroke: #8dc1dc;
      }

      .cls-270 {
        fill: #4c77b6;
        stroke: #4c77b6;
      }

      .cls-271 {
        fill: #6195c4;
        stroke: #6195c4;
      }

      .cls-272 {
        fill: #5789be;
        stroke: #5789be;
      }

      .cls-273 {
        fill: #eaf6e0;
        stroke: #eaf6e0;
      }

      .cls-274 {
        fill: #e7f5e4;
        stroke: #e7f5e4;
      }

      .cls-275 {
        fill: #f1f9d5;
        stroke: #f1f9d5;
      }

      .cls-276 {
        fill: #eff8d9;
        stroke: #eff8d9;
      }

      .cls-277 {
        fill: #e2f3e9;
        stroke: #e2f3e9;
      }

      .cls-278 {
        fill: #f0f8d7;
        stroke: #f0f8d7;
      }

      .cls-279 {
        fill: #f4f9d0;
        stroke: #f4f9d0;
      }

      .cls-280 {
        fill: #e6f5e4;
        stroke: #e6f5e4;
      }

      .cls-281 {
        fill: #d9efed;
        stroke: #d9efed;
      }

      .cls-282 {
        fill: #4c79b6;
        stroke: #4c79b6;
      }

      .cls-283 {
        fill: #73a9cf;
        stroke: #73a9cf;
      }

      .cls-284 {
        fill: #fdf2b0;
        stroke: #fdf2b0;
      }

      .cls-285 {
        fill: #fbf7bc;
        stroke: #fbf7bc;
      }

      .cls-286 {
        fill: #faf8c1;
        stroke: #faf8c1;
      }

      .cls-287 {
        fill: #fbf7bd;
        stroke: #fbf7bd;
      }

      .cls-288 {
        fill: #f9f8c4;
        stroke: #f9f8c4;
      }

      .cls-289 {
        fill: #f9f8c2;
        stroke: #f9f8c2;
      }

      .cls-290 {
        fill: #f8f9c6;
        stroke: #f8f9c6;
      }

      .cls-291 {
        fill: #fcf5b6;
        stroke: #fcf5b6;
      }

      .cls-292 {
        fill: #fcf6b8;
        stroke: #fcf6b8;
      }

      .cls-293 {
        fill: #f7f9c8;
        stroke: #f7f9c8;
      }

      .cls-294 {
        fill: #fdf4b3;
        stroke: #fdf4b3;
      }

      .cls-295 {
        fill: #f7f9c9;
        stroke: #f7f9c9;
      }

      .cls-296 {
        fill: #f2f9d4;
        stroke: #f2f9d4;
      }

      .cls-297 {
        fill: #f5f9cd;
        stroke: #f5f9cd;
      }

      .cls-298 {
        fill: #fcf4b5;
        stroke: #fcf4b5;
      }

      .cls-299 {
        fill: #f3f9d2;
        stroke: #f3f9d2;
      }

      .cls-300 {
        fill: #f5f9cf;
        stroke: #f5f9cf;
      }

      .cls-301 {
        fill: #74aad0;
        stroke: #74aad0;
      }

      .cls-302 {
        fill: #9bcbe1;
        stroke: #9bcbe1;
      }

      .cls-303 {
        fill: #fbf6ba;
        stroke: #fbf6ba;
      }

      .cls-304 {
        fill: #fee69b;
        stroke: #fee69b;
      }

      .cls-305 {
        fill: #feeea8;
        stroke: #feeea8;
      }

      .cls-306 {
        fill: #feeca5;
        stroke: #feeca5;
      }

      .cls-307 {
        fill: #feeda6;
        stroke: #feeda6;
      }

      .cls-308 {
        fill: #fef0ab;
        stroke: #fef0ab;
      }

      .cls-309 {
        fill: #fee498;
        stroke: #fee498;
      }

      .cls-310 {
        fill: #feeaa1;
        stroke: #feeaa1;
      }

      .cls-311 {
        fill: #fee195;
        stroke: #fee195;
      }

      .cls-312 {
        fill: #fdf3b1;
        stroke: #fdf3b1;
      }

      .cls-313 {
        fill: #fee9a0;
        stroke: #fee9a0;
      }

      .cls-314 {
        fill: #fdf1ad;
        stroke: #fdf1ad;
      }

      .cls-315 {
        fill: #72a7ce;
        stroke: #72a7ce;
      }

      .cls-316 {
        fill: #9dcde2;
        stroke: #9dcde2;
      }

      .cls-317 {
        fill: #ecf7dd;
        stroke: #ecf7dd;
      }

      .cls-318 {
        fill: #e9f6e2;
        stroke: #e9f6e2;
      }

      .cls-319 {
        fill: #faf7bf;
        stroke: #faf7bf;
      }

      .cls-320 {
        fill: #84b9d8;
        stroke: #84b9d8;
      }

      .cls-321 {
        fill: #eef8db;
        stroke: #eef8db;
      }

      .cls-322 {
        fill: #5c8fc2;
        stroke: #5c8fc2;
      }

      .cls-323 {
        fill: #feefaa;
        stroke: #feefaa;
      }

      .cls-324 {
        fill: #feefa9;
        stroke: #feefa9;
      }

      .cls-325 {
        fill: #faf8bf;
        stroke: #faf8bf;
      }

      .cls-326 {
        fill: #90c3dd;
        stroke: #90c3dd;
      }

      .cls-327 {
        fill: #b3dbea;
        stroke: #b3dbea;
      }

      .cls-328 {
        fill: #f6f9cb;
        stroke: #f6f9cb;
      }

      .cls-329 {
        fill: #b1daea;
        stroke: #b1daea;
      }

      .cls-330 {
        fill: #fdf2ae;
        stroke: #fdf2ae;
      }

      .cls-331 {
        fill: #fee99f;
        stroke: #fee99f;
      }

      .cls-332 {
        fill: #7cb1d3;
        stroke: #7cb1d3;
      }

      .cls-333 {
        fill: #eff8da;
        stroke: #eff8da;
      }

      .cls-334 {
        fill: #f6f9cc;
        stroke: #f6f9cc;
      }

      .cls-335 {
        fill: #f1f8d6;
        stroke: #f1f8d6;
      }

      .cls-336 {
        fill: #8dc0dc;
        stroke: #8dc0dc;
      }

      .cls-337 {
        fill: #f4f9cf;
        stroke: #f4f9cf;
      }

      .cls-338 {
        fill: #8bbedb;
        stroke: #8bbedb;
      }

      .cls-339 {
        fill: #fee398;
        stroke: #fee398;
      }

      .cls-340 {
        fill: #fee79d;
        stroke: #fee79d;
      }

      .cls-341 {
        fill: #feeba3;
        stroke: #feeba3;
      }

      .cls-342 {
        fill: #fee499;
        stroke: #fee499;
      }

      .cls-343 {
        fill: #fedf93;
        stroke: #fedf93;
      }

      .cls-344 {
        fill: #feefa8;
        stroke: #feefa8;
      }

      .cls-345 {
        fill: #98c9e0;
        stroke: #98c9e0;
      }

      .cls-346 {
        fill: #fee599;
        stroke: #fee599;
      }

      .cls-347 {
        fill: #fee89e;
        stroke: #fee89e;
      }

      .cls-348 {
        fill: #fedb8d;
        stroke: #fedb8d;
      }

      .cls-349 {
        fill: #fee296;
        stroke: #fee296;
      }

      .cls-350 {
        fill: #fedb8e;
        stroke: #fedb8e;
      }

      .cls-351 {
        fill: #c1e3ee;
        stroke: #c1e3ee;
      }

      .cls-352 {
        fill: #ceeaef;
        stroke: #ceeaef;
      }

      .cls-353 {
        fill: #fcf5b7;
        stroke: #fcf5b7;
      }

      .cls-354 {
        fill: #faf7be;
        stroke: #faf7be;
      }

      .cls-355 {
        fill: #feeca4;
        stroke: #feeca4;
      }

      .cls-356 {
        fill: #fcf4b4;
        stroke: #fcf4b4;
      }

      .cls-357 {
        fill: #f5f9ce;
        stroke: #f5f9ce;
      }

      .cls-358 {
        fill: #fdf3b2;
        stroke: #fdf3b2;
      }

      .cls-359 {
        fill: #b6ddeb;
        stroke: #b6ddeb;
      }

      .cls-360 {
        fill: #94c6df;
        stroke: #94c6df;
      }

      .cls-361 {
        fill: #feda8d;
        stroke: #feda8d;
      }

      .cls-362 {
        fill: #fedd90;
        stroke: #fedd90;
      }

      .cls-363 {
        fill: #fede92;
        stroke: #fede92;
      }

      .cls-364 {
        fill: #fed98c;
        stroke: #fed98c;
      }

      .cls-365 {
        fill: #fed487;
        stroke: #fed487;
      }

      .cls-366 {
        fill: #fed385;
        stroke: #fed385;
      }

      .cls-367 {
        fill: #fed88a;
        stroke: #fed88a;
      }

      .cls-368 {
        fill: #fee59a;
        stroke: #fee59a;
      }

      .cls-369 {
        fill: #b2daea;
        stroke: #b2daea;
      }

      .cls-370 {
        fill: #fdf2af;
        stroke: #fdf2af;
      }

      .cls-371 {
        fill: #bde1ed;
        stroke: #bde1ed;
      }

      .cls-372 {
        fill: #c3e4ee;
        stroke: #c3e4ee;
      }

      .cls-373 {
        fill: #eaf6e1;
        stroke: #eaf6e1;
      }

      .cls-374 {
        fill: #84b8d7;
        stroke: #84b8d7;
      }

      .cls-375 {
        fill: #96c8e0;
        stroke: #96c8e0;
      }

      .cls-376 {
        fill: #76abd0;
        stroke: #76abd0;
      }

      .cls-377 {
        fill: #fbf6b9;
        stroke: #fbf6b9;
      }

      .cls-378 {
        fill: #fcf5b5;
        stroke: #fcf5b5;
      }

      .cls-379 {
        fill: #fdf3b0;
        stroke: #fdf3b0;
      }

      .cls-380 {
        fill: #f9f8c1;
        stroke: #f9f8c1;
      }

      .cls-381 {
        fill: #f8f8c5;
        stroke: #f8f8c5;
      }

      .cls-382 {
        fill: #77acd1;
        stroke: #77acd1;
      }

      .cls-383 {
        fill: #92c5de;
        stroke: #92c5de;
      }

      .cls-384 {
        fill: #a8d4e6;
        stroke: #a8d4e6;
      }

      .cls-385 {
        fill: #82b7d6;
        stroke: #82b7d6;
      }

      .cls-386 {
        fill: #afd8e9;
        stroke: #afd8e9;
      }

      .cls-387 {
        fill: #fee69c;
        stroke: #fee69c;
      }

      .cls-388 {
        fill: #fef0ac;
        stroke: #fef0ac;
      }

      .cls-389 {
        fill: #f9f8c3;
        stroke: #f9f8c3;
      }

      .cls-390 {
        fill: #faf8c0;
        stroke: #faf8c0;
      }

      .cls-391 {
        fill: #a8d5e7;
        stroke: #a8d5e7;
      }

      .cls-392 {
        fill: #d3ecef;
        stroke: #d3ecef;
      }

      .cls-393 {
        fill: #fee094;
        stroke: #fee094;
      }

      .cls-394 {
        fill: #ddf1ec;
        stroke: #ddf1ec;
      }

      .cls-395 {
        fill: #cbe8ef;
        stroke: #cbe8ef;
      }

      .cls-396 {
        fill: #feeea7;
        stroke: #feeea7;
      }

      .cls-397 {
        fill: #fedc8f;
        stroke: #fedc8f;
      }

      .cls-398 {
        fill: #fed688;
        stroke: #fed688;
      }

      .cls-399 {
        fill: #d9efee;
        stroke: #d9efee;
      }

      .cls-400 {
        fill: #aad5e7;
        stroke: #aad5e7;
      }

      .cls-401 {
        fill: #a5d2e5;
        stroke: #a5d2e5;
      }

      .cls-402 {
        fill: #e8f6e2;
        stroke: #e8f6e2;
      }

      .cls-403 {
        fill: #fcf6b9;
        stroke: #fcf6b9;
      }

      .cls-404 {
        fill: #dff2eb;
        stroke: #dff2eb;
      }

      .cls-405 {
        fill: #daf0ed;
        stroke: #daf0ed;
      }

      .cls-406 {
        fill: #8fc1dc;
        stroke: #8fc1dc;
      }

      .cls-407 {
        fill: #e4f4e7;
        stroke: #e4f4e7;
      }

      .cls-408 {
        fill: #e7f5e3;
        stroke: #e7f5e3;
      }

      .cls-409 {
        fill: #bfe2ee;
        stroke: #bfe2ee;
      }

      .cls-410 {
        fill: #c0e2ee;
        stroke: #c0e2ee;
      }

      .cls-411 {
        fill: #fed98b;
        stroke: #fed98b;
      }

      .cls-412 {
        fill: #fed184;
        stroke: #fed184;
      }

      .cls-413 {
        fill: #fed082;
        stroke: #fed082;
      }

      .cls-414 {
        fill: #fece80;
        stroke: #fece80;
      }

      .cls-415 {
        fill: #fecb7d;
        stroke: #fecb7d;
      }

      .cls-416 {
        fill: #fdba6f;
        stroke: #fdba6f;
      }

      .cls-417 {
        fill: #fdc073;
        stroke: #fdc073;
      }

      .cls-418 {
        fill: #fdc275;
        stroke: #fdc275;
      }

      .cls-419 {
        fill: #ebf7e0;
        stroke: #ebf7e0;
      }

      .cls-420 {
        fill: #fdc77a;
        stroke: #fdc77a;
      }

      .cls-421 {
        fill: #fcb56a;
        stroke: #fcb56a;
      }

      .cls-422 {
        fill: #fdb86d;
        stroke: #fdb86d;
      }

      .cls-423 {
        fill: #fcb168;
        stroke: #fcb168;
      }

      .cls-424 {
        fill: #fdc376;
        stroke: #fdc376;
      }

      .cls-425 {
        fill: #fede91;
        stroke: #fede91;
      }

      .cls-426 {
        fill: #fdbc70;
        stroke: #fdbc70;
      }

      .cls-427 {
        fill: #fba861;
        stroke: #fba861;
      }

      .cls-428 {
        fill: #fcac64;
        stroke: #fcac64;
      }

      .cls-429 {
        fill: #fdb96e;
        stroke: #fdb96e;
      }

      .cls-430 {
        fill: #fdc577;
        stroke: #fdc577;
      }

      .cls-431 {
        fill: #fdc679;
        stroke: #fdc679;
      }

      .cls-432 {
        fill: #fcb369;
        stroke: #fcb369;
      }

      .cls-433 {
        fill: #fdbe72;
        stroke: #fdbe72;
      }

      .cls-434 {
        fill: #faa05c;
        stroke: #faa05c;
      }

      .cls-435 {
        fill: #fdb76c;
        stroke: #fdb76c;
      }

      .cls-436 {
        fill: #fcaa63;
        stroke: #fcaa63;
      }

      .cls-437 {
        fill: #f99858;
        stroke: #f99858;
      }

      .cls-438 {
        fill: #fcb269;
        stroke: #fcb269;
      }

      .cls-439 {
        fill: #cde9ef;
        stroke: #cde9ef;
      }

      .cls-440 {
        fill: #fdc174;
        stroke: #fdc174;
      }

      .cls-441 {
        fill: #fecd7f;
        stroke: #fecd7f;
      }

      .cls-442 {
        fill: #fcad65;
        stroke: #fcad65;
      }

      .cls-443 {
        fill: #fdb86c;
        stroke: #fdb86c;
      }

      .cls-444 {
        fill: #f2f9d5;
        stroke: #f2f9d5;
      }

      .cls-445 {
        fill: #badfec;
        stroke: #badfec;
      }

      .cls-446 {
        fill: #fdc578;
        stroke: #fdc578;
      }

      .cls-447 {
        fill: #fed78a;
        stroke: #fed78a;
      }

      .cls-448 {
        fill: #fdca7c;
        stroke: #fdca7c;
      }

      .cls-449 {
        fill: #fcb469;
        stroke: #fcb469;
      }

      .cls-450 {
        fill: #ecf7de;
        stroke: #ecf7de;
      }

      .cls-451 {
        fill: #fdc87a;
        stroke: #fdc87a;
      }

      .cls-452 {
        fill: #fdca7d;
        stroke: #fdca7d;
      }

      .cls-453 {
        fill: #e5f4e6;
        stroke: #e5f4e6;
      }

      .cls-454 {
        fill: #fdc477;
        stroke: #fdc477;
      }

      .cls-455 {
        fill: #fbaa63;
        stroke: #fbaa63;
      }

      .cls-456 {
        fill: #fcae65;
        stroke: #fcae65;
      }

      .cls-457 {
        fill: #fba962;
        stroke: #fba962;
      }

      .cls-458 {
        fill: #fcaf66;
        stroke: #fcaf66;
      }

      .cls-459 {
        fill: #fba25e;
        stroke: #fba25e;
      }

      .cls-460 {
        fill: #fa9c5a;
        stroke: #fa9c5a;
      }

      .cls-461 {
        fill: #f99155;
        stroke: #f99155;
      }

      .cls-462 {
        fill: #f99356;
        stroke: #f99356;
      }

      .cls-463 {
        fill: #f8f9c7;
        stroke: #f8f9c7;
      }

      .cls-464 {
        fill: #fcb46a;
        stroke: #fcb46a;
      }

      .cls-465 {
        fill: #fa9a59;
        stroke: #fa9a59;
      }

      .cls-466 {
        fill: #fa9e5b;
        stroke: #fa9e5b;
      }

      .cls-467 {
        fill: #fba45f;
        stroke: #fba45f;
      }

      .cls-468 {
        fill: #fa9d5b;
        stroke: #fa9d5b;
      }

      .cls-469 {
        fill: #f3f9d1;
        stroke: #f3f9d1;
      }

      .cls-470 {
        fill: #fba05d;
        stroke: #fba05d;
      }

      .cls-471 {
        fill: #f99657;
        stroke: #f99657;
      }

      .cls-472 {
        fill: #f99456;
        stroke: #f99456;
      }

      .cls-473 {
        fill: #e9f6e1;
        stroke: #e9f6e1;
      }

      .cls-474 {
        fill: #c6e6ef;
        stroke: #c6e6ef;
      }

      .cls-475 {
        fill: #fba660;
        stroke: #fba660;
      }

      .cls-476 {
        fill: #f99557;
        stroke: #f99557;
      }

      .cls-477 {
        fill: #f47a49;
        stroke: #f47a49;
      }

      .cls-478 {
        fill: #fcb66c;
        stroke: #fcb66c;
      }

      .cls-479 {
        fill: #edf7dc;
        stroke: #edf7dc;
      }

      .cls-480 {
        fill: #f99758;
        stroke: #f99758;
      }

      .cls-481 {
        fill: #f88d52;
        stroke: #f88d52;
      }

      .cls-482 {
        fill: #fba35e;
        stroke: #fba35e;
      }

      .cls-483 {
        fill: #fecf81;
        stroke: #fecf81;
      }

      .cls-484 {
        fill: #fecc7e;
        stroke: #fecc7e;
      }

      .cls-485 {
        fill: #fee397;
        stroke: #fee397;
      }

      .cls-486 {
        fill: #f0f8d8;
        stroke: #f0f8d8;
      }

      .cls-487 {
        fill: #c9e7ef;
        stroke: #c9e7ef;
      }

      .cls-488 {
        fill: #fee89f;
        stroke: #fee89f;
      }

      .cls-489 {
        fill: #fed689;
        stroke: #fed689;
      }

      .cls-490 {
        fill: #badfed;
        stroke: #badfed;
      }

      .cls-491 {
        fill: #e54f36;
        stroke: #e54f36;
      }

      .cls-492 {
        fill: #f88c52;
        stroke: #f88c52;
      }

      .cls-493 {
        fill: #f99757;
        stroke: #f99757;
      }

      .cls-494 {
        fill: #f88f53;
        stroke: #f88f53;
      }

      .cls-495 {
        fill: #f88b51;
        stroke: #f88b51;
      }

      .cls-496 {
        fill: #fef0aa;
        stroke: #fef0aa;
      }

      .cls-497 {
        fill: #fba35f;
        stroke: #fba35f;
      }

      .cls-498 {
        fill: #f99154;
        stroke: #f99154;
      }

      .cls-499 {
        fill: #fa9858;
        stroke: #fa9858;
      }

      .cls-500 {
        fill: #fed587;
        stroke: #fed587;
      }

      .cls-501 {
        fill: #fcae66;
        stroke: #fcae66;
      }

      .cls-502 {
        fill: #fcb66b;
        stroke: #fcb66b;
      }

      .cls-503 {
        fill: #fdc97b;
        stroke: #fdc97b;
      }

      .cls-504 {
        fill: #c3e5ef;
        stroke: #c3e5ef;
      }

      .cls-505 {
        fill: #fdba6e;
        stroke: #fdba6e;
      }

      .cls-506 {
        fill: #f8f8c4;
        stroke: #f8f8c4;
      }

      .cls-507 {
        fill: #f7864f;
        stroke: #f7864f;
      }

      .cls-508 {
        fill: #f89154;
        stroke: #f89154;
      }

      .cls-509 {
        fill: #f06d43;
        stroke: #f06d43;
      }

      .cls-510 {
        fill: #e85739;
        stroke: #e85739;
      }

      .cls-511 {
        fill: #f47c4a;
        stroke: #f47c4a;
      }

      .cls-512 {
        fill: #f6844e;
        stroke: #f6844e;
      }

      .cls-513 {
        fill: #fa9b5a;
        stroke: #fa9b5a;
      }

      .cls-514 {
        fill: #f4f9d1;
        stroke: #f4f9d1;
      }

      .cls-515 {
        fill: #f99255;
        stroke: #f99255;
      }

      .cls-516 {
        fill: #f6834d;
        stroke: #f6834d;
      }

      .cls-517 {
        fill: #f99355;
        stroke: #f99355;
      }

      .cls-518 {
        fill: #f27245;
        stroke: #f27245;
      }

      .cls-519 {
        fill: #f6814c;
        stroke: #f6814c;
      }

      .cls-520 {
        fill: #f7874f;
        stroke: #f7874f;
      }

      .cls-521 {
        fill: #fdf1ac;
        stroke: #fdf1ac;
      }

      .cls-522 {
        fill: #f57f4b;
        stroke: #f57f4b;
      }

      .cls-523 {
        fill: #fbf6bb;
        stroke: #fbf6bb;
      }

      .cls-524 {
        fill: #fba560;
        stroke: #fba560;
      }

      .cls-525 {
        fill: #f88e53;
        stroke: #f88e53;
      }

      .cls-526 {
        fill: #f6854e;
        stroke: #f6854e;
      }

      .cls-527 {
        fill: #f78950;
        stroke: #f78950;
      }

      .cls-528 {
        fill: #fef1ac;
        stroke: #fef1ac;
      }

      .cls-529 {
        fill: #f16e43;
        stroke: #f16e43;
      }

      .cls-530 {
        fill: #f57c4a;
        stroke: #f57c4a;
      }

      .cls-531 {
        fill: #f47848;
        stroke: #f47848;
      }

      .cls-532 {
        fill: #f27145;
        stroke: #f27145;
      }

      .cls-533 {
        fill: #ee653f;
        stroke: #ee653f;
      }

      .cls-534 {
        fill: #ea5b3b;
        stroke: #ea5b3b;
      }

      .cls-535 {
        fill: #ef6740;
        stroke: #ef6740;
      }

      .cls-536 {
        fill: #e75337;
        stroke: #e75337;
      }

      .cls-537 {
        fill: #feeaa0;
        stroke: #feeaa0;
      }

      .cls-538 {
        fill: #fedf92;
        stroke: #fedf92;
      }

      .cls-539 {
        fill: #f37647;
        stroke: #f37647;
      }

      .cls-540 {
        fill: #f06b42;
        stroke: #f06b42;
      }

      .cls-541 {
        fill: #e9593a;
        stroke: #e9593a;
      }

      .cls-542 {
        fill: #e65136;
        stroke: #e65136;
      }

      .cls-543 {
        fill: #e24933;
        stroke: #e24933;
      }

      .cls-544 {
        fill: #f06c42;
        stroke: #f06c42;
      }

      .cls-545 {
        fill: #ed643f;
        stroke: #ed643f;
      }

      .cls-546 {
        fill: #e75538;
        stroke: #e75538;
      }

      .cls-547 {
        fill: #ed633f;
        stroke: #ed633f;
      }

      .cls-548 {
        fill: #e14833;
        stroke: #e14833;
      }

      .cls-549 {
        fill: #f17044;
        stroke: #f17044;
      }

      .cls-550 {
        fill: #f16d43;
        stroke: #f16d43;
      }

      .cls-551 {
        fill: #e34b34;
        stroke: #e34b34;
      }

      .cls-552 {
        fill: #ec5f3d;
        stroke: #ec5f3d;
      }

      .cls-553 {
        fill: #f27446;
        stroke: #f27446;
      }

      .cls-554 {
        fill: #f06c43;
        stroke: #f06c43;
      }

      .cls-555 {
        fill: #f78a51;
        stroke: #f78a51;
      }

      .cls-556 {
        fill: #f78b51;
        stroke: #f78b51;
      }

      .cls-557 {
        fill: #fcab64;
        stroke: #fcab64;
      }

      .cls-558 {
        fill: #ec613e;
        stroke: #ec613e;
      }

      .cls-559 {
        fill: #fee79c;
        stroke: #fee79c;
      }

      .cls-560 {
        fill: #f5804c;
        stroke: #f5804c;
      }

      .cls-561 {
        fill: #ea5a3a;
        stroke: #ea5a3a;
      }

      .cls-562 {
        fill: #ec603d;
        stroke: #ec603d;
      }

      .cls-563 {
        fill: #de4331;
        stroke: #de4331;
      }

      .cls-564 {
        fill: #df4431;
        stroke: #df4431;
      }

      .cls-565 {
        fill: #db3d2f;
        stroke: #db3d2f;
      }

      .cls-566 {
        fill: #e04532;
        stroke: #e04532;
      }

      .cls-567 {
        fill: #e14732;
        stroke: #e14732;
      }

      .cls-568 {
        fill: #dd4130;
        stroke: #dd4130;
      }

      .cls-569 {
        fill: #e85638;
        stroke: #e85638;
      }

      .cls-570 {
        fill: #da3b2e;
        stroke: #da3b2e;
      }

      .cls-571 {
        fill: #dc3f2f;
        stroke: #dc3f2f;
      }

      .cls-572 {
        fill: #fdc678;
        stroke: #fdc678;
      }

      .cls-573 {
        fill: #ef6941;
        stroke: #ef6941;
      }

      .cls-574 {
        fill: #e65237;
        stroke: #e65237;
      }

      .cls-575 {
        fill: #db3e2f;
        stroke: #db3e2f;
      }

      .cls-576 {
        fill: #dc3f30;
        stroke: #dc3f30;
      }

      .cls-577 {
        fill: #eb5d3c;
        stroke: #eb5d3c;
      }

      .cls-578 {
        fill: #e44d35;
        stroke: #e44d35;
      }

      .cls-579 {
        fill: #d5342c;
        stroke: #d5342c;
      }

      .cls-580 {
        fill: #fcab63;
        stroke: #fcab63;
      }

      .cls-581 {
        fill: #fed183;
        stroke: #fed183;
      }

      .cls-582 {
        fill: #f3f9d3;
        stroke: #f3f9d3;
      }

      .cls-583 {
        fill: #fdc87b;
        stroke: #fdc87b;
      }

      .cls-584 {
        fill: #d7382d;
        stroke: #d7382d;
      }

      .cls-585 {
        fill: #f16f44;
        stroke: #f16f44;
      }

      .cls-586 {
        fill: #f27346;
        stroke: #f27346;
      }

      .cls-587 {
        fill: #ed623e;
        stroke: #ed623e;
      }

      .cls-588 {
        fill: #71a7ce;
        stroke: #71a7ce;
      }

      .cls-589 {
        fill: #fdbb6f;
        stroke: #fdbb6f;
      }

      .cls-590 {
        fill: #e44e35;
        stroke: #e44e35;
      }

      .cls-591 {
        fill: #ed633e;
        stroke: #ed633e;
      }

      .cls-592 {
        fill: #e65137;
        stroke: #e65137;
      }

      .cls-593 {
        fill: #eb5e3c;
        stroke: #eb5e3c;
      }

      .cls-594 {
        fill: #fdc779;
        stroke: #fdc779;
      }

      .cls-595 {
        fill: #fdc476;
        stroke: #fdc476;
      }

      .cls-596 {
        fill: #d93a2e;
        stroke: #d93a2e;
      }

      .cls-597 {
        fill: #e75438;
        stroke: #e75438;
      }

      .cls-598 {
        fill: #cb2829;
        stroke: #cb2829;
      }

      .cls-599 {
        fill: #d8392e;
        stroke: #d8392e;
      }

      .cls-600 {
        fill: #d6362d;
        stroke: #d6362d;
      }

      .cls-601 {
        fill: #cd2929;
        stroke: #cd2929;
      }

      .cls-602 {
        fill: #dc4030;
        stroke: #dc4030;
      }

      .cls-603 {
        fill: #fdbf72;
        stroke: #fdbf72;
      }

      .cls-604 {
        fill: #cf2d2a;
        stroke: #cf2d2a;
      }

      .cls-605 {
        fill: #d8382d;
        stroke: #d8382d;
      }

      .cls-606 {
        fill: #bf1a27;
        stroke: #bf1a27;
      }

      .cls-607 {
        fill: #c82429;
        stroke: #c82429;
      }

      .cls-608 {
        fill: #c41f28;
        stroke: #c41f28;
      }

      .cls-609 {
        fill: #c31e28;
        stroke: #c31e28;
      }

      .cls-610 {
        fill: #fba761;
        stroke: #fba761;
      }

      .cls-611 {
        fill: #d4322c;
        stroke: #d4322c;
      }

      .cls-612 {
        fill: #d2302b;
        stroke: #d2302b;
      }

      .cls-613 {
        fill: #ce2b2a;
        stroke: #ce2b2a;
      }

      .cls-614 {
        fill: #b91327;
        stroke: #b91327;
      }

      .cls-615 {
        fill: #b10b26;
        stroke: #b10b26;
      }

      .cls-616 {
        fill: #b71227;
        stroke: #b71227;
      }

      .cls-617 {
        fill: #b61027;
        stroke: #b61027;
      }

      .cls-618 {
        fill: #af0a26;
        stroke: #af0a26;
      }

      .cls-619 {
        fill: #b30e26;
        stroke: #b30e26;
      }

      .cls-620 {
        fill: #ca2629;
        stroke: #ca2629;
      }

      .cls-621 {
        fill: #d12f2b;
        stroke: #d12f2b;
      }

      .cls-622 {
        fill: #f89054;
        stroke: #f89054;
      }

      .cls-623 {
        fill: #ad0826;
        stroke: #ad0826;
      }

      .cls-624 {
        fill: #be1827;
        stroke: #be1827;
      }

      .cls-625 {
        fill: #b40e26;
        stroke: #b40e26;
      }

      .cls-626 {
        fill: #fdf1ae;
        stroke: #fdf1ae;
      }

      .cls-627 {
        fill: #6ea3cc;
        stroke: #6ea3cc;
      }

      .cls-628 {
        fill: #ef6841;
        stroke: #ef6841;
      }

      .cls-629 {
        fill: #c72228;
        stroke: #c72228;
      }

      .cls-630 {
        fill: #e55036;
        stroke: #e55036;
      }

      .cls-631 {
        fill: #f57d4a;
        stroke: #f57d4a;
      }

      .cls-632 {
        fill: #fed486;
        stroke: #fed486;
      }

      .cls-633 {
        fill: #f6824d;
        stroke: #f6824d;
      }

      .cls-634 {
        fill: #ee643f;
        stroke: #ee643f;
      }

      .cls-635 {
        fill: #e24a34;
        stroke: #e24a34;
      }

      .cls-636 {
        fill: #fdbd71;
        stroke: #fdbd71;
      }

      .cls-637 {
        fill: #fcb268;
        stroke: #fcb268;
      }

      .cls-638 {
        fill: #ea5c3b;
        stroke: #ea5c3b;
      }

      .cls-639 {
        fill: #e85639;
        stroke: #e85639;
      }

      .cls-640 {
        fill: #e34c34;
        stroke: #e34c34;
      }

      .cls-641 {
        fill: #cf2c2a;
        stroke: #cf2c2a;
      }

      .cls-642 {
        fill: #fbf7bb;
        stroke: #fbf7bb;
      }

      .cls-643 {
        fill: #d02d2a;
        stroke: #d02d2a;
      }

      .cls-644 {
        fill: #fcb067;
        stroke: #fcb067;
      }

      .cls-645 {
        fill: #df4331;
        stroke: #df4331;
      }

      .cls-646 {
        fill: #e34c35;
        stroke: #e34c35;
      }

      .cls-647 {
        fill: #f47949;
        stroke: #f47949;
      }

      .cls-648 {
        fill: #f99556;
        stroke: #f99556;
      }

      .cls-649 {
        fill: #f37748;
        stroke: #f37748;
      }

      .cls-650 {
        fill: #ee6740;
        stroke: #ee6740;
      }

      .cls-651 {
        fill: #d7362d;
        stroke: #d7362d;
      }

      .cls-652 {
        fill: #fdc175;
        stroke: #fdc175;
      }

      .cls-653 {
        fill: #fdc074;
        stroke: #fdc074;
      }

      .cls-654 {
        fill: #f27246;
        stroke: #f27246;
      }

      .cls-655 {
        fill: #da3c2e;
        stroke: #da3c2e;
      }

      .cls-656 {
        fill: #fdbe71;
        stroke: #fdbe71;
      }

      .cls-657 {
        fill: #f47b4a;
        stroke: #f47b4a;
      }

      .cls-658 {
        fill: #75aad0;
        stroke: #75aad0;
      }

      .cls-659 {
        fill: #e9583a;
        stroke: #e9583a;
      }

      .cls-660 {
        fill: #74aacf;
        stroke: #74aacf;
      }

      .cls-661 {
        fill: #fed284;
        stroke: #fed284;
      }

      .cls-662 {
        fill: #f06a42;
        stroke: #f06a42;
      }

      .cls-663 {
        fill: #f2f9d3;
        stroke: #f2f9d3;
      }

      .cls-664 {
        fill: #d3312b;
        stroke: #d3312b;
      }

      .cls-665 {
        fill: #eb5c3b;
        stroke: #eb5c3b;
      }

      .cls-666 {
        fill: #fed285;
        stroke: #fed285;
      }

      .cls-667 {
        fill: #f57e4b;
        stroke: #f57e4b;
      }

      .cls-668 {
        fill: #f47948;
        stroke: #f47948;
      }

      .cls-669 {
        fill: #f37747;
        stroke: #f37747;
      }

      .cls-670 {
        fill: #e85538;
        stroke: #e85538;
      }

      .cls-671 {
        fill: #dd4030;
        stroke: #dd4030;
      }

      .cls-672 {
        fill: #78aed2;
        stroke: #78aed2;
      }

      .cls-673 {
        fill: #c52128;
        stroke: #c52128;
      }

      .cls-674 {
        fill: #d4332c;
        stroke: #d4332c;
      }

      .cls-675 {
        fill: #fba862;
        stroke: #fba862;
      }

      .cls-676 {
        fill: #e65337;
        stroke: #e65337;
      }

      .cls-677 {
        fill: #a1cfe4;
        stroke: #a1cfe4;
      }

      .cls-678 {
        fill: #fdbf73;
        stroke: #fdbf73;
      }

      .cls-679 {
        fill: #ee6640;
        stroke: #ee6640;
      }

      .cls-680 {
        fill: #fece81;
        stroke: #fece81;
      }

      .cls-681 {
        fill: #f7f9ca;
        stroke: #f7f9ca;
      }

      .cls-682 {
        fill: #fee297;
        stroke: #fee297;
      }

      .cls-683 {
        fill: #fee093;
        stroke: #fee093;
      }

      .cls-684 {
        fill: #f47b49;
        stroke: #f47b49;
      }

      .cls-685 {
        fill: #f37848;
        stroke: #f37848;
      }

      .cls-686 {
        fill: #feeca3;
        stroke: #feeca3;
      }

      .cls-687 {
        fill: #fcb167;
        stroke: #fcb167;
      }

      .cls-688 {
        fill: #f78850;
        stroke: #f78850;
      }

      .cls-689 {
        fill: #b0dae9;
        stroke: #b0dae9;
      }

      .cls-690 {
        fill: #fa9959;
        stroke: #fa9959;
      }

      .cls-691 {
        fill: #f37446;
        stroke: #f37446;
      }

      .cls-692 {
        fill: #add7e8;
        stroke: #add7e8;
      }

      .cls-693 {
        fill: #fba15d;
        stroke: #fba15d;
      }

      .cls-694 {
        fill: #fedd91;
        stroke: #fedd91;
      }

      .cls-695 {
        fill: #f37547;
        stroke: #f37547;
      }

      .cls-696 {
        fill: #fedc8e;
        stroke: #fedc8e;
      }

      .cls-697 {
        fill: #73a8cf;
        stroke: #73a8cf;
      }

      .cls-698 {
        fill: #f57d4b;
        stroke: #f57d4b;
      }

      .cls-699 {
        fill: #e5f5e6;
        stroke: #e5f5e6;
      }

      .cls-700 {
        fill: #feeda5;
        stroke: #feeda5;
      }

      .cls-701 {
        fill: #fdf4b4;
        stroke: #fdf4b4;
      }

      .cls-702 {
        fill: #fcf5b8;
        stroke: #fcf5b8;
      }

      .cls-703 {
        fill: #d3edef;
        stroke: #d3edef;
      }

      .cls-704 {
        fill: #fdb96d;
        stroke: #fdb96d;
      }

      .cls-705 {
        fill: #def2eb;
        stroke: #def2eb;
      }

      .cls-706 {
        fill: #fecd80;
        stroke: #fecd80;
      }

      .cls-707 {
        fill: #f7f9c7;
        stroke: #f7f9c7;
      }

      .cls-708 {
        fill: #d6eeee;
        stroke: #d6eeee;
      }

      .cls-709 {
        fill: #e3f4e7;
        stroke: #e3f4e7;
      }

      .cls-710 {
        fill: #fcb56b;
        stroke: #fcb56b;
      }

      .cls-711 {
        fill: #95c6df;
        stroke: #95c6df;
      }

      .cls-712 {
        fill: #fa9c5b;
        stroke: #fa9c5b;
      }

      .cls-713 {
        fill: #89bcda;
        stroke: #89bcda;
      }

      .cls-714 {
        fill: #c7e7ef;
        stroke: #c7e7ef;
      }

      .cls-715 {
        fill: #cfebef;
        stroke: #cfebef;
      }

      .cls-716 {
        fill: #bce0ed;
        stroke: #bce0ed;
      }

      .cls-717 {
        fill: #feeaa2;
        stroke: #feeaa2;
      }

      .cls-718 {
        fill: #fee59b;
        stroke: #fee59b;
      }

      .cls-719 {
        fill: #edf7dd;
        stroke: #edf7dd;
      }

      .cls-720 {
        fill: #d5eeee;
        stroke: #d5eeee;
      }

      .cls-721 {
        fill: #b7ddec;
        stroke: #b7ddec;
      }

      .cls-722 {
        fill: #b8deec;
        stroke: #b8deec;
      }

      .cls-723 {
        fill: #bee1ed;
        stroke: #bee1ed;
      }

      .cls-724 {
        fill: #b9deec;
        stroke: #b9deec;
      }

      .cls-725 {
        fill: #dcf0ec;
        stroke: #dcf0ec;
      }

      .cls-726 {
        fill: #70a5cd;
        stroke: #70a5cd;
      }

      .cls-727 {
        fill: #9acae1;
        stroke: #9acae1;
      }

      .cls-728 {
        fill: #eff8d8;
        stroke: #eff8d8;
      }

      .cls-729 {
        fill: #f6f9ca;
        stroke: #f6f9ca;
      }

      .cls-730 {
        fill: #c5e6ef;
        stroke: #c5e6ef;
      }

      .cls-731 {
        fill: #bae0ed;
        stroke: #bae0ed;
      }

      .cls-732 {
        fill: #daefed;
        stroke: #daefed;
      }

      .cls-733 {
        fill: #bee2ed;
        stroke: #bee2ed;
      }

      .cls-734 {
        fill: #d1ecef;
        stroke: #d1ecef;
      }

      .cls-735 {
        fill: #c9e8ef;
        stroke: #c9e8ef;
      }

      .cls-736 {
        fill: #a1d0e4;
        stroke: #a1d0e4;
      }

      .cls-737 {
        fill: #91c4de;
        stroke: #91c4de;
      }

      .cls-738 {
        fill: #83b7d7;
        stroke: #83b7d7;
      }

      .cls-739 {
        fill: #6397c6;
        stroke: #6397c6;
      }

      .cls-740 {
        fill: #669bc7;
        stroke: #669bc7;
      }

      .cls-741 {
        fill: #6ca1cb;
        stroke: #6ca1cb;
      }

      .cls-742 {
        fill: #5484bc;
        stroke: #5484bc;
      }

      .cls-743 {
        fill: #7db2d4;
        stroke: #7db2d4;
      }

      .cls-744 {
        fill: #80b5d6;
        stroke: #80b5d6;
      }

      .cls-745 {
        fill: #5688be;
        stroke: #5688be;
      }

      .cls-746 {
        fill: #4870b2;
        stroke: #4870b2;
      }

      .cls-747 {
        fill: #466cb0;
        stroke: #466cb0;
      }

      .cls-748 {
        fill: #5382bb;
        stroke: #5382bb;
      }

      .cls-749 {
        fill: #7fb4d5;
        stroke: #7fb4d5;
      }

      .cls-750 {
        fill: #5c90c2;
        stroke: #5c90c2;
      }

      .cls-751 {
        fill: #8dc0db;
        stroke: #8dc0db;
      }

      .cls-752 {
        fill: #6093c4;
        stroke: #6093c4;
      }

      .cls-753 {
        fill: #70a6ce;
        stroke: #70a6ce;
      }

      .cls-754 {
        fill: #84b9d7;
        stroke: #84b9d7;
      }

      .cls-755 {
        fill: #699ec9;
        stroke: #699ec9;
      }

      .cls-756 {
        fill: #7aafd2;
        stroke: #7aafd2;
      }

      .cls-757 {
        fill: #76acd1;
        stroke: #76acd1;
      }

      .cls-758 {
        fill: #5181ba;
        stroke: #5181ba;
      }

      .cls-759 {
        fill: #405fa9;
        stroke: #405fa9;
      }

      .cls-760 {
        fill: #3f5da8;
        stroke: #3f5da8;
      }

      .cls-761 {
        fill: #4f7cb8;
        stroke: #4f7cb8;
      }

      .cls-762 {
        fill: #313796;
        stroke: #313796;
      }

      .cls-763 {
        fill: #4974b4;
        stroke: #4974b4;
      }

      .cls-764 {
        fill: #3e5aa7;
        stroke: #3e5aa7;
      }

      .cls-765 {
        fill: #79afd2;
        stroke: #79afd2;
      }

      .cls-766 {
        fill: #37499f;
        stroke: #37499f;
      }

      .cls-767 {
        fill: #6499c7;
        stroke: #6499c7;
      }

      .cls-768 {
        fill: #5c8ec1;
        stroke: #5c8ec1;
      }

      .cls-769 {
        fill: #5e91c3;
        stroke: #5e91c3;
      }

      .cls-770 {
        fill: #37479d;
        stroke: #37479d;
      }

      .cls-771 {
        fill: #679cc9;
        stroke: #679cc9;
      }

      .cls-772 {
        fill: #669ac7;
        stroke: #669ac7;
      }

      .cls-773 {
        fill: #4d7bb7;
        stroke: #4d7bb7;
      }

      .cls-774 {
        fill: #699fca;
        stroke: #699fca;
      }

      .cls-775 {
        fill: #8bbeda;
        stroke: #8bbeda;
      }

      .cls-776 {
        fill: #3c57a6;
        stroke: #3c57a6;
      }

      .cls-777 {
        fill: #6498c6;
        stroke: #6498c6;
      }

      .cls-778 {
        fill: #4468ae;
        stroke: #4468ae;
      }

      .cls-779 {
        fill: #4164ab;
        stroke: #4164ab;
      }

      .cls-780 {
        font-size: 30px;
        fill: #fff;
      }

      .cls-781, .cls-782 {
        stroke: $grayBlue;
        stroke-width: 3px;
      }

      .cls-782 {
        stroke-dasharray: 1.99 5.97;
      }

      .cls-783 {
        fill: $grayBlue;
      }

      .cls-784 {
        font-size: 26px;
        fill: $grayBlue;
      }
</style>