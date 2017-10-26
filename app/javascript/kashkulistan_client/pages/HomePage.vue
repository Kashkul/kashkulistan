<template>
	<div>
		<nav-bar class="nav-is-fixed"> </nav-bar>
		<parallax :fixed="true">
			<section class="hero is-fullheight is-dark is-bold">
				<div class="hero-body">
					<div class="container has-text-centered">
						<h1 class="title is-1">
							Kashkul:
						</h1>
						<h2 class="title">
							1. First definition goes here, this will eventually animate to include the other definitions. Bla bla bla. Also more stuff.
						</h2>
					</div>
				</div>
			</section>
		</parallax>
		<section class="hero is-fullheight is-white">
			<p class="title">Home is working!</p>
		</section>
	</div>
</template>

<script>
import Parallax from 'vue-parallaxy'
import NavBar from '../components/NavBar.vue'

export default {
  name: 'HomePage',
  components: {Parallax, NavBar},
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