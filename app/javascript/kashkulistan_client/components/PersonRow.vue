<template>
	<section class="hero is-small">
		<div class="hero-body">
			<div class="tile is-ancestor">
				<person-tile v-for="personData in rowData" :tileData="personData"></person-tile>
		  </div>
		 </div>
  </section>        
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
	@import '../styles/app.sass'

</style>