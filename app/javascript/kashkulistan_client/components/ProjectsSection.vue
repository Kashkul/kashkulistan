<template>
	<div>
		<section class="hero is-medium is-white">
			<div class="hero-body">
				<div class="container has-text-centered" v-scroll-reveal.reset>
					<p class="title">Testing projects section</p>
				</div>
			</div>
		</section>
		<section class="hero is-white">
			<div class="hero-body">
				<div class="tile is-ancestor">
						<project-tile></project-tile>
						<project-tile></project-tile>
						<project-tile></project-tile>
						<project-tile></project-tile>
						<project-tile></project-tile>
				</div>
			</div>
		</section>
	</div>
</template>

<script>

import ProjectTile from './ProjectTile.vue'
export default {
  name: 'ProjectsSection',
  components: {ProjectTile},
  data () {
    return {

    }
  }
}
</script>

<style lang="sass" scoped>
	@import '~bulma'

</style>