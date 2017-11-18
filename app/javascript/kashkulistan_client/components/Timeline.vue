<template>
	<section>
		<div class="timeline is-centered">
			<div v-for="item in timelineData" class="timeline-item is-dark">
				<div class="timeline-marker is-dark"></div>
				<div class="timeline-content">
					<div class="card">
					<div class="section">
						<p class="title heading">{{item.date}}</p>
						<p class="title">{{item.name}}</p>
						<p class="subtitle">More stuff</p>
						<p>{{item.description}}</p>
					</div>
				</div>
				</div>
			</div>
		</div>
	</section>
</template>

<script>
	export default {
	  name: 'Timeline',
	  props: ['timelineData'],
	  data () {
	    return {

	    }
	  }
	}
</script>

<style lang="sass" scoped>
	@import '~bulma', '~bulma-timeline'
 
</style>