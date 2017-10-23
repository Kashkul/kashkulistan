import Vue from 'vue/dist/vue.esm'
import VueRouter from 'vue-router'
import Test from '../components/Test.vue'

Vue.use(VueRouter)

export default new VueRouter({
	routes: [
		{
			path: '/',
			name: "Landing",
			component: Test
		},
		{
			path: '/testing',
			name: 'testroute',
			component: Test
		}
	]
})