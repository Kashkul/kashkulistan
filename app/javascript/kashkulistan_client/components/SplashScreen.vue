<template>
	<section class="hero is-fullheight is-black is-bold">
		<div class="hero-body">
			<div class="svg-container">
				<kashkul-logo></kashkul-logo>
			</div>
			<div id="title-text">
				<section v-scroll-reveal.reset>
						<h1 class="title is-1">
							Kashkul:
						</h1>
						<h2 class="title is-3">
							1: A collection of things that fit together, despite not being designed as a set.
						</h2>						
						<h2 class="title is-3">
							2: a research, translation, and preservation collaborative based in Sulaimani, Iraq. Iraqi, Kurdish, and American scholars come together to pursue projects of their own design. 
						</h2>
						<h2 class="title is-3" id="declaration">
							This is our Kashkul.
						</h2>
				</section>
			</div>
		</div>
		<div class="hero-footer">
			<div class="container has-text-centered">

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
		height: 40%
		width: 40%
		margin: auto

	.hero-footer
		margin-bottom: 50px

	#title-text
		position: absolute
		text-align: center
		padding-right: 10%
		padding-left: 10%

	#declaration
		margin-top: 10%


</style>

<!-- All members of the collaborative hope that this is our work, in the digital world: to create, curate, and preserve culture in the northern regions of Iraq. -->