<template>
	<div class="arrow bounce">
  	<a class="fa fa-chevron-down fa-2x" href="#"></a>
  	<a class="fa fa-chevron-down fa-2x" href="#"></a>
  	<a class="fa fa-chevron-down fa-2x" href="#"></a>
	</div>
</template>

<script>
export default {

  name: 'ScrollArrow',

  data () {
    return {

    }
  }
}
</script>

<style lang="css" scoped>
a { 
	color: white; 
	text-decoration: none; 
  margin-right: 10%;
	}

.arrow {
  text-align: center;
}
.bounce {
  -moz-animation: bounce 2s infinite;
  -webkit-animation: bounce 2s infinite;
  animation: bounce 2s infinite;
}

@keyframes bounce {
  0%, 20%, 50%, 80%, 100% {
    transform: translateY(0);
  }
  40% {
    transform: translateY(-30px);
  }
  60% {
    transform: translateY(-15px);
  }
}
</style>