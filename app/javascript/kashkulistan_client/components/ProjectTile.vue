<template>
	<div class="tile is-parent">
		<article class="tile is-child box">
			<p class="title">{{tileData.name}}</p>
			<br>
			<p class="subtitle">{{tileData.description}}</p>
			<br>
			<figure class="image is-4by3">
				<img src="https://bulma.io/images/placeholders/640x480.png">
			</figure>
		</article>
	</div>			
</template>

<script>
	export default {
	  name: 'ProjectTile',
	  props: ['tileData'],
	  data () {
	    return {

	    }
	  }
	}
</script>

<style lang="sass" scoped>
	@import '../styles/app.sass'

</style>