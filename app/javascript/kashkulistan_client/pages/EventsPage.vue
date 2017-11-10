<template>
	
			<timeline></timeline>

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