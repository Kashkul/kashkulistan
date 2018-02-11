<template>
	<div>
		<section class="hero is-large is-white">
			<div class="hero-body">
				<div class="container has-text-centered" v-scroll-reveal>
					<p class="title">Kashkul Projects:</p>
					<p class="subtitle">Click tiles for more information</p>
				</div>
			</div>
		</section>
		<section class="hero is-white">
			<div class="hero-body container has-text-centered">
				<div class="tile is-ancestor">
					<project-column v-for="group in projectsData" :colData="group"></project-column> 
				</div>
			</div>
		</section>
	</div>
</template>

<script>
	import axios from 'axios'
	import ProjectColumn from './ProjectColumn.vue'

	export default {
	  name: 'ProjectsSection',
	  components: {ProjectColumn},
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