<template>
  <div>
    <section class="hero is-large is-black is-bold">
      <div class="hero-body container has-text-centered">
        <p class="title">Who is Kashkul?</p>
        <p class="subtitle">Maybe say some more stuff here. Probably make this centered.</p> 
      </div>
    </section>
    <section class="hero is-medium is-black">
      <div class="hero-body container has-text-centered">
        <person-row v-for="group in peopleData" :rowData="group"></person-row>
      </div>
    </section>   
  </div>
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
    created () {
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
  @import '../styles/app.sass'

</style>