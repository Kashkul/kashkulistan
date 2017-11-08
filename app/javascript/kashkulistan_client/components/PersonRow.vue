<template>
	<div class="tile is-ancestor">
		<person-tile></person-tile>
  </div>        
</template>

<script>
	import PersonTile from './PersonTile.vue'

	export default {
	  name: 'PersonRow',
	  props: ['rowData'],
	  components: {PersonTile},
	  data () {
	    return {

	    }
	  }
	}
</script>

<style lang="sass" scoped>
	@import '~bulma'
	
</style>