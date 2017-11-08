<template>
  <section class="hero is-fullheight is-white">
    <div class="hero-body">
      <div class="container has-text-centered">
        <div class="tile is-ancestor">

            <person-tile></person-tile>
            <person-tile></person-tile>
            <person-tile></person-tile>

        </div>        
        <div class="tile is-ancestor">

            <person-tile></person-tile>
            <person-tile></person-tile>
            <person-tile></person-tile>

        </div>
      </div>
    </div>
  </section>
</template>

<script>

import axios from 'axios'
import PersonTile from '../components/PersonTile.vue'
export default {

  name: 'PeoplePage',
  components: { PersonTile },
  data () {
    return {

    }
  },
  created: function() {
    axios.get(`api/v1/people`)
    .then(response => {
      // JSON responses are automatically parsed.
      console.log(response.data)
    })
    .catch(e => {
      this.errors.push(e)
    })
  }
}

</script>

<style lang="sass" scoped>
@import '~bulma'

</style>