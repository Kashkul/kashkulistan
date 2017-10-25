import Vue from 'vue/dist/vue.esm'
import VueRouter from 'vue-router'
import Test from '../components/Test.vue'
import HomePage from '../pages/HomePage.vue'

Vue.use(VueRouter)

export default new VueRouter({
	routes: [
		{
			path: '/',
			name: "Home",
			component: HomePage
		},
		{
			path: '/testing',
			name: 'testroute',
			component: Test
		}
	]
})