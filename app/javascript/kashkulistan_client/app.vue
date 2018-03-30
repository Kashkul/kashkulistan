<template>
  <div id="app">
    <div v-cloak>
      <nav-bar class="nav-is-fixed"></nav-bar>
      <router-view id="main-content"></router-view>
      <footer class="footer">
        <div class="container">
          <div class="content has-text-centered">
            <p>
              <strong>Kashkul</strong> by <a href="http://jgthms.com">Stuff</a>. The source code is licensed
              <a href="http://opensource.org/licenses/mit-license.php">MIT</a>. The website content
              is licensed <a href="http://creativecommons.org/licenses/by-nc-sa/4.0/">CC BY NC SA 4.0</a>.
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

  #main-content
    padding-bottom: 100px
    
</style>
