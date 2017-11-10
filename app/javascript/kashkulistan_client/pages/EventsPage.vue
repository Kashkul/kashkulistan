<template>
	<section class="hero is-fullheight">
		<div class="hero-body">
			<p class="title">You have reached Events</p>
		</div>
	</section>
</template>

<script>
	import Timeline from '../components/Timeline.vue'

	export default {
	  name: 'EventsPage',
	  components: { Timeline },
	  data () {
	    return {

	    }
	  }
	}
</script>

<style lang="sass" scoped>
	@import '~bulma'
</style>