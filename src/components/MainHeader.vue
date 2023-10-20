<template>
  <div>
    <header class="bg-white border-b-2 border-gray-200 py-8">
      <div class="container mx-auto flex justify-between items-center">
        <div class="flex items-center">
          <img src="../assets/logo.png" alt="Logo" class="h-12 w-auto" />
          <CitySelector class="ml-8"></CitySelector>
        </div>

        <div class="cursor-pointer bg-white text-black px-6 py-3 rounded-lg border-solid border-1 border-black shadow-md hover:bg-gray-200 transition duration-300">
          Войти
        </div>
      </div>
    </header>

    <nav class="bg-green-300 text-black py-6">
      <div class="container mx-auto flex justify-evenly">
        <div class="space-x-50">
          <span
            class="no-underline font-bold cursor-pointer hover:text-gray-500"
            >Портфолио</span
          >
          <span
            class="no-underline font-bold cursor-pointer hover:text-gray-500"
            >Цены</span
          >
          <span
            class="no-underline font-bold cursor-pointer hover:text-gray-500"
            >Отзывы</span
          >
          <span
            class="no-underline font-bold cursor-pointer hover:text-gray-500"
            >О нас</span
          >
          <span
            class="font-bold cursor-pointer text-black px-6 py-3 rounded-lg border-solid border-1 border-black shadow-md hover:bg-gray-200 transition duration-300"
            >Заказать ремонт</span
          >
        </div>
      </div>
    </nav>
  </div>
</template>

<script lang="ts">
  import CitySelector from './CitySelector.vue';

  export default {
  components: {
    CitySelector
  },
};
</script>
