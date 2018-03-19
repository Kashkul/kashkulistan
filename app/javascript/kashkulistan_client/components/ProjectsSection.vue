<template>
	<div>
		<section class="hero is-medium is-black">
			<div class="hero-body">
				<div class="container has-text-centered" v-scroll-reveal>
					<p class="title">Kashkul Projects:</p>
				</div>
			</div>
		</section>
		<section class="hero is-black">
			<div class="hero-body container has-text-centered">
				<div class="tile is-ancestor">
					<div class="columns">
						<div class="column" v-for="group in projectsData">
							<project-tile v-for="projectData in group" :tileData="projectData"></project-tile>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
</template>

<script>
	import axios from 'axios'
	import ProjectTile from './ProjectTile.vue'

	export default {
	  name: 'ProjectsSection',
	  components: {ProjectTile},
	  data () {
	    return {
	    	projectsData: []
	    }
	  },
	  created () {
	  	axios.get(`api/v1/projects`)
	  	.then(response => {
	  		this.projectsData = response.data
	  	})
	  	.catch(e => {
	  		this.errors.push(e)
	  	})
	  }
	}
</script>

<style lang="sass" scoped>
	@import '../styles/app.sass'

</style>