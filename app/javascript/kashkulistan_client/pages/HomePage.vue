<template>
	<div>
		<parallax :fixed="true">
			<splash-screen></splash-screen>
		</parallax>
		<section class="hero is-large is-white">
			<div class="hero-body">
				<div class="container has-text-centered">
					<h1 class="subtitle is-3">
						<strong>This is our kashkul.</strong>
					</h1>
				</div>
			</div>
		</section>
						<instagram-carousel></instagram-carousel>
		<about-section></about-section>
	</div>
</template>

<script>
	import Parallax from 'vue-parallaxy'
	import NavBar from '../components/NavBar.vue'
	import SplashScreen from '../components/SplashScreen.vue'
	import AboutSection from '../components/AboutSection.vue'
	import InstagramCarousel from '../components/InstagramCarousel.vue'

	export default {
	  name: 'HomePage',
	  components: {Parallax, NavBar, SplashScreen, AboutSection, InstagramCarousel},
	  data () {
	    return {

	    }
	  }
	}
</script>

<style lang="sass" scoped>
	@import '~bulma'

</style>