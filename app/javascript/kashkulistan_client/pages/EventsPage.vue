<template>
	<div>
		<section class="hero is-medium">
			<div class="hero-body">
				<p class="title">Events</p>
			</div>			
		</section>
		<timeline></timeline>
	</div>
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