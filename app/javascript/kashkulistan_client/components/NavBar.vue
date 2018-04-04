<template>
	<section> 
		<nav class="navbar is-black">
			<div class="navbar-brand">
					<router-link to="/" class="navbar-item" ><img id="circle-logo" src="../images/Kashkul-circlelogo.jpg" alt=""></router-link>
					<div class="navbar-burger burger" @click="showNav = !showNav" :class="{ 'is-active': showNav }">
			      <span></span>
			      <span></span>
			      <span></span>
			    </div>
			</div>
			<div class="navbar-menu" :class="{ 'is-active': showNav }" >
				<div class="navbar-start">
					<div class="navbar-item">
						<router-link to="People">People</router-link>
					</div>							
					<div class="navbar-item">
						<router-link to="Projects">Projects</router-link>
					</div>		
				</div>
				<div class="navbar-end">
					<div class="navbar-item">
						<a href="http://www.instagram.com/kash_kul" target="_blank" class="fa fa-instagram fa-2x"></a>
					</div>
				</div>
			</div>
		</nav>
	</section>
</template>

<script>
	export default {

	  name: 'NavBar',
	  data () {
	    return {
	    	showNav: false
	    }
	  }
	}
</script>

<style lang="sass" scoped>
	@import '../styles/app.sass'

	#circle-logo
		border-radius: 50%

</style>