<template>
  <div id="app">
    <nav-bar class="nav-is-fixed"></nav-bar>
    <router-view></router-view>
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
  @import '~bulma'

  div
    font-family: $family-primary

  .nav-is-fixed
    top: 0
    z-index: 100
    position: fixed
    width: 100%
</style>
