import Vue from 'vue';
import Vuex from 'vuex';

Vue.use(Vuex);

export const store = new Vuex.Store({
    state: {
        windowWidth: 0,
        windowHeight: 0,
    },
    mutations: {
        recordWindowWidth (state, payload) {
            state.windowWidth = payload
        },
        recordWindowHeight (state, payload) {
            state.windowHeight = payload
        }
    }
});
