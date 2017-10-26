<template>
	<div>
		<nav-bar class="nav-is-fixed"> </nav-bar>
		<parallax :fixed="true">
			<splash-screen></splash-screen>
		</parallax>
		<about-section></about-section>
	</div>
</template>

<script>
import Parallax from 'vue-parallaxy'
import NavBar from '../components/NavBar.vue'
import SplashScreen from '../components/SplashScreen.vue'
import AboutSection from '../components/AboutSection.vue'

export default {
  name: 'HomePage',
  components: {Parallax, NavBar, SplashScreen, AboutSection},
  data () {
    return {

    }
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