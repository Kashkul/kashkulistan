<template>
	<div>
    <section class="hero is-large">
      <div class="hero-body container has-text-centered">
        <p class="title">Projects</p>
        <p class="subtitle">These are projects. Something neat will be written here.</p> 
      </div>
    </section>
		<div class="carousel-container">
		  	<carousel  :autoplay="false" :perPage="2" :navigationEnabled="true">
		  		<slide class="slide"><project-tile></project-tile></slide>
		  		<slide class="slide"><project-tile></project-tile></slide>
		  		<slide class="slide"><project-tile></project-tile></slide>
		  		<slide class="slide"><project-tile></project-tile></slide>
		  		<slide class="slide"><project-tile></project-tile></slide>
		  	</carousel>
  	</div>
  </div>
</template>

<script>
	import ProjectTile from '../components/ProjectTile.vue'
	import {Carousel, Slide} from 'vue-carousel'

	export default {
	  name: 'ProjectsPage',
	  components: {ProjectTile, Carousel, Slide},
	  data () {
	    return {

	    }
	  }
	}
</script>

<style lang="sass" scoped>
	@import '~bulma'

</style>