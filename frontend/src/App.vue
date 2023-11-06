<template>
  <AppHeader></AppHeader>
  <RouterView />
  <AppFooter></AppFooter>
</template>

<script lang="ts">
import AppHeader from '../src/components/AppHeader.vue'
import AppFooter from '../src/components/AppFooter.vue'

export default {
  components:{
    AppHeader,
    AppFooter
  },
}
</script>

<style scoped>
  .main-container {
    max-width: 400px;
  }
</style>
