<template>
	<section class="hero is-fullheight is-black is-bold">
		<div class="hero-body columns">
			<div class="column">
				<kashkul-logo v-if="pageLoaded" @animationOver="startText"></kashkul-logo>
			</div>
			<div class="column">
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
						<h2 v-if="kashkulTitle" class="title is-2" id="declaration">
							This is our Kashkul.
						</h2>
					</transition>
				</section>
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
	  		setTimeout(() => this.kashkulTitle = true, 300)
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

	.text-entry-enter-active
		transition: all 10s ease

	.text-entry-enter
		opacity: 0

	#declaration
		margin-top: 10%

</style>

<!-- All members of the collaborative hope that this is our work, in the digital world: to create, curate, and preserve culture in the northern regions of Iraq. -->