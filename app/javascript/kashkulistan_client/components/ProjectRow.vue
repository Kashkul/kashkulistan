<template>
	<section class="hero is-small">
		<div class="hero-body">
			<div class="tile is-ancestor">
				<project-tile v-for="projectData in rowData" :tileData="projectData"></project-tile>
		  </div>
		 </div>
  </section>        
</template>

<script>
	import ProjectTile from './ProjectTile.vue'

	export default {
	  name: 'ProjectRow',
	  props: ['rowData'],
	  components: {ProjectTile},
	  data () {
	    return {

	    }
	  }
	}
</script>

<style lang="sass" scoped>
	@import '../styles/app.sass'

</style>