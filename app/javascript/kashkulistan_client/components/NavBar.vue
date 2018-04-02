<template>
	<section> 
		<nav class="navbar is-black">
			<div class="navbar-brand">
					<router-link to="/" class="navbar-item" ><img id="circle-logo" src="../images/Kashkul-circlelogo.jpg" alt=""></router-link>
			</div>
			<div class="navbar-menu">
				<div class="navbar-start">
					<div class="navbar-item">
						<router-link to="People">People</router-link>
					</div>							
					<div class="navbar-item">
						<router-link to="People">Projects</router-link>
					</div>		
				</div>
				<div class="navbar-end">
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

	    }
	  }
	}
</script>

<style lang="sass" scoped>
	@import '../styles/app.sass'

	#circle-logo
		border-radius: 50%

</style>