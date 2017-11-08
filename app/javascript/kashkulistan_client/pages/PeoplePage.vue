<template>
  <section class="hero is-fullheight is-white">
    <div class="hero-body">
      <div class="container has-text-centered">
        <person-row v-for="group in peopleData" :rowData="group"></person-row>
      </div>
    </div>
  </section>
</template>

<script>
  import axios from 'axios'
  import PersonRow from '../components/PersonRow.vue'
  
  export default {
    name: 'PeoplePage',
    components: {PersonRow},
    data () {
      return {
        //peopleData will be set to the data in the server response - see created function below.
        peopleData: []
      }
    },
    created: function() {
      axios.get(`api/v1/people`)
      .then(response => {
        this.peopleData = response.data
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