import "core-js/stable";
import "regenerator-runtime/runtime";
import Vue from 'vue';
import VueAnalytics from 'vue-analytics';
import router from "./router";
import { store } from './store/store'
import App from './App.vue';
import uswds from 'uswds';
import browserDetect from 'vue-browser-detect-plugin';

import { library } from '@fortawesome/fontawesome-svg-core';
import { FontAwesomeIcon } from '@fortawesome/vue-fontawesome';


// social icons
import { faTwitterSquare } from '@fortawesome/free-brands-svg-icons'
import { faFacebookSquare } from '@fortawesome/free-brands-svg-icons'
import { faGithub } from '@fortawesome/free-brands-svg-icons'
import { faFlickr } from '@fortawesome/free-brands-svg-icons'
import { faYoutubeSquare } from '@fortawesome/free-brands-svg-icons'
import { faInstagram } from "@fortawesome/free-brands-svg-icons";

Vue.component('font-awesome-icon', FontAwesomeIcon);


// social icons
library.add(faTwitterSquare);
library.add(faFacebookSquare);
library.add(faGithub);
library.add(faFlickr);
library.add(faYoutubeSquare);
library.add(faInstagram);

Vue.config.productionTip = false;
Vue.use(uswds);
Vue.use(browserDetect);


// create a unique ID that can be used to identify user sessions
// Note: this section is borrowed code with Public Domain/MIT licensing
const sessionID = function() {
  var d = new Date().getTime();
  if (typeof performance !== 'undefined' && typeof performance.now === 'function'){
    d += performance.now(); //use high-precision timer if available
  }
  return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function (c) {
    var r = (d + Math.random() * 16) % 16 | 0;
    d = Math.floor(d / 16);
    return (c === 'x' ? r : (r & 0x3 | 0x8)).toString(16);
  });
};

// Next two sections are for Google Analytics
// First section --  code to get the ClientId from the Google Analytics Cookie
const clientID = function() {
  let returnValue;
  try {
    returnValue = window.ga.getAll()[0].get('clientId');
  }
  catch(error) {
    console.error('failed to get the ClientId from Google Analytics Cookie, format of Cookie may have changed ');
    returnValue = null;
  }
  return returnValue;
};
// Second section -- code to run Vue Analytics plugin
// Note: to add additional custom dimensions, you must first register the new dimension on the analytics dash board. Then
// you can set the dimension's value using the plugin.
Vue.use(VueAnalytics, {
  id: 'need-to-add-your-own-id-here',
  debug: {
    enabled: false, // default value is 'false'; for more complete output set to true. Just remember to turn it back to 'false' before putting into production.
    trace: false, // default value is 'false'; for more complete output set to true. Just remember to turn it back to 'false' before putting into production.
    sendHitTask: true // default value is true. Just leave it as 'true' all the time.
  },
  set: [
    { field: 'anonymizeIp', value: true },
    { field: 'dimension1', value: sessionID() }, // this 'dimension' is must be added to you google account before it will work
    { field: 'dimension2', value: Date.now() }   // this 'dimension' is must be added to you google account before it will work
  ],
  commands: {
    trackName(eventName, action, label) {
      this.$ga.set({ dimension2: Date.now() }); // this is assuming the custom dimension you added to your google account is a time stamp
      this.$ga.set({ dimension3: clientID() }); // is is assuming the custom dimension you added to your google account is an id
      this.$ga.event(eventName, action, label);
    }
  },
  router
});


const app = new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app');


