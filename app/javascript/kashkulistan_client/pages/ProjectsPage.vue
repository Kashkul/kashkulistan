<template>
	<div>
		<section class="hero is-white">
			<div class="hero-body">
				<div class="container has-text-centered">
					<p class="title is-2">Kashkul Projects</p>
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

</style>