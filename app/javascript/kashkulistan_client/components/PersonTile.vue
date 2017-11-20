<template>
	<div class="tile is-parent">
		<article class="tile is-child is-light box">
			<section v-scroll-reveal>
				<div class="content">
					<p class="title">{{tileData.name}}</p>
					<p class="subtitle">{{tileData.role}}</p>
					<div class="social-media-icons">
						<span class="icon has-text-info">
							<i class="fa fa-twitter" @click="openSocialMedia('twitter')"></i>
						</span>
						<span class="icon has-text-info">
							<i class="fa fa-facebook" @click="openSocialMedia('facebook')"></i>
						</span>					
						<span class="icon has-text-info">
							<i class="fa fa-instagram" @click="openSocialMedia('instagram')"></i>
						</span>
					</div>
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
	  },
	  methods: {
	  	//TO-DO: refactor without switch statement. Don't really need a method here at all - just use hrefs
	  	openSocialMedia(platform) {
	  		var url
	  		//determines which social media platform url to use
	  		switch (platform) {
	  			case 'twitter':
	  				url = this.tileData.twitter
	  				break
	  			case 'facebook':
	  				url = this.tileData.facebook
	  				break
	  			case 'instagram':
	  				url = this.tileData.instagram
	  		}
	  		//opens url in new tab
        let win = window.open(url, '_blank')
        win.focus()
      }
    }
	}
</script>

<style lang="sass" scoped>
	@import '~bulma'

	.social-media-icons
		margin-bottom: 20px

</style>