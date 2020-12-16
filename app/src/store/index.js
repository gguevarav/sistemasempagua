import Vue from 'vue'
import Vuex from 'vuex'
import axios from 'axios'
import router from "@/router";

//axios.defaults.withCredentials = true;
axios.defaults.baseURL ="http://localhost:8000/api/v1"

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
  },
  mutations: {
  },
  actions: {
  },
  modules: {
  }
})
