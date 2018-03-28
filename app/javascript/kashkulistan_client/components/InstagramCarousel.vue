<template>
  <div class="carousel-container">
  	<carousel  :autoplay="true" :loop="true" :perPage="2">
      <slide class="slide"><img src="assets/instastatic/2.png"></slide>
      <slide class="slide"><img src="assets/instastatic/3.png"></slide>
      <slide class="slide"><img src="assets/instastatic/4.png"></slide>
      <slide class="slide"><img src="assets/instastatic/2.png"></slide>
      <slide class="slide"><img src="assets/instastatic/3.png"></slide>
      <slide class="slide"><img src="assets/instastatic/4.png"></slide>
      <slide class="slide"><img src="assets/instastatic/2.png"></slide>
      <slide class="slide"><img src="assets/instastatic/3.png"></slide>
      <slide class="slide"><img src="assets/instastatic/4.png"></slide>
  		<slide class="slide"><img src="assets/instastatic/2.png"></slide>
  		<slide class="slide"><img src="assets/instastatic/3.png"></slide>
  		<slide class="slide"><img src="assets/instastatic/4.png"></slide>
  	</carousel>
  </div>
</template>

<script>
  import jsonp from 'jsonp'
  import {Carousel, Slide} from 'vue-carousel'

  export default {
    name: 'InstagramCarousel',
    components: {Carousel, Slide},
    data () {
      return {
      	photos: []
      }
    },
    methods: {
      getInstaData: function () {
        let accessToken = process.env.KASHKUL_INSTAGRAM_ACCESS_TOKEN
        console.log(accessToken)
        let userId = process.env.KASHKUL_INSTAGRAM_ACCT_ID
        let instagramApiUrl= `http://api.instagram.com/v1/users/${userId}/media/recent/?access_token=${accessToken}`

        jsonp(instagramApiUrl, null, function (err, data) {
          if (err) {
            console.log(err.message)
          } else {
            console.log('You are in getInsta')
            return data.data
          }
        })
      }     
    },
    created() {
      this.photos = this.getInstaData()
      console.log(this.photos)
    }
  }
</script>

<style lang="sass" scoped>
  @import '../styles/app.sass'

  .carousel-container
    padding: 8%

</style>