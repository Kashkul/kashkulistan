<template>
	<carousel>
		<slide>Stuff</slide>
		<slide>Stuff</slide>
		<slide>Stuff</slide>
		<slide>Stuff</slide>
	</carousel>
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

<style lang="css" scoped>
</style>