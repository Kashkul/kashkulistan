<template>
	<div class="tile is-ancestor">
		<div class="tile is-parent">
			<div class="tile is-child">
				<p>{{rowData}}</p>
			</div>
		</div>
  </div>        
</template>

<script>
export default {

  name: 'PersonRow',
  props: ['rowData'],
  data () {
    return {

    }
  }
}
</script>

<style lang="sass" scoped>
@import '~bulma'
</style>