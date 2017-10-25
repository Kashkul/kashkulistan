/* eslint no-console: 0 */

//This file is the entry point for the front-end Vue app. 

import Vue from 'vue/dist/vue.esm'
import VueRouter from 'vue-router';
import App from '../app.vue'
import router from '../router/index.js'

Vue.use(VueRouter)

document.addEventListener('DOMContentLoaded', () => {
  document.body.appendChild(document.createElement('app'))
  const app = new Vue({
  	el: 'app',
  	router: router,
  	template: '',
  	components: { App }
  })

  console.log(app)
})
