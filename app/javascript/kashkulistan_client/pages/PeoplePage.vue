<template>
	<div>
    <div class="tile is-ancestor">
      <div class="tile is-parent">
        <person-tile class="tile is-child is-9"></person-tile>
        <person-tile class="tile is-child is-2"></person-tile>
      </div>
    </div>
	</div>
</template>

<script>

import NavBar from '../components/NavBar.vue'
import PersonTile from '../components/PersonTile.vue'
export default {

  name: 'PeoplePage',
  components: { NavBar,PersonTile },
  data () {
    return {

    }
  }
}

</script>

<style lang="sass" scoped>
@import '~bulma'

.is-parent
  flex-wrap: wrap
  
</style>