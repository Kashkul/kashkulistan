<template>
	<div class="tile is-parent">
		<article class="tile is-child is-light box">
			<section v-scroll-reveal>
				<div class="content">
					<p class="title">{{tileData.name}}</p>
					<img :src="tileData.photo.url" alt="">
					<p class="subtitle">{{tileData.role}}</p>
					<p>{{tileData.about}}</p>
				</div>
			</section>
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
	@import '../styles/app.sass'

	.social-media-icons
		margin-bottom: 20px

</style>