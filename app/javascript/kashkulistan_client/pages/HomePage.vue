<template>
	<div>
		<parallax>
			<splash-screen></splash-screen>
		</parallax>
<!-- 		<div class="hero is-small is-white">
			<div class="hero-body container has-text-centered">
				<h1 class="title is-1">Kashkul Projects</h1>
			</div>
		</div> -->
		<projects-page></projects-page>
		<instagram-carousel></instagram-carousel>
	</div>
</template>

<script>
	import Parallax from 'vue-parallaxy'
	import SplashScreen from '../components/SplashScreen.vue'
	import AboutSection from '../components/AboutSection.vue'
	import InstagramCarousel from '../components/InstagramCarousel.vue'
	import ProjectsPage from '../pages/ProjectsPage.vue'

	export default {
	  name: 'HomePage',
	  components: {Parallax, SplashScreen, AboutSection, InstagramCarousel, ProjectsPage},
	  data () {
	    return {

	    }
	  }
	}
</script>

<style lang="sass" scoped>
	@import '../styles/app.sass'

</style>
