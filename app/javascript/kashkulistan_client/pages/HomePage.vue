<template>
	<div>
		<nav class="navbar nav-is-fixed is-dark">
	    <div class="navbar-brand">
    		<a class="navbar-item" href="https://bulma.io">
     			<img src="https://bulma.io/images/bulma-logo.png" alt="Bulma: a modern CSS framework based on Flexbox" width="112" height="28">
    		</a>
  		</div>
		</nav>
		<section class="hero is-fullheight is-light">
			
		</section>
		<section class="hero is-fullheight is-primary">
			<p class="title">Home is working!</p>
		</section>
	</div>
</template>

<script>

export default {

  name: 'HomePage',

  data () {
    return {

    }
  }
}

</script>

<style lang="sass" scoped>
@import '~bulma'

.nav-is-fixed
  top: 0
  z-index: 100
  position: fixed
  width: 100%

</style>