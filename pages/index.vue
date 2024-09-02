<template>
  <div class="container">
    <st-title>Галерея картинок</st-title>
    <galary-list />
  </div>
</template>

<script>
import Title from '../components/ui/Title';
import GalaryList from "../components/GalaryList";
export default {
  name: 'IndexPage',

  components: {
    'galary-list': GalaryList,
    'st-title': Title,
  },
}
</script>
<style>
.container {
  margin: 40px;
}
</style>
