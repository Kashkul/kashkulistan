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
import jsonp from 'jsonp'
import {Carousel, Slide} from 'vue-carousel'
export default {

  name: 'InstagramCarousel',
  components: {Carousel, Slide},

  data () {
    return {

    }
  },
  beforeCreate() {
  	let accessToken = process.env.ROGER_INSTAGRAM_ACCESS_TOKEN
  	let userId = process.env.ROGER_INSTAGRAM_ACCT_ID
  	let instagramApiUrl = `http://api.instagram.com/v1/users/${userId}/media/recent/?access_token=${accessToken}`
 //  	axios.get(instagramApiUrl, {
 //  		headers: {
	//   	'Access-Control-Allow-Origin': '*',
	// },
 //  	})
 //  	.then(response => {
 //  		console.log(response.data)
 //  	})
 		jsonp(instagramApiUrl, null, function (err, data) {
 			if (err) {
 				console.log(err.message)
 			} else {
 				console.log(data)
 			}
 			})

  }
}
</script>

<style lang="css" scoped>
</style>