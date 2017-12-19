<template>
	<div class="tile is-ancestor is-6 is-vertical">
			<div class="tile is-parent is-vertical">
				<project-tile v-for="projectData in rowData" :tileData="projectData"></project-tile>
		  </div>
  </div>        
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