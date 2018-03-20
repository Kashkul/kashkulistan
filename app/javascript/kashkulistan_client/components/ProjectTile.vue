<template>
	<div class="tile is-parent">
		<article class="tile is-child box"  id="project-tile" v-scroll-reveal="{ duration: '600' }">
			<p class="title" id="project-heading">{{tileData.name}}</p>
			<p class="subtitle">{{tileData.description}}</p>
			<br>
			<figure class="image">
				<img :src="tileData.photo.url">
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

	#project-tile
		padding-bottom: 10%

	#project-heading
		padding-bottom: 3%

</style>
  