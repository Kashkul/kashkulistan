<template>
	<div>
		<section class="hero is-large has-blue">
			<div class="hero-body">
				<div class="container has-text-centered">
					<p class="title is-1 has-text-white">Kashkul Projects</p>
				</div>
			</div>
		</section>
		<projects-section></projects-section>
	</div>
</template>

<script>
	import ProjectsSection from '../components/ProjectsSection.vue'

	export default {
	  name: 'ProjectsPage',
	  components: { ProjectsSection },
	  data () {
	    return {
	    }
	  }
	}
</script>

<style lang="sass" scoped>
	@import '../styles/app.sass'

	.has-blue
		background: linear-gradient(rgba(0, 0, 0, 0.65), rgba(0, 0, 0, 0.65)), url('../images/map.jpg')
		background-size: cover

</style>