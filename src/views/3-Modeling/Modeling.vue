<template>
  <div id="modeling">
    <div
      id="intro-container"
      class="text-content"
    >
      <h2>Modeling!</h2>
    </div>
    <!--  figure contains all the sticky elements -->
    <figure
      ref="figure"
      class="sticky"
    >
      <div id="flubber-container">
        <div id="flubber">
          <svg
            id="transform-svg-test"
            xmlns="http://www.w3.org/2000/svg"
            width="300px"
            height="300px"
          >
            <g
              id="path1"
              transform="translate(0 25)"
            >
              <path
                id="ANN"
                class="path1 river flubber visuals"
                d="M124.3,126H33.5v-2h90.8Z"
              />
              <path
                id="RNN"
                class="path1 river flubber visuals"
                d="M37.1,166.9l-4-.9c.5-3,13.5-72.2,44.3-83.5,15.2-5.6,32.1,3.8,49.9,28.4l-2.3,3.2C108,90.7,92.3,81.2,78.2,86.3,49.1,97,37.2,166.2,37.1,166.9Z"
              />
              <path
                id="RGCN"
                class="path1 river flubber visuals"
                d="M125.4,126.3c-9-18.1-21.7-20.5-35.2-23-9.1-1.7-15.9-3.1-23.8-9.9-6.1-5.3-7.9-15.4-9.5-27.2-1.4-10.1-2.2-19.7-7.4-35.4l6.5-6c5.3,16.1,7.1,28.8,8.5,39.1S67,82.6,72,86.9c7.1,6.1,15.6,7.7,24.5,9.4,13.9,2.6,28.2,5.3,38.1,25.1Z"
              />
              <path
                id="RGCN_2"
                class="path1 river flubber visuals"
                d="M122.8,175a8.5,8.5,0,0,1-4.4-1.7c-.9-.8-1.1-2.1-1.4-4.2a37.1,37.1,0,0,0-1.5-7,8.5,8.5,0,0,1,1.7-6.2,7.2,7.2,0,0,0,1.1-1.9,6,6,0,0,0,.4-2.2,19.4,19.4,0,0,0-.2-4.2,8.5,8.5,0,0,0-1.5-4.1,7.4,7.4,0,0,0-3.5-2.8,21.7,21.7,0,0,0-4.1-.9,1.9,1.9,0,0,1-1.5-.5c-.1-.1-.1-.2-.1-.4a2.1,2.1,0,0,1,.4-.6,4.2,4.2,0,0,1,1.5-1.1,5.6,5.6,0,0,1,1.7-.9l2-.9a4,4,0,0,0,1.6-1.8,9.5,9.5,0,0,0,.7-4.4,15.5,15.5,0,0,0-.4-2.1,7.8,7.8,0,0,0-.9-2.1,16.1,16.1,0,0,0-5.6-6.3,6,6,0,0,0-2.1-.8l-2.1-.4a3.8,3.8,0,0,1-1.6-.6,4.7,4.7,0,0,1-1.1-1.3,5.5,5.5,0,0,1-.9-2.2,16.2,16.2,0,0,1-.1-2.2,11.9,11.9,0,0,1,1.1-4.1,13.1,13.1,0,0,1,2.7-3.5l1.6-1.5a9.1,9.1,0,0,0,1.7-1.7,41,41,0,0,0,2.3-4,20.8,20.8,0,0,0,1.9-4.3,20.4,20.4,0,0,0,.9-9.2c-.4-3.1-1.8-5.9-2.2-8.8A4.9,4.9,0,0,1,111,72a6.9,6.9,0,0,1,1-1.9,8.2,8.2,0,0,1,3.6-2.4l2.1-.8a4.1,4.1,0,0,0,1.1-.7,2.4,2.4,0,0,0,.6-1.1,4.8,4.8,0,0,0-.1-2.4c-.2-.8-.5-1.5-.7-2.2a8.9,8.9,0,0,1-.3-2.2,2.2,2.2,0,0,1,.9-1.7c1-1,2.6-.9,4.1-1s3.3-.4,4.3-1.9a3.9,3.9,0,0,0,.7-2.3,16.4,16.4,0,0,0-.2-2.3,13.6,13.6,0,0,0-1.2-4.5,25.6,25.6,0,0,0-2.2-4,16.9,16.9,0,0,0-2.9-3.7,19.7,19.7,0,0,0-3.8-2.6,7.5,7.5,0,0,1-3.3-2.8,21.9,21.9,0,0,1-2.1-4,10.8,10.8,0,0,1-.8-4.4c.1-1.5.3-3,.4-4.5a17.6,17.6,0,0,0,.2-4.6,5.2,5.2,0,0,0-2-4A7.8,7.8,0,0,0,106,8.7a23.2,23.2,0,0,0-4.6.4,51.5,51.5,0,0,0-8.6,3h0a46.4,46.4,0,0,1,8.7-2.8,16.5,16.5,0,0,1,4.5-.3,6.6,6.6,0,0,1,4.1,1.2,5,5,0,0,1,1.9,3.8,17,17,0,0,1-.2,4.5c-.2,1.5-.4,3-.5,4.5a19.3,19.3,0,0,0,.1,2.4,18,18,0,0,0,.6,2.2,39.3,39.3,0,0,0,2.1,4.1,10.6,10.6,0,0,0,3.6,3.1,24,24,0,0,1,3.7,2.5,17.7,17.7,0,0,1,2.6,3.5l1.2,2a18.6,18.6,0,0,1,1,2,13,13,0,0,1,1.1,4.3c.2,1.4.4,3-.4,4.1a2.7,2.7,0,0,1-1.6,1.1,6.5,6.5,0,0,1-2.1.4h-2.3a5.4,5.4,0,0,0-2.3,1.1,3.2,3.2,0,0,0-1.1,2.3,9.9,9.9,0,0,0,.3,2.4c.2.7.5,1.4.7,2.2a4.6,4.6,0,0,1,.1,2c-.1.5-.6.9-1.2,1.3l-2.1.7a8.9,8.9,0,0,0-4,2.7,6.1,6.1,0,0,0-1.3,4.6c.4,3.1,1.7,6,2,8.9a18.5,18.5,0,0,1-1,8.7,35.2,35.2,0,0,1-1.8,4c-.8,1.3-1.5,2.6-2.3,3.8l-1.4,1.4a14.5,14.5,0,0,0-1.8,1.6,13.3,13.3,0,0,0-2.9,3.8,10.2,10.2,0,0,0-1.3,4.8,19.3,19.3,0,0,0,.1,2.4v.4a5.9,5.9,0,0,0-2-.6,3.3,3.3,0,0,0-2.3.6,3.5,3.5,0,0,0-1.2,2,4,4,0,0,1-.8,1.6l-.6.4H92c-1.1-.1-2.2-1-3.3-1.7l-3.2-2.3a8.3,8.3,0,0,1-2.3-3,7.8,7.8,0,0,1-.3-3.7,4.8,4.8,0,0,1,.6-1.8c.3-.6.7-1.1,1-1.8a10.4,10.4,0,0,0,.4-1v-.7a1.4,1.4,0,0,0-.2-.6,3,3,0,0,0-1.9-1.4,5.3,5.3,0,0,0-2.2.3l-1.8.9L77,102l-2,.2a17,17,0,0,1-3.9-.1l-1.8-.5-1.7-1.1A12,12,0,0,1,65,97.6a7.7,7.7,0,0,1-.7-3.7c.1-1.3.2-2.7.2-4a24.2,24.2,0,0,1,6-14.5,19.6,19.6,0,0,1,6.3-4.8,61.3,61.3,0,0,1,7.5-2.9,61,61,0,0,0,14.4-7.3l3.3-2.3,3.1-2.6,6-5.5H111l-6.1,5.4-3.1,2.5-3.3,2.3a60.3,60.3,0,0,1-14.4,7.1A58.3,58.3,0,0,0,76.5,70,21,21,0,0,0,70,74.9a25.3,25.3,0,0,0-4.4,6.9,19.8,19.8,0,0,0-1.3,3.9,29,29,0,0,0-.6,4.1c0,1.4-.1,2.7-.2,4.1a8.6,8.6,0,0,0,.8,4.1,9.3,9.3,0,0,0,2.8,3.1,9.4,9.4,0,0,0,1.8,1.2l2,.6a14.8,14.8,0,0,0,4.2.2l2.1-.3a8,8,0,0,0,2-.7,5.9,5.9,0,0,1,3.5-1,1.4,1.4,0,0,1,1.1.9.4.4,0,0,1,.1.3v.3a2.5,2.5,0,0,1-.4.7l-1,1.8a6.6,6.6,0,0,0-.8,2.1,9,9,0,0,0,.4,4.3,8.5,8.5,0,0,0,2.1,3.2,58.7,58.7,0,0,0-9.4-.4,15,15,0,0,0-9.8,4.1c-2.6,2.5-4.4,5.8-7.5,7.8a9,9,0,0,1-2.4,1.2l-2.6.5-5.4.4h0l5.4-.4a12.8,12.8,0,0,0,2.7-.5,10.8,10.8,0,0,0,2.4-1.2c3.1-2,5-5.2,7.5-7.7a14.3,14.3,0,0,1,9.8-3.9,65.7,65.7,0,0,1,9.9.5c1,.9,2.2,1.6,3.1,2.3l1.8,1.2a6.3,6.3,0,0,0,2.2.8,2.4,2.4,0,0,0,1.4-.2,2.8,2.8,0,0,0,1.1-.8,5.3,5.3,0,0,0,1.1-2.1,2.6,2.6,0,0,1,.7-1.3,1.6,1.6,0,0,1,1.3-.2c1,.1,2.7.6,3.2,1.3a13.6,13.6,0,0,0,1.4,1.9,5.3,5.3,0,0,0,2.3.8l2,.3,1.7.7a13.2,13.2,0,0,1,5.1,5.8,13,13,0,0,1,.8,1.7,6.3,6.3,0,0,1,.3,1.9,7.6,7.6,0,0,1-.5,3.7,2.8,2.8,0,0,1-1.1,1.3l-1.8.8-1.9.9a11,11,0,0,0-1.8,1.4,4.5,4.5,0,0,0-.6,1.2,2,2,0,0,0,.3,1.5,3.4,3.4,0,0,0,2.3,1,15.9,15.9,0,0,1,3.9.8,6,6,0,0,1,2.9,2.3,8.2,8.2,0,0,1,1.3,3.5,17.9,17.9,0,0,1,.2,4,5.8,5.8,0,0,1-.3,1.9,10.1,10.1,0,0,1-1,1.6,9.5,9.5,0,0,0-1.9,3.9,8.1,8.1,0,0,0,0,4.1,23.4,23.4,0,0,1,1.3,6.3c.3,2.2.7,4,1.8,4.9a7.2,7.2,0,0,0,4.2,1.8c2.5.5,4.8.9,6.4,4.2l1.6-.9C127.8,175.9,125.3,175.4,122.8,175Z"
              />
              <path
                id="RGCN_ptrn"
                class="path1 river flubber visuals"
                d="M46,59.8A13.2,13.2,0,0,1,33,73.2,13.3,13.3,0,0,1,19.9,59.8c0-7.4,10.7-15.9,13.1-30.1C35.3,43.6,46,52.4,46,59.8Z"
              />
            </g>
            <g
              id="path2"
              transform="translate(0 25)"
            >
              <path
                id="ANN"
                class="path2 river flubber visuals"
                d="M215.3,126H124.5v-2h90.8Z"
              />    
              <path
                id="RNN"
                class="path2 river flubber visuals"
                d="M188.6,153.1c-18.7,0-41.5-12.7-64.3-39.2l2.8-2.7c25.4,28.7,48.8,40.7,67.6,37.3,23.9-4.3,36.2-33.1,42.8-48.6,1.4-3.3,2.6-6,3.5-7.7l3.4,2c-.8,1.5-1.9,4.1-3.3,7.3-6.9,16.2-19.7,46.3-45.7,51A38.2,38.2,0,0,1,188.6,153.1Z"
              />
              <path
                id="RGCN"
                class="path2 river flubber visuals"
                d="M162.9,242.6l-22.4-.3c.2-2.5,4.3-52.3-16.9-72.3-12.8-12-9.3-54.9-5.5-67,5-15.7,19.9-15.1,18-27.4-1.4-9.2-25.2-28.1-21.8-47.1C116.1,18,119,12.1,124.4,5.7l18.2,4.1c-5.5,6.4-8,11.6-8,20.6,0,16.1,12.4,23.1,21.1,38.9,3.3,6,2.4,16.3-12.1,32.1-8.7,9.4-12.7,44.8.7,57C167,178.9,163.2,240.3,162.9,242.6Z"
              />
              <path
                id="RGCN_2"
                class="path2 river flubber visuals"
                d="M215.7,233.2l-3.2-.2h-1.3l-1.2-.6c-1.8-.8-2.4-2.1-5.1-3.3a25.7,25.7,0,0,0-5.5-1.2h-1c-.4-2.3-.9-4.7-1.4-7.1a50.8,50.8,0,0,0-2.5-7.5,30.2,30.2,0,0,0-1.8-3.6l-.6-1a2.3,2.3,0,0,1,1.6-1.6,24.6,24.6,0,0,1,2.8-.2,6.8,6.8,0,0,0,6.1-5.6,7.5,7.5,0,0,1,.7-1.2,3.2,3.2,0,0,1,1-1l2.4-1.5a3.2,3.2,0,0,0,1.2-2.6h-.1a3.4,3.4,0,0,1-1.3,2.4,28,28,0,0,1-2.5,1.4,4.3,4.3,0,0,0-1.9,2.3,5.7,5.7,0,0,1-.4,1.4,6.7,6.7,0,0,1-.6,1.2,5.8,5.8,0,0,1-4.6,2.5,10,10,0,0,0-3,0,3.1,3.1,0,0,0-1.5.8l-.5.7-.9-1.3a6.8,6.8,0,0,1-.9-6.7,29,29,0,0,1,2-3.3,37.9,37.9,0,0,0,2-3.4c1.1-2.3,2.5-4.5,3.7-6.8.4-.5.7-1.1,1.1-1.5a5.8,5.8,0,0,1,1.5-1.1,15.1,15.1,0,0,0,1.7-1,4,4,0,0,0,1.3-1.6c1.4-2.3,1.8-4.9,2.6-7.4h-.3c-.9,2.5-1.5,5.1-2.9,7.2a4.9,4.9,0,0,1-1.2,1.3l-1.6.8a7.1,7.1,0,0,0-1.8,1.2,18.3,18.3,0,0,0-1.3,1.6c-1.4,2.3-2.8,4.4-4.1,6.7s-1.4,2.2-2,3.3a21.9,21.9,0,0,0-2.1,3.4,7.2,7.2,0,0,0-.7,4.3,10.9,10.9,0,0,0,1.6,4c.7,1.1,1.4,2.1,2,3.2s.9,2.4,1.3,3.6a108.2,108.2,0,0,1,2.9,14.2h-.6c-2.7.4-4.5.9-6.7,1.4a21.6,21.6,0,0,1-3.5.3,25.5,25.5,0,0,1-3.8-.2c-4.5-.3-8-1.3-12.6-2.5l-8.3-3.3a25.4,25.4,0,0,0-5.3-1.9c-3.4-.6-6.6,1.3-10,1.1a5.6,5.6,0,0,1-3.2-1.5,9.6,9.6,0,0,1-2.3-2.6,11.8,11.8,0,0,1-1.1-1.9,20.7,20.7,0,0,1-.8-2,24.5,24.5,0,0,0-2.6-5.1,8.6,8.6,0,0,0-1.3-1.4c1.1-2.8,1.1-4.6,1.4-7.3.1-.4.8-11.5-3.3-15.2-2.4-2.2-1.7-8.5-.1-10.2s2.7-4.7,2.1-5.8c-1.5-2.8-3.8-4.1-3.8-7a7,7,0,0,1,.8-3,37.5,37.5,0,0,1,3.8-6.3,7.3,7.3,0,0,1,2.2-2.1l3.1-1.8a9.4,9.4,0,0,0,2.9-2.7,15.3,15.3,0,0,0,1.6-3.5l1.1-3.4c.4-1.1.8-2.3,1.1-3.4a15.3,15.3,0,0,0,.8-3.7,11.5,11.5,0,0,0,0-3.7,40.6,40.6,0,0,0-1.5-7.1l-.9-3.4c-.3-1.2-.6-2.3-.8-3.4a32.1,32.1,0,0,1-.2-6.9,6.3,6.3,0,0,1,1-3,10,10,0,0,1,2.3-2.3,28.3,28.3,0,0,0,2.8-2.3,6.4,6.4,0,0,0,1.3-1.5,14.2,14.2,0,0,0,.8-1.8c.7-2.4.8-4.8,1.3-7a9.7,9.7,0,0,1,3.3-5.8c1.7-1.4,4-2.2,6.2-3.2a23.8,23.8,0,0,0,3.1-1.7,27.3,27.3,0,0,0,3-2.1,33.7,33.7,0,0,0,5.2-4.8,43.9,43.9,0,0,0,3.8-6.1c0-.2,0-.3-.1-.4s-.3,0-.4.1a29.8,29.8,0,0,1-3.8,5.9,38.9,38.9,0,0,1-5.3,4.6l-2.9,2a17.7,17.7,0,0,1-3.1,1.5,30.1,30.1,0,0,0-6.5,3.2,9.9,9.9,0,0,0-2.5,2.9,17.4,17.4,0,0,0-1.3,3.6c-.6,2.3-.9,4.7-1.6,6.8a6.2,6.2,0,0,1-1.7,2.6,14.8,14.8,0,0,1-2.7,2.1,17.2,17.2,0,0,0-2.7,2.7,9.1,9.1,0,0,0-1.3,3.8,22.8,22.8,0,0,0,0,3.7V114c.1.6.1,1.2.2,1.9a35.9,35.9,0,0,0,.8,3.5l.2.9.2.8.4,1.8a41.1,41.1,0,0,1,1.4,6.8,12.2,12.2,0,0,1-.1,3.3c-.2,1-.6,2.1-.9,3.2a30.5,30.5,0,0,1-1.3,3.2l-1.3,3.4a16.7,16.7,0,0,1-1.4,2.7,7.9,7.9,0,0,1-2.2,1.8l-3.1,1.8a11.5,11.5,0,0,0-3.2,2.7c-1.7,2.2-5.2,8.1-5.6,11s3.6,6.8,3.9,8.4-2.3,2.1-3.2,5-1.4,9.9,1,12c3.8,3.6,3,12.5,3,13a27.3,27.3,0,0,1-1.2,5.9,32.5,32.5,0,0,0-8.4-3c-3.1-.7-6.2-1.1-9.1-1.9a19.7,19.7,0,0,1-4-1.6l-.9-.6-1-.6-2.1-1.3a46.4,46.4,0,0,0-8.9-3.7,58.4,58.4,0,0,1-8.6-3.1,17.1,17.1,0,0,1-6.6-5.6c-.7-1.3-1.3-2.7-1.9-4.1a30.6,30.6,0,0,1-1.3-4.3c-.5-3-.6-6.1-.9-9.2a40,40,0,0,0-.8-4.8,20.9,20.9,0,0,0-.8-2.3,10.5,10.5,0,0,0-1.2-2.1,44,44,0,0,1-2.6-3.9,10.3,10.3,0,0,1-1.3-4.2,22.2,22.2,0,0,1,.6-4.4c.4-1.6.8-3,1.3-4.6a6.5,6.5,0,0,0-.1-3.1,4.3,4.3,0,0,0-2-2.6c-.1-.1-.3,0-.4.1s0,.3.1.4a4,4,0,0,1,1.7,2.3,6.4,6.4,0,0,1-.1,2.8c-.5,1.5-1,2.9-1.4,4.4a18.5,18.5,0,0,0-.8,4.8,11,11,0,0,0,1.3,4.7c.8,1.4,1.7,2.7,2.5,4s2.1,5.5,2.4,8.6.2,6.2.7,9.4c.2,1.1.5,2.3.8,3.4a37.9,37.9,0,0,0-6.7.6l-3.8.7-1.9.5a6.2,6.2,0,0,0-1.9.7,7.8,7.8,0,0,0-2.8,2.9,9.6,9.6,0,0,0-1.3,3.7,26,26,0,0,0-.5,3.9,8.7,8.7,0,0,1-1.3,3.5,8.3,8.3,0,0,1-6.3,3.7,8.1,8.1,0,0,1-3.7-.7L42,199a14.6,14.6,0,0,0-7.7-1.2,37.5,37.5,0,0,0-7.5,1.9h-.1a.1.1,0,0,0,.1.1,33.8,33.8,0,0,1,7.5-1.7,13.7,13.7,0,0,1,7.5,1.2l3.6,1.6a8.5,8.5,0,0,0,3.9.8,9,9,0,0,0,6.7-3.9,10.1,10.1,0,0,0,1.3-3.8c.2-1.3.3-2.6.5-3.8a13.3,13.3,0,0,1,1.3-3.5,6.5,6.5,0,0,1,2.6-2.6l1.7-.6,1.9-.4,3.8-.6a53.6,53.6,0,0,1,7-.5.4.4,0,0,0,.1.3,19.3,19.3,0,0,0,2,4.4,18.1,18.1,0,0,0,7.3,6.7,55.3,55.3,0,0,0,8.5,3.3l-1.6.9-.4.2-.5.4a2.7,2.7,0,0,0-.7.8,7.7,7.7,0,0,0-.8,1.9,45.6,45.6,0,0,0-.5,7.3c-.1,1.1-.2,2.3-.4,3.4s-.7,2.2-1.6,2.5a4.5,4.5,0,0,1-3.2-.3c-1-.4-2.1-1-3.3-1.4a6.2,6.2,0,0,0-3.8.1,11.3,11.3,0,0,0-3.2,1.9l-2.7,2.5-2.7,2.3a15.5,15.5,0,0,1-6.2,3.3l-1.7.4a2.3,2.3,0,0,0-1.5,1l-1.1,1.5c-.3.4-.7,1-1.3.9h0a.9.9,0,0,0,.9-.3l.6-.7a17.1,17.1,0,0,1,1.1-1.4,2,2,0,0,1,1.4-.8l1.7-.4a16.3,16.3,0,0,0,6.6-3.2l2.8-2.2,2.7-2.3c1.8-1.4,4-2.5,6.1-1.8l3.2,1.4a6,6,0,0,0,1.9.6,3.3,3.3,0,0,0,3.7-1.7,6.7,6.7,0,0,0,.7-1.8c.3-1.2.5-2.4.7-3.6a46.2,46.2,0,0,1,.9-6.9,2.6,2.6,0,0,1,.6-1.3l.3-.4.2-.2.4-.2,3.2-1.7h0a43.9,43.9,0,0,1,6.2,2.9l1.9,1.2,1,.6,1,.7a29.8,29.8,0,0,0,4.6,1.9c3.2,1,6.3,1.4,9.3,2.1a26.4,26.4,0,0,1,8.2,3.2l1.8,1.2,1.4,1.4a16.5,16.5,0,0,1,2,3.7,13.6,13.6,0,0,0,.9,2.3,18.8,18.8,0,0,0,4.5,6.1l1.1.9,1.2.7a7.4,7.4,0,0,0,2.8.8,16.5,16.5,0,0,0,5.1-.4l2.2-.3,1.9.2a14.7,14.7,0,0,1,3.9,1.5l8.6,4c4.1,2,11.3,3.8,15.1,3.8a74.1,74.1,0,0,0,7.5-.5c2.6-.4,4.9-1.1,7-1.4a15.3,15.3,0,0,1,3-.1,12.9,12.9,0,0,1,2.6.8c1.7.8,3.5,2.4,6,3.7a6.7,6.7,0,0,0,2.1.9l1.2.4h1.1a25.6,25.6,0,0,0,3.9.3c2.6.1,5.1-.1,7.5-.2h0v-7.4C220.6,232.9,218,233.3,215.7,233.2Z"
              />
              <path
                id="RGCN_ptrn"
                class="path2 river flubber visuals"
                d="M18.1,222.9l-7.3-51c93.1-8.5,91.3,16,153.3,6.4,22.8-5.5-2.2-44.2-3.1-64.6-2.1-47.9,19.8-75.7,72.4-85.5V67.3c-32.6-1.3-39.1,35.6-23.2,69.8,15.2,32.5,19.9,63.3,2.8,84.3S87.1,208.7,18.1,222.9Z"
              />
            </g>
            <g
              id="path3"
              transform="translate(0 25)"
            >
              <path
                id="ANN"
                class="path3 other flubber visuals"
                d="M28,125c.2,7.1,10.5,7.4,11,0A5.5,5.5,0,0,0,28,125Z"
              />
              <path
                id="RNN"
                class="path3 other flubber visuals"
                d="M78.6,84.4a5.5,5.5,0,1,0,11,0C89,76.9,79,77.5,78.6,84.4Z"
              />
              <path
                id="RGCN"
                class="path3 other flubber visuals"
                d="M136.6,209c.2,7.1,10.4,7.4,10.9,0S137,202,136.6,209Zm1.3,0a4.2,4.2,0,1,1,8.3,0C145.8,214.6,138,214.4,137.9,209Z"
              />
              <path
                id="RGCN_2"
                class="path3 other flubber visuals"
                d="M195.1,240.5l-4.7-1.7.4,1.9c-8.8,1.2-16.2.5-24-2.6a44.8,44.8,0,0,1-4.9-2.3,28.1,28.1,0,0,0-9.1-3.3,29.3,29.3,0,0,0-4.9.2c-2.4.1-5,.4-6.4-.1a17.3,17.3,0,0,1-10.5-7.5,26.6,26.6,0,0,1-1.9-4.4c-.6-1.9-1.2-3.8-3.2-5.3-4.2-3.3-12.2-4.7-16.7-5.2-2.8-.4-6.3-2.7-9.1-4.6a35.1,35.1,0,0,0-4.2-2.5l-.4.9a45.6,45.6,0,0,1,4.1,2.5c3,2,6.5,4.3,9.5,4.6s12.2,2,16.2,5.1c1.7,1.3,2.2,2.9,2.9,4.8a16,16,0,0,0,2,4.6c2.3,3.8,6,6.5,11,8,1.6.5,4.2.3,6.7.1a28.1,28.1,0,0,1,4.8-.2c3.4.4,6,1.8,8.8,3.2s3.1,1.6,5,2.4a45.9,45.9,0,0,0,16.7,3.2,50.9,50.9,0,0,0,7.7-.6l.4,2Z"
              />
              <path
                id="RGCN_ptrn"
                class="path3 other flubber visuals"
                d="M65.4,212h3.5l-7.7,7-7.9-7h4.4V177.5H53.8l7.7-7,7.9,7h-4Z"
              />
            </g>
            <g
              id="path4"
              transform="translate(0 25)"
            >
              <path
                id="ANN"
                class="path4 other flubber visuals"
                d="M119,125c.2,7.1,10.5,7.4,11,0A5.5,5.5,0,0,0,119,125Z"
              />
              <path
                id="RNN"
                class="path4 other flubber visuals"
                d="M121.7,114.5c.2,7.2,10.4,7.5,10.9,0A5.5,5.5,0,0,0,121.7,114.5Z"
              />
              <path
                id="RGCN"
                class="path4 other flubber visuals"
                d="M134.1,50.3c.2,7.2,10.4,7.5,10.9,0s-10.5-6.9-10.9,0"
              />
              <path
                id="RGCN_2"
                class="path4 other flubber visuals"
                d="M121.5,180.6l-3.7-3.3-.4,2c-2-.6-4.4-1.6-5.4-3.3a6,6,0,0,1-.5-3.1,10.2,10.2,0,0,0-1-5.2c-.8-1.7-2.2-5.9-2.1-7.9a9,9,0,0,1,2-5.4c.9-1.5,2-3,1.7-5.3a2.7,2.7,0,0,0-2.5-2.5c-5-1-8-2.2-8.7-3.6a5.6,5.6,0,0,1,.1-5.2,16.2,16.2,0,0,1,4.9-5.5l.4-.2a4.3,4.3,0,0,0,2.2-2.7c.4-4.7-4-5.6-6.4-6l-1.6-.4c-1.7-1.2-2.6-4.2-2.6-4.2l-.9.2s.9,3.5,3,4.8a4.7,4.7,0,0,0,1.9.6c3.1.6,5.9,1.4,5.6,4.9-.1.8-1,1.4-1.8,1.9l-.3.3a16.7,16.7,0,0,0-5.3,5.9,6.4,6.4,0,0,0-.1,6c.9,1.8,3.9,3.1,9.4,4.2,1.2.2,1.6.6,1.7,1.6s-.6,3.2-1.6,4.7a9.9,9.9,0,0,0-2.1,5.9c-.1,2.1,1.3,6.5,2.2,8.3a9.5,9.5,0,0,1,.9,4.8,7,7,0,0,0,.6,3.6c1.3,2,3.9,3.2,6.1,3.8l-.4,1.9Z"
              />
              <path
                id="RGCN_ptrn"
                class="path4 other flubber visuals"
                d="M126.6,53V49.9H109.3a16.6,16.6,0,0,0-3.2-9.4l11.8-11.7-2.2-2.2L104,38.1a15.7,15.7,0,0,0-9.7-4.2V17.6h-3V33.9a16.5,16.5,0,0,0-9.6,4.2L70,26.4l-2.2,2.2L79.7,40.4a17.4,17.4,0,0,0-3.4,9.5H59V53H76.5a15.3,15.3,0,0,0,4.2,8.4L67.8,74.2l2.1,2.2L83,63.4a17.5,17.5,0,0,0,8.3,3.3V85.3h3V66.7a16.8,16.8,0,0,0,8.4-3.2l12.9,13,2.2-2.2L104.9,61.4a16.8,16.8,0,0,0,4.2-8.4Z"                
              />
            </g>
            <g
              id="path5"
              transform="translate(0 25)"
            >
              <path
                id="ANN"
                class="path5 other flubber visuals"
                d="M210,125c.2,7.1,10.5,7.4,11,0A5.5,5.5,0,0,0,210,125Z"
              />
              <path
                id="RNN"
                class="path5 other flubber visuals"
                d="M165,147c.2,7.1,10.4,7.4,10.9,0S165.4,140,165,147Z"
              />
              <path
                id="RGCN"
                class="path5 other flubber visuals"
                d="M134.1,50.3c.2,7.2,10.4,7.5,10.9,0s-10.5-6.9-10.9,0"
              />
              <path
                id="RGCN_2"
                class="path5 other flubber visuals"
                d="M190.1,223.9l-4.2-2.6v2c-6.9-.4-12.6-1-18-3l-3-1.3-4.1-1.8c-7.3-2.2-10.6-1.1-12.8-.5s-2.3.7-3.5,0-1.8-3-2.1-4.5a6.8,6.8,0,0,0-.3-1.2c-2-5-3.6-5.9-8-8.3l-.5-.2a29.4,29.4,0,0,0-10-3.6,59,59,0,0,1-10.6-2.7c-2.2-.9-4.4-2.1-6.5-3.2a35.4,35.4,0,0,0-3.3-1.9,69.5,69.5,0,0,0-6.8-2.9c-6-2.3-11.7-4.5-12.8-9l-1,.2c1.3,5,7.4,7.4,13.4,9.7,2.3.9,4.7,1.9,6.8,2.9l3.3,1.8a56.7,56.7,0,0,0,6.5,3.3,61.6,61.6,0,0,0,10.8,2.8,31,31,0,0,1,9.8,3.4l.4.3c4.4,2.4,5.7,3.1,7.6,7.7a5.3,5.3,0,0,1,.3,1.1c.3,1.6.8,4.1,2.5,5.1s2.8.7,4.3.2,5.2-1.6,12.2.5a36.1,36.1,0,0,1,4,1.7l3,1.3c5.6,2,11.4,2.7,18.3,3.1v1.9Z"
              />
              <path
                id="RGCN_ptrn"
                class="path5 other flubber visuals"
                d="M227,214.3l-11.2,6.4-2.1,1.1-9.1,5.2-2,1.2-11.2,6.4V219l11.2,6.8V212.6l11.3,6.8V206.2Z"
              />
            </g>
            <g
            id="ANN_annotations"
            class="flubber annotations">
            </g>
            <g 
            id="RNN_annotations"
            class="flubber annotations"
            transform="translate(0 25)">
              <text id="text-1" class="f_main light" transform="translate(93.9 75.1)"><tspan class="f_main light">yesterday</tspan></text>
              <text id="text-2" class="f_main bold" transform="translate(132.6 108.5)"><tspan class="f_main bold">today</tspan></text>
              <text id="text-3" class="f_main light" transform="translate(102.7 157.2)"><tspan class="f_main light">tomorrow</tspan></text>
              <g id="arrow">
                <g>
                  <line class="f_arrow" x1="21" y1="177" x2="21" y2="43.7"/>
                  <polygon class="f_arrowhead" points="23 43.5 21 40.1 19 43.5 23 43.5"/>
                </g>
              </g>
              <g id="arrow-2" data-name="arrow">
                <g>
                  <line class="f_arrow" x1="25.9" y1="183.2" x2="250" y2="183.2"/>
                  <polygon class="f_arrowhead" points="23 43.5 21 40.1 19 43.5 23 43.5" transform="translate(294,162.2) rotate(90)"/>
                </g>
              </g>
              <text id="axis_labels" class="f_minor" transform="translate(24.6 196.3)">time</text>
              <text id="axis_labels-2" data-name="axis_labels" class="f_minor" transform="translate(15.1 178.2) rotate(-90)"><tspan class="f_minor">temperature</tspan></text>
            </g>
            <g
            id="RGCN_annotations"
            class="flubber annotations"
            transform="translate(0 25)">
              <text id="text-1" class="f_main light" transform="translate(156.6 60)">well-observed</text>
              <text id="text-2" class="f_main bold" transform="translate(146 43)">Upstream</text>
              <text id="text-1-2" data-name="text-1" class="f_main light" transform="translate(64.6 225.4)">unobserved</text>
              <text id="text-2-2" data-name="text-2" class="f_main bold" transform="translate(52.5 209)">Downstream</text>
              <g>
                <path class="f_arrow" d="M173.2,70.4c1.6,3.6,1.8,7.9,1.7,12.1-.3,7.4-8.8,17.3-12.2,23.5s-4.7,15.5-5.1,23.6-.2,14.3,3.8,21.5,12.1,15.6,15.6,25,4,20,4.5,30.2"/>
                <polygon class="f_arrowhead" points="179.4 205.8 181.6 209.2 183.4 205.6 179.4 205.8"/>
              </g>
              <g>
                <path class="f_arrow" d="M43.7,58.3c2.8,10.9,2.7,22.6,4.2,28.1,5.8,21.9,24.5,25.5,30.6,26.2s14.6,2.3,20.7,5.9"/>
                <polygon class="f_arrowhead" points="97.6 119.9 101.5 120.1 99.8 116.5 97.6 119.9"/>
              </g>
              <g>
                <text class="f_minor" transform="translate(168.8 151.4) rotate(54.9)">F</text>
                <text class="f_minor" transform="matrix(0.56, 0.83, -0.83, 0.56, 172.65, 156.88)">l</text>
                <text class="f_minor" transform="matrix(0.54, 0.84, -0.84, 0.54, 174.51, 159.58)">o</text>
                <text class="f_minor" transform="translate(178.6 165.8) rotate(61.9)">w</text>
              </g>
              <g>
                <text class="f_minor" transform="translate(49.8 118.3) rotate(23.8)">F</text>
                <text class="f_minor" transform="matrix(0.94, 0.34, -0.34, 0.94, 56.13, 120.97)">l</text>
                <text class="f_minor" transform="translate(59.4 122.2) rotate(15.9)">o</text>
                <text class="f_minor" transform="translate(66.7 124.3) rotate(11.2)">w</text>
              </g>
            </g>
            <g
            id="RGCN_2_annotations"
            class="flubber annotations"
            transform="translate(0 25)">
              <rect class="f_sec" x="96.9" y="111.3" width="7.1" height="1.61" transform="translate(16.4 -12.8) rotate(7.9)"/>
              <rect class="f_sec" x="121" y="175.3" width="7.1" height="1.61" transform="translate(-88.6 208.8) rotate(-63.4)"/>
              <rect class="f_sec" x="70.6" y="181.3" width="7.1" height="1.61" transform="translate(-85.4 297.1) rotate(-103.7)"/>
              <rect class="f_sec" x="90.2" y="197.7" width="7.1" height="1.61" transform="translate(115 416.9) rotate(-160.3)"/>
              <rect class="f_sec" x="189.7" y="230.6" width="8.2" height="1.61" transform="translate(4.8 466.7) rotate(-101.3)"/>
              <text class="f_sec reg" transform="translate(91.5 108.7)">A</text>
              <text class="f_sec reg" transform="translate(120.5 172.6) scale(0.87 1)">B</text>
              <text class="f_sec reg" transform="translate(64.2 177.7)">C</text>
              <text class="f_sec reg" transform="translate(82.1 203.5)">D</text>
              <text class="f_sec reg" transform="translate(196.9 245.2)">E</text>
              <text class="other label" transform="translate(152 211.6) rotate(1.8)">C</text>
              <text class="other label" transform="translate(158 211.8) rotate(6.9)">-</text>
              <text class="other label" transform="matrix(0.98, 0.2, -0.2, 0.98, 161.82, 212.29)">E</text>
              <text class="other label" transform="translate(89.1 148.1) rotate(45.1)">A</text>
              <text class="other label" transform="translate(94.6 153.2) rotate(31.5)">-</text>
              <text class="other label" transform="matrix(0.93, 0.36, -0.36, 0.93, 98.76, 155.74)">B</text>
              <text class="other label" transform="translate(134.2 244) rotate(11)">D</text>
              <text class="other label" transform="matrix(0.99, 0.11, -0.11, 0.99, 141.35, 245.26)">-</text>
              <text class="other label" transform="matrix(1, 0.05, -0.05, 1, 145.6, 245.74)">E</text>
            </g>
            <g
            id="RGCN_ptrn_annotations"
            class="flubber annotations">
            </g>
          </svg>
        </div>
      </div>
      <div id="error-container" />
      <div id="bees-container" />
      <div id="legend-container">
        <svg
          id="bees_legend"
          xmlns="http://www.w3.org/2000/svg"
          viewBox="0 0 1000 1000"
        >
          <g
            id="legend-scale"
            transform="translate(0, 700)"
          >
            <path
              d="M228,643.5H807"
              transform="translate(-28.24 -627.46)"
              style="fill: none;stroke: white;stroke-miterlimit: 10;stroke-width: 3px"
            />
            <text
              class="text-annotate"
              transform="translate(50 27.42)"
            >accurate</text>
            <text
              class="text-annotate"
              transform="translate(795 27.42)"
            >inaccurate</text>
            <path
              d="M247.5,656.5l-23-12,22-15"
              transform="translate(-28.24 -627.46)"
              style="fill: none;stroke: white;stroke-linecap: round;stroke-linejoin: round;stroke-width: 3px"
            />
            <path
              d="M722.5,657.5l24-14-25-13"
              transform="translate(30 -627.46)"
              style="fill: none;stroke: white;stroke-linecap: round;stroke-linejoin: round;stroke-width: 3px"
            />
          </g>
        </svg>
      </div>
    </figure>
    <!--     all the scrolling elements are created from modelingText.js content -->
    <article>
      <div
        v-for="text in text.methods"
        :key="text.title"
        class="step-container text-content"
      >
        <div
          :id="text.flubber_id"
          class="step"
        >
          <h3> {{ text.title }} </h3>
          <p> {{ text.method }} </p>
        </div>
      </div>
    </article>
    <div id="map-container">
    <!--  <img src="@/assets/usa_hex_map_80-01.png" /> -->
    </div>
  </div>
</template>



<script>
    import * as d3Base from "d3";
    import * as scrollama from 'scrollama';
    import { interpolatePath } from 'd3-interpolate-path';
    import * as flubber from "flubber";

    import modelingText from "./../../assets/text/modelingText";


  export default {
    name: 'Modeling',
    components: {
    },
    data() {
          return {
            text: modelingText.textContents,
            publicPath: process.env.BASE_URL, // this is need for the data files in the public folder, this allows the application to find the files when on different deployment roots
            d3: null, // this is used so that we can assign d3 plugins to the d3 instance

            // dimensions
            margin: 20,
            width: 1000,
            height: 1000,
            marginX: 20,
            marginY: 20,

            // beeswarm
            radius: 4,
            bees: null,
            svg: null,
            xScale: null,
            model_sel: null,
            rmse_monthly: null,
            rmse_monthly_cast: null,

            // scroll options
            scroller: null,
            step: 0, //starts at 0 but this is also causing elements to refresh at step 0, which is a no-no
            progress: 0,

            // force
            force_sim: null,
            init_decay: null,

            timeBeforeKill: 5000,
            exp_color: ["orangered", "teal"],

           //listing model steps in order for the two separate datasets
            model_list: ['ANN','ANN','ANN','ANN','ANN','ANN', 'ANN', 'ANN', 'RNN','RNN', 'RGCN', 'RGCN', 'RGCN_ptrn','RGCN_ptrn'],
            model_list_cast: ['ANN_d001','ANN_d001','ANN_d001','ANN_d001','ANN_d001', 'ANN_d001', 'ANN_d001', 'RNN_d001','RNN_d001', 'RGCN_d001', 'RGCN_d001', 'RGCN_ptrn_d001','RGCN_ptrn_d001'],

            // flubber
            flubber_dict: {},
            flubber_id_order: [],
            current_flubber_id: null,
            
          }
        },
        mounted() {
          this.scroller = scrollama(), 
          this.scroller.setup({
                  step: "article .step",
                  debug: false,
                  offset: 0.9, //bottom of the page to trigger onStepEnter events
                  progress: false,
                })
                .onStepEnter(this.handleStepEnter)
                .onStepProgress(this.handleStepProgress)
                .onStepExit(this.handleStepExit);
          

          // 3. setup resize event...is this working as expected?
          this.resize();
          window.addEventListener("resize", this.resize);
          this.d3 = Object.assign(d3Base); // load d3 plugins with webpack
          this.paddedRadius = this.radius*1.2;

          // Populate flubber dictionary
          // add path number as key to nested dictionary
          document.querySelectorAll("#transform-svg-test g path").forEach(path => this.flubber_dict[path.classList[0]]={});
          // add flubber model id as key in nested dictionary, with path as value
          document.querySelectorAll("#transform-svg-test g path").forEach(path => this.flubber_dict[path.classList[0]][path.id]=path.getAttribute("d"));
          console.log(this.flubber_dict)
          
          // set order of flubber components
          this.flubber_id_order = ['ANN','RNN','RGCN','RGCN_2','RGCN_ptrn']

          this.getData(); //read in data and then draw chart

        },
        //methods are executed once, not cached as computed properties, rerun everytime deal with new step
        methods: {
          getData() {
            const self = this;

            this.setFlubber();

            let promises = [self.d3.csv(self.publicPath + "data/rmse_monthly_experiments.csv"),
            self.d3.csv(self.publicPath + "data/rmse_monthly_experiments_cast.csv")];

            Promise.all(promises).then(self.callback);
          },
          callback(data) {

            let rmse_monthly = data[0];
            let rmse_monthly_cast = data[1];

            var data_set = this.model_list[this.step];

            // does this belong here?
            this.force_sim = this.d3.forceSimulation(rmse_monthly); 
            this.force_sim.on('tick', self.tick)

            // draw initial beeswarm chart (data, xvar)
            // do this based on current step - what if page is reloaded at step 10?
            this.setChart(rmse_monthly, data_set);

            //triggered events
            // controls fadein/fadeout of extra annotations etc as scrolled
            this.makePop(this.step);
          },
          // resize to keep scroller accurate
          resize () {
            const self = this;
            const bounds = this.$refs.figure.getBoundingClientRect()
            this.width = bounds.width
            this.height = bounds.height
            this.marginX = bounds.width * 0.1
            this.marginY = bounds.height * 0.1
            this.scroller.resize()
          },
          // set up flubber svg
          setFlubber() {
            const self = this;

            // determine initial model id and initial annotation id
            // NOTE currently assumes that we are beginning the visuals at step 0
            let initial_model_id = self.flubber_id_order[self.step]
            let initial_annotation_id = initial_model_id + "_annotations"

            // Hide all flubber elements (visuals and annotations)
            self.d3.selectAll(".flubber")
              .attr("opacity", 0)
              // .style("visibility", "hidden");

            // display visual associated with initial model id
            self.d3.selectAll("#" + initial_model_id)
              .attr("opacity", 1)
              // .style("visibility", "visible");

            // display visual associated with initial model id
            self.d3.selectAll("#" + initial_annotation_id)
              .attr("opacity", 1)
              // .style("visibility", "visible");

          },
          // animate flubber svg
          animateFlubber(step_id, step_direction) {
            const self = this;
            // The { maxSegmentLength: X } parameter controls the smoothness of the animation 
            // - currently using default values from Aaron's example. From the documentation: 
            // // // "maxSegmentLength: the lower this number is, the smoother the resulting animation 
            // // // will be, at the expense of performance. Represents a number in pixels (if no 
            // // // transforms are involved). Set it to false or Infinity for no smoothing. (default: 10)"

            // If the step has an id (in this case all the ids are in the flubber id array)
            // if were other ids, would have to add check that id is in flubber_id_order array
            if (step_id) {
              let animationLength = 2400;

              console.log('current flubber id')
              console.log(self.current_flubber_id)

              // identify which flubber id to transition to
              // get id of current step w/i flubber_id_order array
              let next_id_index = self.flubber_id_order.indexOf(step_id)
              let previous_id;
              if (step_direction == "down") {
                // if the step direction is down, and
                // if the index of the current step is 0, 
                // OR the step_id matches the previous step id (as stored at the end of this function)
                // set the previous_id to be the same as the step_id
                // otherwise, set the previous_id to be the preceding item in the flubber_id_order array
                // // // NOTE: Wil leave as is for now, but now that I am storing the 'current id' at the end of this function, 
                // // // we could potentially just use that to define the previous step, unless it is null (beginning)?
                previous_id = (next_id_index == 0 || step_id == self.current_flubber_id) ? step_id : self.flubber_id_order[next_id_index - 1]
              } else {
                // if the step direction is up, and
                // if the current step is the final element in the flubber_id_order array, 
                // OR the step_id matches the previous step id (as stored at the end of this function)
                // set the previous_id to the step_id
                // otherwise, set the previous_id to be the subsequent item in the flubber_id_order array
                // // // NOTE: Will leave as is for now, but now that I am storing the 'current id' at the end of this function, 
                // // // we could potentially just use that to define the previous step?
                previous_id = (next_id_index == self.flubber_id_order.length-1 || step_id == self.current_flubber_id) ? step_id : self.flubber_id_order[next_id_index + 1]  
              }

              // loop through the paths in the dictionary for the current step id
              let path_num;
              for (path_num in self.flubber_dict) {
                // define path end using the CURRENT STEP ID
                let path_end = self.flubber_dict[path_num][step_id]
                // define path end using the PREVIOUS STEP ID (as defined above)
                let path_start = self.flubber_dict[path_num][previous_id]

                // transition between the two
                // select path in the group element for that path number
                self.d3.select("#" + path_num + ' path')
                  .style("display", "block")
                  .datum({ path_start, path_end })
                  .transition()
                  .duration(animationLength)
                  .attrTween("d", function(d){
                    return flubber.interpolate(d.path_start, d.path_end, { maxSegmentLength: 2 })
                  })
              }

              // select associated annotations
              let previous_annotation_id = previous_id + "_annotations"
              console.log(previous_annotation_id)
              let next_annotation_id = step_id + "_annotations"
              console.log(next_annotation_id)

              // set length of annotation transition
              let transition_duration = animationLength/2

              if (next_annotation_id != previous_annotation_id) {
                // display visual associated with initial model id
                self.d3.selectAll("#" + previous_annotation_id)
                  .transition()
                  .duration(animationLength)
                  .style("opacity", "0");

                // display visual associated with initial model id
                self.d3.selectAll("#" + next_annotation_id)
                  .transition()
                  .duration(animationLength)
                  .style("opacity", "1");
              }

              // store current id
              self.current_flubber_id = step_id

            } else {
              console.log("step has no id")
            }
          },
          // draw beeswarm/scatterplot
          setChart(data, model) {
            const self = this;
            this.height = 1000;
            this.width = 1000;
            this.margin = 50;

          // append svg
          // canvas is 1000 by 1000 and set to scale with container
            this.bees = this.d3.select("#bees-container").append("svg")
              .attr("viewBox", [0, 0, this.width, this.height].join(' '))
              .attr("class", "bees_dotPlot");

            //add mid line for horizontal clustering
            this.bees.append("line", 'svg')
              .classed("main_line", true)
              .attr("x1", this.margin)
              .attr("y1", this.height/2)
              .attr("x2", this.width-this.margin)
              .attr("y2", this.height/2)
              .attr("stroke-width", 4)
              .attr("stroke", "#A3A0A6");

          //use color scale for experiment
            let experiments = Array.from(new Set(data.map((d) => d.experiment)));
            let color = this.d3.scaleOrdinal().domain(experiments).range(this.exp_color);
            var scale_keys = ["1%", "100%"];

          // come back to this
          // this draw legend, annotations to view, thigns to emphasize as scroll progresses

          // add color legend - different svg that is stacked on top of the beeswarm
            this.legend = this.d3.select("#bees_legend")
            //draw an arrow to RMSES
            var arrows = this.legend.append("g").classed("arrow", true)

          //rmse arrow - should jsut add these as svg?
            arrows
              .append('path')
              .attr('d', "M36.9.4a77 77 0 00-19.1 30 113.5 113.5 0 00-5 34 132.7 132.7 0 00.9 19c.2 1.9 3.2 2 3 0a151.3 151.3 0 01-.1-32.7A78.5 78.5 0 0126.8 18 76 76 0 0139 2.5C40.4 1 38.3-1 37 .4z")
              .attr("fill","white")
              .attr("transform", "rotate(140, 500, 500) translate(600, 400)")
              
            arrows.append('path')
              .attr('d', "M.4 66.6a100.7 100.7 0 0113.5 19.2 1.5 1.5 0 002.3.4A169 169 0 0133.6 68c1.4-1.3-.7-3.4-2.2-2.1a169 169 0 00-17.3 18l2.4.3a103.5 103.5 0 00-14-19.8c-1.3-1.4-3.4.7-2.1 2.1z")
              .attr("fill","white")
              .attr("transform", "rotate(140, 500, 500) translate(600, 400)")

            arrows.append('text').classed('text-annotate', true)
              .text("RMSEs")
              .attr("transform", "translate(400, 700)")
              .style("fill", "white")
              .attr("font-size", "32px")

            //create color legend dots
            this.legend.selectAll("mydots")
              .data(scale_keys)
              .enter()
              .append("circle").classed("legend", true)
                .attr("cx", function(d,i){return 250 + i*250})
                .attr("cy", function(d, i){ return 800 })
                .attr("r", 8)
                .style("fill", function(d){return color(d)});

          //legend labels
          this.legend.selectAll("mylabels")
            .data(scale_keys)
            .enter()
            .append("text").classed("legend", true)
              .attr("x", function(d,i){return 280 + i*250})
              .attr("y", function(d,i){ return 800})
              .style("fill",  function(d){ return color(d)})
              .text(function(d){ return d})
              .attr("text-anchor", "left")
              .attr("font-size", "50px")
              .style("alignment-baseline", "middle");

          //scale x axis
          this.xScale = this.d3.scaleLinear()
            .range([this.margin, this.width-this.margin])
            .domain([0,10]);

          //draw bees
          //use force to push each dot to x position
          this.bees.selectAll("circle")
            .data(data)
            .enter().append("circle").classed('dot', true)
            .attr("r", this.radius)
            .attr("fill", (d) => color(d.experiment))
            .attr('cx', function(d){return self.xScale(d[model]);})

          //apply force to push dots towards central position on yaxis

          self.force_sim  // start force simulation from array of nodes
            .force('x', this.d3.forceX(function(d){
                return self.xScale(d[model])
              }).strength(.95)
            )
            .force('y', this.d3.forceY(this.height/2).strength(0.15)) //strength.1 keeping on horiz line
            //collide helps with jitteriness, keep iterations between 5-10, stength close to 1
            .force('collide', this.d3.forceCollide(this.paddedRadius).strength(1).iterations(4))
            .alphaDecay(0.001)
            .alpha(0.2)
            .on('tick', self.tick) // listen for tick events

            //decay is used to smoothly kill the simulation after a defined time
            var init_decay;
            init_decay = setTimeout(function(){
              console.log('init alpha decay');
              self.force_sim
                .alphaDecay(0.1);
            }, 3000);


          },
          addPts(selection) {
            const self = this;
            // this is where I am trying to write a function that adds points to the beeswarm chart
            // the idea is to have an intial chart showing RMSEs for 100% of training data
            // then on scoll, the number of points are doubled to show scores with 1% of training data
            // to do this, I have 2 possible datasets being read in to use - rmse_monthly which is in long form with a column for experiment and separate data columns with model scores
            // rmse_monthly_cast is wide format of the same data but each experiment x model has a column

            // the approach:
            // use rmse_monthly_cast to draw the initial chart using the 'ANN_d100' column
            // then on scroll, use d3 join(enter, exit, update) to transition the data to the 'ANN' column on rmse_monthly that has the same data as 'ANN_d100' PLUS the 'ANN_d001'
            // the join pattern should recognize which data points "enter" and which "update" (do they need to be ordered the same for that too work????)
            // no points with "exit" because we are going from fewer points to more points and not vice versa
/* 
            const circles = selection.selectAll("circle.dot")
              .data(this.rmse_monthly, function (d) { return d.ANN })
              .join(
                enter => enter.append("circle")
                  .attr("fill", "green")
                  .attr(d => d.ANN),
                update => update
                  .attr("fill", "gray")
                  .classed("new", true)
                ); */ // select all the svg circles in beeswarm

            var circles = self.d3.selectAll("circle")
              .data(this.rmse_monthly);

            const t = selection.transition()
              .duration(1000);

            circles.join(
              enter => enter
                .append("circle").classed("new", true)
                .attr("cx", function(d) { return self.xScale(d.ANN)})
                .call(enter => enter.transition(t)),
              update => update  
                .attr("cx", function(d) { return self.xScale(d.ANN)})
                .call(update => update.transition(t))

            )

          },
          //update bee x position on scroll
          // this is done by changing the forceX to a different x variable
          updateChart(data, data_step) {
            const self = this;

            //modify the force depending on step
            // list models in order of transitions, use step index to select
            var model_sel = this.model_list[data_step];

            // stop previous simulation
           //this.force_sim.stop()
          
          //move all points to center when model is introduced?
              if (data_step === 2){

              console.log(model_sel);

                  self.force_sim
                    .force('x', this.d3.forceX(500).strength(.4))
                    .force('y', this.d3.forceY(500).strength(.4))
                    .alpha(0.2)
                    .alphaDecay(0.05)
                  
              } else {

            console.log(model_sel);

            // move points along x axis according to model, when "ticked"
            // this should only happen if the model is different than the previous

            this.force_sim
              .force('x', this.d3.forceX(function(d){
                return self.xScale(d[model_sel])
              }).strength(1))
              .alpha(0.5)

              }
              // reheat the simulation to make thigns move
              // charge or "heat" is defined by alpha, 
              this.force_sim.restart()
                .on("tick", self.tick)

              this.init_decay = setTimeout(function(){
                console.log('re-init alpha decay');
                this.force_sim.alphaDecay(0.01);
              }, 500)
              clearTimeout(this.init_decay);

          },
          tick() {
          const self = this;
          
          this.d3.selectAll(".dot")
            .attr('cx', function(d){return d.x})
            .attr('cy', function(d){return d.y})


        },
        // scrollama event handler functions
        // add class on enter
        handleStepEnter(response) {
          const self = this;
          // response = { element, direction, index }
          console.log(response);

          // update step variable to match step in view
          this.step = response.index;

           // changes css for class
          response.element.classList.add("is-active");
          

          // trigger style changes
          //this.makePop(this.step);

          // trigger flubber
          this.animateFlubber(response.element.id, response.direction);

          //change chart data w/ transition 
          this.updateChart(response, response.index);
          this.scroller.resize();

          // add points to chart for both experiments
          if (response.index >= 3) {
            this.addPts(this.d3.select("svg.bees_dotPlot"));
          }

        },
        
        // add remove class on exit
        handleStepExit(response) {
          const self = this;
          // response = { element, direction, index }

          // changes css for class
          response.element.classList.remove("is-active");
        },
        // track scroll progress - not returning anything?
        handleStepProgress(response) {
          //console.log(response.progress);
        },
        fadeOut(element, time) {
          element
          .transition()
          .duration(time)
          .attr("opacity",0)
        },
         fadeIn(element, time) {
          element
          .transition()
          .duration(time)
          .attr("opacity",1)
        },
        //style changes by step
        makePop(action) {
          //make beeswarm and legend fade in 
          // all are initially drawn with opacity 0
          // thi sis not a good approach - the the page is refreshed in scroll, it resets to step 0
          // rather than the current step - need to address that throughout
          //how to pull current step on page load???
           var time = 1000;
          if (action >= 1 ) {
            // make beeswarm appear with legend

            this.fadeIn(this.d3.selectAll(".dot"), time);
            this.fadeIn(this.d3.select(".main_line"), time);
            this.fadeIn(this.d3.select(".arrow"), time);

          }
          // fade out if scrolls back
          if (action === 0) {
            //beeswarm fadeout
            this.fadeOut(this.d3.selectAll(".dot"), time);
            this.fadeOut(this.d3.selectAll(".legend"), time);
            this.fadeOut(this.d3.select(".main_line"), time);
            this.fadeOut(this.d3.select(".arrow"), time);

          }
          if (action >= 2 ) {

          this.fadeIn(this.d3.selectAll(".legend"), time);
           this.fadeOut(this.d3.select(".arrow"), time);

           this.fadeIn(this.d3.select("#legend-scale"), time);

          }
          if (action <= 1) {
            //disappearing elements
            this.fadeOut(this.d3.selectAll(".legend"), time/2);
            this.fadeOut(this.d3.selectAll("#legend-scale"), time/2);
          }

        }
    }
  }
</script>
<style scoped lang="scss">

//style steps
article {
  position: relative;
  margin: 0 auto;
  width: 100%;
//this locks in the scroll to center page like a magnet if working
  -webkit-overflow-scrolling: touch;
  overflow-y: scroll;
  scroll-snap-type: y proximity;
}
.step-container {
  width:100vw;
  scroll-snap-align: top; //not working?
  
}
.step {
  position: relative;
  width: 90%;
  margin: 2rem auto 4rem auto;
  z-index: 1;
  height: 50vh;
  border: 1px;

  p {
  text-align: left;
  padding: 1rem;
  font-size: 1.5rem;
  }
}
.step:last-child {
  margin-bottom: 600px;
}

//start at beginning
//grid layout
#modeling {
  width: 100vw;
}
// set up structure for sticky elements
// beeswarm and flubber contained in sticky figure
figure.sticky {
  display: grid;
  grid-template-rows: 5% 1fr 10% 1fr 5%;
  grid-template-columns: 2% auto 2%;
  row-gap:20px;

  position: -webkit-sticky;
  position: sticky;
  top: 0;
  height: 100vh;
  width: 100vw;

  #flubber-container {
    grid-column: 2 / 2;
    grid-row: 2 / 2;
  }
  #flubber {
    display: block;
    margin: auto;
    width: auto;
  }
  #error-container {
    grid-column: 2 / 2;
    grid-row: 4 / 4;
  }
  #bees-container {
    grid-column: 2 / 2;
    grid-row: 4 / 4;
  }
  #bees_dotPlot {
    width: 100%;
    height: 100%;

  }
  #legend-container {
    grid-column: 2 / 2;
    grid-row: 4 / 4;

  }
}

.text-annotate {
  fill:white;
  font-size: 32px;
  font-family: NotoSans-Medium, Noto Sans;
  font-weight: 300;
}
#flubber {
  opacity: 1;
  position: relative;
  text-align: center;
}
.river{
  stroke: #6399ba;
  fill: #6399ba;
  stroke-width: 1px;
}
.other{
  fill: #EDA550;
  stroke: #EDA550;
  stroke-width: 1.5px;
  font-family: SegoeUI-Semibold, Segoe UI;
  font-weight: 300;
  font-size: 10px;
}
.other.label {
  fill: #EDA550;
  stroke-width: 0px;
  font-family: SegoeUI-Semibold, Segoe UI;
  font-weight: 400;
  font-size: 10px;
}
.f_main {
  font-size: 14px;
  fill: #f0efef;
}
.f_sec {
  font-size: 10px;
  fill: #f0efef;
}
.f_minor {
  font-size: 14px;
  fill: #686868;
}
.f_main.light, .f_minor {
  font-family: SegoeUI-Semilight, Segoe UI;
  font-weight: 300;
  letter-spacing: 0em;
}
.f_main.bold {
  font-family: SegoeUI-Semibold, Segoe UI;
  font-weight: 600;
}
.f_sec.reg {
  font-family: SegoeUI-Semilight, Segoe UI;
  font-weight: 400;
  letter-spacing: 0em;
}
.f_arrow {
  fill: None;
  stroke: #878787;
  stroke-miterlimit: 10;
  stroke-dasharray: 1 2;
  stroke-width: 0.8px;
}
.f_arrowhead {
  fill: #878787;
}


// step-triggered transitions
// can trigger attribute changes with .is-active
.step.is-active {

}

// could add changes by step here
.step.is-active[data-step="1"] {
}
.step.is-active[data-step="2"] {
}
.step.is-active[data-step="3"] {
}
.step.is-active[data-step="4"] {
}
.step.is-active[data-step="7"] {
}

</style>