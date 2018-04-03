<template>
  <div id="app">
    <div v-cloak>
      <nav-bar class="nav-is-fixed"></nav-bar>
      <router-view id="main-content"></router-view>
      <footer class="footer">
        <div class="container">
          <div class="content has-text-centered">
            <p>
              Copyright © 2018 Kashkul. All rights reserved.
            </p>
          </div>
        </div>
      </footer>
    </div>
  </div>
</template>

<script>
import NavBar from './components/NavBar.vue'

export default {
  components: { NavBar },
  data: function () {
    return {

    }
  }
}
</script>

<style lang="sass" scoped>
  @import './styles/app.sass'

  div
    font-family: $family-primary

  .nav-is-fixed
    top: 0
    z-index: 100
    position: fixed
    width: 100%
    
</style>
