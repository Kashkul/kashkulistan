<template>
	<div class="tile is-parent">
		<article class="tile is-child box"  id="testthis" v-scroll-reveal="{ duration: '600' }">
			<p class="title">{{tileData.name}}</p>
			<br>
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

</style>
  