<template>
	<div>
		<nav-bar class="nav-is-fixed"> </nav-bar>
		<parallax :fixed="true">
			<splash-screen></splash-screen>
		</parallax>
		<section class="hero is-medium is-white">
			<div class="hero-body">
				<div class="container has-text-centered">
					<h1 class="subtitle is-3">
						<strong>This is our kashkul.</strong>
						
						<carousel>
							<div id="instafeed"></div>
						</carousel>
					</h1>
				</div>
			</div>
		</section>
		<about-section></about-section>
	</div>
</template>

<script>
import Parallax from 'vue-parallaxy'
import NavBar from '../components/NavBar.vue'
import SplashScreen from '../components/SplashScreen.vue'
import AboutSection from '../components/AboutSection.vue'
import Instafeed from 'instafeed.js'
import {Carousel, Slide} from 'vue-carousel'

export default {
  name: 'HomePage',
  components: {Parallax, NavBar, SplashScreen, AboutSection, Carousel, Slide},
  data () {
    return {

    }
  },
  beforeCreate() {
  	 var feed = new Instafeed({
        get: 'user',
        userId: 953380486,
        clientId: process.env.INSTAGRAM_CLIENT_ID,
        accessToken: process.env.ROGER_INSTAGRAM_ACCESS_TOKEN,
        template: '<slide><a href="{{link}}"><img src="{{image}}" /></a></slide>'
    });
    console.log(feed._buildUrl)
  	 feed.run()
  }
}

</script>

<style lang="sass" scoped>
@import '~bulma'

.nav-is-fixed
  top: 0
  z-index: 100
  position: fixed
  width: 100%

</style>