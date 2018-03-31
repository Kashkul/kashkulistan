<template>
	<section class="hero is-fullheight is-black is-bold">
		<div class="hero-body">
			<div class="svg-container">
				<kashkul-logo v-if="pageLoaded" @animationOver="startText"></kashkul-logo>
			</div>
			<div id="title-text">
				<section v-scroll-reveal.reset>
					<transition name="text-entry">
						<h1 v-if="kashkulTitle" class="title is-1">
							Kashkul:
						</h1>
					</transition>
					<transition name="text-entry">
						<h2 v-if="kashkulTitle" class="title is-3">
							1: A collection of things that fit together, despite not being designed as a set.
						</h2>	
					</transition>
					<transition name="text-entry">					
						<h2 v-if="kashkulTitle" class="title is-3">
							2: a research, translation, and preservation collaborative based in Sulaimani, Iraq. Iraqi, Kurdish, and American scholars come together to pursue projects of their own design. 
						</h2>
					</transition>
					<transition name="text-entry">
						<h2 v-if="kashkulTitle" class="title is-3" id="declaration">
							This is our Kashkul.
						</h2>
					</transition>
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
	    	pageLoaded: false,
	    	logoLoaded: false,
	    	kashkulTitle: false
	    }
	  },
	  methods: {
	  	startText: function() {
	  		this.logoLoaded = true
	  		setTimeout(() => this.kashkulTitle = true, 1000)
	  	}
	  },
	  mounted() {
	  	setTimeout(() => {
	  		this.pageLoaded = true
	  	}, 1)
	  }
	}
</script>

<style lang="sass" scoped>
	@import '../styles/app.sass'

	.svg-container
		height: 60%
		width: 45%
		margin: auto

	.hero-footer
		margin-bottom: 50px

	#title-text
		position: absolute
		text-align: center
		padding-right: 10%
		padding-left: 10%

	.text-entry-enter-active
		transition: all 5s ease

	.text-entry-enter
		opacity: 0


	#declaration
		margin-top: 10%



</style>

<!-- All members of the collaborative hope that this is our work, in the digital world: to create, curate, and preserve culture in the northern regions of Iraq. -->