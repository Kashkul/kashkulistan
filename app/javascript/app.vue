<template>
  <div id="app">
    <p class="title">{{ message }}</p>
  </div>
</template>

<script>
export default {
  data: function () {
    return {
      message: "Hello Vue!"
    }
  }
}
</script>

<style lang="sass" scoped>
  @import '~bulma'

  p
    font-family: $family-primary


</style>
