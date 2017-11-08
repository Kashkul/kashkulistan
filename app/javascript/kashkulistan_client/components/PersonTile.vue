<template>
	<div class="tile is-parent">
		<article class="tile is-child notification is-light box">
			<div class="content">
				<p>{{tileData}}</p>
			</div>
		</article>
	</div>
</template>

<script>
	export default {
	  name: 'PersonTile',
	  props: ['tileData'],
	  data () {
	    return {

	    }
	  }
	}
</script>

<style lang="sass" scoped>
	@import '~bulma'

</style>