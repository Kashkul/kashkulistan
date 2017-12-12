<template>
	<section class="hero is-large is-white">
		<div class="hero-body">
			<div class="container has-text-centered" v-scroll-reveal.reset>
				<p class="title klala">"Possible content here. Maybe something that's not too long about Kashkul. Now I'm just typing some stuff to make this a little longer. Maybe it's a quote?"</p>
			</div>
		</div>
	</section>
</template>

<script>
	export default {
	  name: 'AboutSection',
	  data () {
	    return {

	    };
	  }
	};
</script>

<style lang="sass" scoped>
	@import '../styles/app.sass'

	.klala
		font-family: $family-primary
	
</style>