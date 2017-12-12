<template>
	<div>
		<section class="hero is-large is-dark">
			<div class="hero-body container has-text-centered">
				<p class="title">Events</p>
				<p class="subtitle">Stuff about events</p>
			</div>			
		</section>		
		<section class="hero">
			<div class="hero-body">
			</div>			
		</section>
		<timeline :timelineData="eventsData"></timeline>
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
	@import '../styles/app.sass'

</style>