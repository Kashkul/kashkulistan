<template>
	<section class="timeline">
  <ul>
    <li>
      <div>
        <time>1934</time>
        Some content here
      </div>
    </li>    
    <li>
      <div>
        <time>1942</time>
        Some content here
      </div>
    </li>    
    <li>
      <div>
        <time>1964</time>
        Some content here
      </div>
    </li>
    <!-- more list items here -->
  </ul>
</section>
</template>

<script>
export default {
  name: 'Timeline',
  data () {
    return {

    }
  }
}
</script>

<style lang="sass" scoped>
	@import '~bulma'
</style>