<template>
	<section> 
		<nav class="navbar is-black">
			<div class="navbar-brand">
				<router-link to="/" class="navbar-item">Kashkul</router-link>
			</div>
			<div>
			</div>
			<div class="navbar-menu">
				<div class="navbar-start">
					<div class="navbar-item">
						<router-link to="People">Our people</router-link>
					</div>
					<div class="navbar-item">
						<router-link to="Events">Events</router-link>
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

	    }
	  }
	}
</script>

<style lang="sass" scoped>
	@import '../styles/app.sass'

</style>