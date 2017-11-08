<template>
	<div class="tile is-parent">
		<article class="tile is-child notification is-light box">
			<div class="content">
				<p class="title">{{tileData.name}}</p>
				<p class="subtitle">{{tileData.role}}</p>
				<p class="">{{tileData.about}}</p>
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