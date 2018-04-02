<template>
	<div>
		<parallax :fixed="true">
			<splash-screen></splash-screen>
		</parallax>
		<projects-section></projects-section>
		<instagram-carousel></instagram-carousel>
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
	@import '../styles/app.sass'

</style>


<!-- Perhaps to be recycled:
		<section class="hero is-large is-white">
			<div class="hero-body">
				<div class="container has-text-centered">
					<h1 class="title">
						<strong>This is our kashkul.</strong>
					</h1>
				</div>
			</div>
		</section> 


		<about-section></about-section>
		<section class="hero is-large">
			<div class="hero-body">
			</div>
		</section>
		-->