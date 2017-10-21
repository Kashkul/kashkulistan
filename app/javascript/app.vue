<template>
  <div id="app">
    <p class="title">{{ message }}</p>
    <Test></Test>
  </div>
</template>

<script>
import Test from './components/test.vue'
export default {
  components: { Test },
  data: function () {
    return {
      message: "Hello Vue!"
    }
  }
}
</script>

<style lang="sass" scoped>
  @import '~bulma'

  div
    font-family: $family-primary


</style>
