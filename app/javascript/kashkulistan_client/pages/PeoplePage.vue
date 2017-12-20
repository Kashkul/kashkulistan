<template>
  <div>
    <section class="hero is-large is-dark">
      <div class="hero-body container has-text-centered">
        <p class="title">Who is Kashkul?</p>
        <p class="subtitle">Maybe say some more stuff here. Probably make this centered.</p> 
      </div>
    </section>
    <section class="hero">
      <div class="hero-body">
      </div>      
    </section>
    <div class="container has-text-centered">
      <person-row v-for="group in peopleData" :rowData="group"></person-row>
      <section class="hero is-small">
        <div class="hero-body">
          <div class="tile is-ancestor">
            <div class="tile is-parent">
              <article class="tile is-child is-light box">
                <section v-scroll-reveal>
                  <div class="content">
                    <p class="title">Marie LaBrosse</p>
                    <p class="subtitle">Co-Founder and Co-Director</p>
                    <p>Alana Marie Levinson-LaBrosse is a translator, poet and teacher who has worked in Iraq for the last six years, serving as the founding Chair of the English Department at the American University of Iraq, Sulaimani (AUIS). She received her MFA at Warren Wilson and MEd from the University of Virginia. Handful of Salt (The Word Works, 2016) introduced Kajal Ahmad’s poetry to English. New and Selected Poems of Abdulla Pashew is forthcoming from Phoneme Media in 2017. Translations and essays have appeared in The Iowa Review, Words Without Borders, Poetry Society of America, and the anthology: SoJust. Levinson-LaBrosse is currently a Research Fellow at AUIS’ Institute for Regional and International Studies (IRIS), a PhD candidate at the University of Exeter’s Centre for Kurdish Studies, and the Co-Founder and Co-Director of Kashkul.</p>
                  </div>
                </section>
              </article>
            </div>
            <div class="tile is-parent">
              <article class="tile is-child is-light box">
                <section v-scroll-reveal>
                  <div class="content">
                    <p class="title">Elizabeth Campbell</p>
                    <p class="subtitle">Co-Founder and Co-Director</p>
                    <p>Dr. Elizabeth Campbell is an historian of the Middle East. She received her MA and PhD in history from the University of Washington and her BA from the University of California, Berkeley. She was an Assistant Professor at the American University of Iraq, Sulaimani from 2012 to 2016 and was chair of the Department of Social Sciences from 2013 to 2015. Campbell is fluent in Arabic and her research focuses on Christianity and Islam in late antique and early Islamic Mesopotamia. She is currently an Assistant Professor of History at Daemen College in Amherst, New York. She is a Research Fellow at AUIS’ Institute for Regional and International Studies (IRIS) and the Co-Founder and Co-Director of Kashkul.</p>
                  </div>
                </section>
              </article>
            </div>
          </div>
        </div>
      </section>   
    </div>
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