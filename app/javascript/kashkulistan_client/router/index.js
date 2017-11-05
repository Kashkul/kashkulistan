import Vue from 'vue/dist/vue.esm'
import VueRouter from 'vue-router'
import NavBar from '../components/NavBar.vue'
import HomePage from '../pages/HomePage.vue'
import PeoplePage from '../pages/PeoplePage.vue'

Vue.use(VueRouter)

export default new VueRouter({
	routes: [
		{
			path: '/',
			name: "home",
			component: HomePage
		},
		{
			path: '/people',
			name: 'people',
			component: PeoplePage
		}
	]
})