<template>
  <div>
    <section class="hero is-large has-map">
      <div class="hero-body container has-text-centered has-text-white">
        <p class="title is-1 has-text-white">Who is Kashkul?</p>
        <p class="title is-3 has-text-white"><a href="#" v-scroll-to="'#researchers'">Researchers</a>  | <a href="#" v-scroll-to="'#visiting'">Visiting Artists and Scholars</a>  |  <a href="#" v-scroll-to="'#directors'">Directors</a></p>
      </div>
      <div class="hero-foot container has-text-centered has-text-white">
      </div> 
    </section>
    <person-category v-if="firstCat" category-name="Researchers" id="researchers" :category-data="firstCat"></person-category> 
    <person-category v-if="secondCat" category-name="Visiting Scholars and Artists" id="visiting" :category-data="secondCat"></person-category> 
    <person-category v-if="thirdCat" category-name="Directors" id="directors" :category-data="thirdCat"></person-category> 
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

  .has-map
    background: linear-gradient(rgba(0, 0, 0, 0.65), rgba(0, 0, 0, 0.65)), url('../images/map.jpg')
    background-size: cover
    background-position: center

</style>