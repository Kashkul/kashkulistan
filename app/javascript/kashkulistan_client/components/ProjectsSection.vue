<template>
	<section class="hero is-white">
		<div class="hero-body container has-text-centered">
			<div class="tile is-ancestor">
				<div class="columns is-desktop">
					<div class="column">
						<project-tile v-for="projectData in projectsData[0]" :tileData="projectData"></project-tile>
					</div>						
					<div class="column">
						<project-tile v-for="projectData in projectsData[1]" :tileData="projectData"></project-tile>
					</div>
				</div>
			</div>
		</div>
	</section>
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