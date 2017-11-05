<template>
	<div>
		<nav-bar></nav-bar>
		<h1>You have reached people page</h1>
	</div>
</template>

<script>

import NavBar from '../components/NavBar.vue'
export default {

  name: 'PeoplePage',
  components: { NavBar },
  data () {
    return {

    }
  }
}

</script>

<style lang="sass" scoped>
@import '~bulma'
</style>