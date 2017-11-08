<template>
	<section> 
		<nav class="navbar is-dark">
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

<style lang="scss" scoped>
	@import '~bulma'

</style>