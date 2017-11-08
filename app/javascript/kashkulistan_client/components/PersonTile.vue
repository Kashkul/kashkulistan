<template>
	<div class="tile is-parent">
		<article class="tile is-child notification is-light box">
			<div class="content">
				<p class="title">{{tileData.name}}</p>
				<p class="subtitle">{{tileData.role}}</p>
				<div class="social-media-icons">
					<span class="icon has-text-info">
					  <i class="fa fa-twitter"></i>
					</span>
					<span class="icon has-text-info">
					  <i class="fa fa-facebook"></i>
					</span>					
					<span class="icon has-text-info">
					  <i class="fa fa-instagram"></i>
					</span>
				</div>
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

	.social-media-icons
		margin-bottom: 20px

</style>