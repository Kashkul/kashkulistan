<template>
	<div>
    <section class="hero is-large">
      <div class="hero-body container has-text-centered">
        <p class="title">Projects</p>
        <p class="subtitle">These are projects. Something neat will be written here.</p> 
      </div>
    </section>
    <project-tile></project-tile>
    <project-tile></project-tile>
    <project-tile></project-tile>
    <project-tile></project-tile>
    <project-tile></project-tile>
  </div>
</template>

<script>
	import ProjectTile from '../components/ProjectTile.vue'

	export default {
	  name: 'ProjectsPage',
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