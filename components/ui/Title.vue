<template>
  <h2 class='title'>
    <slot></slot>
  </h2>
</template>

<script>
export default {
  name: "Title"
}
</script>

<style scoped>
.title {
  font-family: 'Inter', Helvetica, Arial, sans-serif;
  font-style: normal;
  font-weight: 600;
  font-size: 2rem;
  line-height: 2.25rem;
  color: #000000;
  max-width: 413px;
}
</style>
