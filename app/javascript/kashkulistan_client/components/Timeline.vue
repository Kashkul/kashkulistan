<template>
	<div class="timeline is-centered">
		<header class="timeline-header">
			<span class="tag is-medium is-primary">Start</span>
		</header>
		<div class="timeline-item is-primary">
			<div class="timeline-marker is-primary"></div>
			<div class="timeline-content">
				<p class="heading title">January 2016</p>
				<div class="card">
					<div class="card content">
						<p class="title">Stuff</p>
						<p class="subtitle">More stuff</p>
						<p>About this this this this this htsisdfoldisf oisjdfosuhdfsudf ojsdfohwsdfg l</p>
					</div>
				</div>
			</div>
		</div>
		<div class="timeline-item is-warning">
			<div class="timeline-marker is-warning is-image is-32x32">
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
		<div class="timeline-item is-danger">
			<div class="timeline-marker is-danger is-icon">
				<i class="fa fa-flag"></i>
			</div>
			<div class="timeline-content">
				<p class="heading">March 2017</p>
				<p>Timeline content - Can include any HTML element</p>
			</div>
		</div>
		<header class="timeline-header">
			<span class="tag is-medium is-primary">End</span>
		</header>
	</div>
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