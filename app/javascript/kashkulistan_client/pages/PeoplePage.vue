<template>
  <section class="hero is-fullheight is-white">
    <div class="hero-body">
      <div class="container has-text-centered">
        <div class="tile is-ancestor">
          <div class="tile is-parent">
            <person-tile></person-tile>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<script>

import PersonTile from '../components/PersonTile.vue'
export default {

  name: 'PeoplePage',
  components: { PersonTile },
  data () {
    return {

    }
  }
}

</script>

<style lang="sass" scoped>
@import '~bulma'

</style>