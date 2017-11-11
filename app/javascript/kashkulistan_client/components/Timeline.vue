<template>
	<section>
		<section class="hero is-medium">
			<div class="hero-body">
				<p class="title">Events</p>
			</div>			
		</section>
		<div class="timeline is-centered">
			<header class="timeline-header">
				<span class="tag is-medium is-dark">Past events:</span>
			</header>
			<div class="timeline-item is-dark">
				<div class="timeline-marker is-dark"></div>
				<div class="timeline-content">
					<div class="card">
					<div class="section">
						<p class="title heading">January 26, 2016</p>
						<p class="title">Stuff</p>
						<p class="subtitle">More stuff</p>
						<p>About this this this this this htsisdfoldisf oisjdfosuhdfsudf ojsdfohwsdfg l</p>
					</div>
				</div>
				</div>
			</div>
			<div class="timeline-item is-dark">
				<div class="timeline-marker is-dark is-image is-32x32">
					<img src="http://bulma.io/images/placeholders/32x32.png">
				</div>
				<div class="timeline-content">
					<p class="heading">February 2016</p>
					<div class="card">
						<div class="card content">
							<p class="title">Stuff</p>
							<p class="subtitle">More stuff</p>
							<p>About this this this this this htsisdfoldisf oisjdfosuhdfsudf ojsdfohwsdfg l</p>
						</div>
					</div>
				</div>
			</div>
			<header class="timeline-header">
				<span class="tag is-primary">2017</span>
			</header>
			<div class="timeline-item is-dark">
				<div class="timeline-marker is-dark is-icon">
					<i class="fa fa-flag"></i>
				</div>
				<div class="timeline-content">
					<p class="heading">March 2017</p>
					<p>Timeline content - Can include any HTML element</p>
				</div>
			</div>
			<header class="timeline-header">
				<span class="tag is-medium is-dark">End</span>
			</header>
		</div>
	</section>
</template>

<script>
export default {
  name: 'Timeline',
  data () {
    return {

    }
  }
}
</script>

<style lang="sass" scoped>
	@import '~bulma', '~bulma-timeline'
 
</style>