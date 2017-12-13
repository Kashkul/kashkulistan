<template>
	<div>
		<section class="hero is-large is-white">
			<div class="hero-body">
				<div class="container has-text-centered" v-scroll-reveal.reset>
					<p class="title">Kashkul Projects:</p>
					<p class="subtitle">Click tiles for more information</p>
				</div>
			</div>
		</section>
		<section class="hero is-white">
			<div class="hero-body container has-text-centered">
				<project-row v-for="group in projectsData" :rowData="group"></project-row> 
			</div>
		</section>
	</div>
</template>

<script>
	import axios from 'axios'
	import ProjectRow from './ProjectRow.vue'

	export default {
	  name: 'ProjectsSection',
	  components: {ProjectRow},
	  data () {
	    return {
	    	projectsData: []
	    }
	  },
	  created () {
	      axios.get(`api/v1/projects`)
	      .then(response => {
	        this.projectsData = response.data
	        console.log(this.projectsData)
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