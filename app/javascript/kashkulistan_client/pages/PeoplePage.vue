<template>
  <div>
    <section class="hero is-large is-black is-bold">
      <div class="hero-body container has-text-centered">
        <p class="title">Who is Kashkul?</p>
        <p class="subtitle">Maybe say some more stuff here. Probably make this centered.</p> 
      </div>
    </section>
    <person-category v-if="firstCat" :category-data="firstCat"></person-category> 
    <person-category v-if="secondCat" :category-data="secondCat"></person-category> 
    <person-category v-if="thirdCat" :category-data="thirdCat"></person-category> 
  </div>
</template>

<script>
  import axios from 'axios'
  import PersonCategory from '../components/PersonCategory.vue'

  export default {
    name: 'PeoplePage',
    components: { PersonCategory },
    data () {
      return {
        //peopleData will be set to the data in the server response - see created function below.
        peopleData: []
      }
    },
    computed: {
      firstCat: function() { return this.peopleData[0] },
      secondCat: function() { return this.peopleData[1] },
      thirdCat: function() { return this.peopleData[2] }
    },
    created () {
      axios.get(`api/v1/people`)
      .then(response => {
        this.peopleData = response.data
        // this.firstCat = this.peopleData[0]
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