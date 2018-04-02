<template>
  <section class="hero is-medium has-squiggles">
    <div class="hero-body container has-text-centered">
      <h1 class="title is-1 has-text-white">Follow us on Instagram</h1>
      <h1 class="title is-3 has-text-white">@kash_kul</h1>
    </div>
    <div class="carousel-container">
    	<carousel  :autoplay="true" :loop="true" :perPage="2">
        <slide class="slide" v-for="photo in photos"><a :href="photo.link" target="_blank"><img :src="photo.images.standard_resolution.url"></a></slide>
    	</carousel>
    </div>
  </section>
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

        jsonp(instagramApiUrl, null, (err, data) => {
          if (err) {
            console.log(err.message)
          } else {
            data.data.forEach(photo => this.photos.push(photo))
          }
        })     
      }     
    },
    created() {
      this.getInstaData()
    }
  }
</script>

<style lang="sass" scoped>
  @import '../styles/app.sass'

  .carousel-container
    text-align: center
    padding: 3%

  .has-squiggles
    background: linear-gradient(rgba(0, 0, 0, 0.85), rgba(0, 0, 0, 0.85)), url('../images/squiggles.jpg')
    background-size: cover

</style>