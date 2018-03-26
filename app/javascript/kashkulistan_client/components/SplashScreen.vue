<template>
	<section class="hero is-fullheight is-black is-bold">
		<div class="hero-body">
			<div class="svg-container">
				<kashkul-logo></kashkul-logo>
			</div>
			<div class="container">
				<section v-scroll-reveal.reset>
						<h1 class="title is-2">
							Kashkul is a research, translation, and preservation collaborative based in Sulaimani, Iraq. Iraqi, Kurdish, and American scholars come together to pursue projects of their own design. All members of the collaborative hope that this is our work, in the digital world: to create, curate, and preserve culture in the northern regions of Iraq.
						</h1>
						<h2 class="title is-3">
							
						</h2>
				</section>
			</div>
		</div>
		<div class="hero-footer">
			<div class="container has-text-centered">
				<h1 class="title is-3">
					This is our Kashkul.
				</h1>
			</div>
		</div>
	</section>
</template>

<script>
	import KashkulLogo from './KashkulLogo.vue'

	export default {
	  name: 'SplashScreen',
	  components: { KashkulLogo },
	  data () {
	    return {

	    }
	  }
	}
</script>

<style lang="sass" scoped>
	@import '../styles/app.sass'

	.svg-container
		height: 50%
		width: 50%
		margin: auto
		z-index: 0

	.hero-footer
		margin-bottom: 50px

</style>