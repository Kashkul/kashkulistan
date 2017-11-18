<template>
	<div>
		<section class="hero is-large">
			<div class="hero-body container has-text-centered">
				<p class="title">Events</p>
				<p class="subtitle">Stuff about events</p>
			</div>			
		</section>
		<timeline></timeline>
	</div>
</template>

<script>
	import Timeline from '../components/Timeline.vue'
	import axios from 'axios'

	export default {
		name: 'EventsPage',
		components: { Timeline },
		data () {
			return {
				eventsData: []
			}
		},
		created() {
			axios.get(`api/v1/events`)
			.then(response => {
				this.eventsData = response.data
			})
		}
	}
</script>

<style lang="sass" scoped>
	@import '~bulma'

</style>