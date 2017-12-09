<template>
	<div>
		<parallax :fixed="true">
			<splash-screen></splash-screen>
		</parallax>
		<section class="hero is-large is-white">
			<div class="hero-body">
				<div class="container has-text-centered">
					<h1 class="title">
						<strong>This is our kashkul.</strong>
					</h1>
				</div>
			</div>
		</section>
		<section class="hero is-small">
			<instagram-carousel></instagram-carousel>
		</section>
		<about-section></about-section>
		<projects-section></projects-section>
		<section class="hero is-white is-fullheight">
			<div class="hero-body">
				
			</div>
		</section>
	</div>
</template>

<script>
	import Parallax from 'vue-parallaxy'
	import SplashScreen from '../components/SplashScreen.vue'
	import AboutSection from '../components/AboutSection.vue'
	import InstagramCarousel from '../components/InstagramCarousel.vue'
	import ProjectsSection from '../components/ProjectsSection.vue'

	export default {
	  name: 'HomePage',
	  components: {Parallax, SplashScreen, AboutSection, InstagramCarousel, ProjectsSection},
	  data () {
	    return {

	    }
	  }
	}
</script>

<style lang="sass" scoped>
	@import '~bulma'

</style>