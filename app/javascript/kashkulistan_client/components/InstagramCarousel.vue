<template>
  <div class="carousel-container">
  	<carousel>
  		<slide><img src="../images/instastatic/1.png"></slide>
  		<slide><img src="../images/instastatic/2.png"></slide>
  		<slide><img src="../images/instastatic/3.png"></slide>
  		<slide><img src="../images/instastatic/4.png"></slide>
  	</carousel>
  </div>
</template>

<script>
import axios from 'axios'
import {Carousel, Slide} from 'vue-carousel'
export default {

  name: 'InstagramCarousel',
  components: {Carousel, Slide},

  data () {
    return {
    	photos: []
    }
  }
}
</script>

<style lang="sass" scoped>
@import '~bulma'

.carousel-container
  padding: 8%
</style>