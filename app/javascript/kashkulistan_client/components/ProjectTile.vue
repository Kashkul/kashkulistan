<template>
	<section>
	<div class="tile is-ancestor">
		<div class="tile is-parent">
			<article class="tile is-child box notification is-info">
				<p>Stuff in here....</p>
			</article>			
		</div>		<div class="tile is-parent">
			<article class="tile is-child box notification is-info">
				<p>Stuff in here....</p>
			</article>			
		</div>		<div class="tile is-parent">
			<article class="tile is-child box notification is-info">
				<p>Stuff in here....</p>
			</article>			
		</div>
	</div>
	</section>
</template>

<script>
	export default {
	  name: 'ProjectTile',
	  data () {
	    return {

	    }
	  }
	}
</script>

<style lang="sass" scoped>
	@import '~bulma'

</style>