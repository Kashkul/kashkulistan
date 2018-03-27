<template>
	<section class="hero is-white">
			<div class="hero-body container has-text-centered">
				<div class="tile is-ancestor">
					<div class="columns">
						<div class="column" v-for="group in personColumns">
							<person-tile v-for="personData in group" :tileData="personData"></person-tile>
						</div>
				</div>
			</div>
		</div>
	</section>
</template>

<script>
	import PersonTile from './PersonTile.vue'

	export default {
	  name: 'PersonCategory',
	  components: { PersonTile },
	  props: ['categoryData'],
	  data () {
	    return {
	    }
	  },
	  computed: {
	  	personColumns: function() {
	  		let personColumns = []
	  		let firstCol = this.categoryData.splice(0, Math.ceil(this.categoryData.length/2))
	  		let secondCol = this.categoryData
	  		personColumns.push(firstCol, secondCol)
	  		return personColumns
	  	}
	  }
	  // created: function() {
	  // 	let array = this.categoryData
	  // 	let halfLength = Math.ceil(array.length/2)
	  // 	let firstColumn = array.splice(0, halfLength)
	  // 	let secondColumn = array
	  // 	this.personColumns.push(firstColumn, secondColumn)
	  // 	console.log()
	  // }
	}
</script>

<style lang="sass" scoped>
	@import '../styles/app.sass'

</style>