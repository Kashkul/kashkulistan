/* eslint no-console: 0 */

//This file is the entry point for the front-end Vue app. The rest of the frontend app code is stored in app/javascript/kashkulistan_client. 

import Vue from 'vue/dist/vue.esm'
import VueRouter from 'vue-router';
import App from '../kashkulistan_client/app.vue'
import router from '../kashkulistan_client/router/index.js'
import VueScrollReveal from 'vue-scroll-reveal'
 
Vue.use(VueRouter)
Vue.use(VueScrollReveal)

import 'font-awesome/css/font-awesome.css'

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
