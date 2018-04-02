<template>
	<section class="splash-img">
		<div class="columns not-opaque">
			<div class="column logo-container">
				<kashkul-logo v-if="pageLoaded" @animationOver="startText"></kashkul-logo>
			</div>
			<div class="column title-text">
				<transition name="text-entry">
					<h1 v-if="kashkulTitle" class="title is-1 has-text-white">
						Kashkul
					</h1>
				</transition>
				<transition name="text-entry">
					<h2 v-if="kashkulTitle" class="title is-3 has-text-white">
						1. a Sufi's begging bowl.
					</h2>	
				</transition>
				<transition name="text-entry">					
					<h2 v-if="kashkulTitle" class="title is-3 has-text-white">
						2. a commonplace book.
					</h2>
				</transition>				
				<transition name="text-entry">					
					<h2 v-if="kashkulTitle" class="title is-3 has-text-white">
						3. a research and arts collaborative in Sulaimani where Iraqi, Kurdish, and American scholars come together to pursue projects of their own design—to study, create, and preserve culture in Iraq.
					</h2>
				</transition>
				<transition name="text-entry">
					<h2 v-if="kashkulTitle" class="title is-2 has-text-link" id="declaration">
						This is our Kashkul.
					</h2>
				</transition>
			</div>
		</div>
		<scroll-arrow v-if="arrows"></scroll-arrow>
	</section>
</template>

<script>
	import KashkulLogo from './KashkulLogo.vue'
	import ScrollArrow from './ScrollArrow.vue'

	export default {
	  name: 'SplashScreen',
	  components: { KashkulLogo, ScrollArrow },
	  data () {
	    return {
	    	pageLoaded: false,
	    	logoLoaded: false,
	    	kashkulTitle: false,
	    	arrows: false
	    }
	  },
	  methods: {
	  	startText: function() {
	  		this.logoLoaded = true
	  		setTimeout(() => this.kashkulTitle = true, 300)
	  		setTimeout(() => this.arrows = true, 5000)
	  	},
	  	stopArrowsOnScroll: function() {
	  		return this.arrows = false
	  	}
	  },
	  created() {
	  	document.addEventListener('scroll', this.stopArrowsOnScroll)
	  },
	  destroyed() {
	  	document.body.removeEventListener('scroll', this.stopArrowsOnScroll)
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
		transition: all 5s ease

	.text-entry-enter
		opacity: 0

	.title-text
		position: relative
		margin-top: auto
		margin-bottom: auto
		padding-right: 5%

	.logo-container
		padding-top: 20px

	#declaration
		margin-top: 10%

	.arrows
		display: block
		position:

	.splash-img
		background: linear-gradient(rgba(0, 0, 0, 0.4), rgba(0, 0, 0, 0.8))
		width: 100%
		height: 100%
		background-size: cover
	
</style>
