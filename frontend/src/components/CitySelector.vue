<template>
    <div ref="root" class="flex pt-10px pb-10px cursor-pointer" @click="isOpen = !isOpen">
      <img src="@/assets/img/location.svg" alt="location">
      <span v-if="selectedCity" class="mt-10px ml-5px">{{ selectedCity.name }}</span>
      <span v-else class="mt-10px ml-5px">Волгоград</span>
    </div>
    <transition 
    enter-active-class="transition ease-out duration-200"
    enter-from-class="transition opacity-0 scale-95"
    enter-to-class="transform opacity-100 scale-100"
    leave-active-class="transition ease-in duration-200"
    leave-from-class="transform opacity-100 scale-100"
    leave-to-class="transition opacity-0 scale-95"
    >
      <ul v-show="isOpen" class="city-list">
        <li v-for="city in cities" :key="city.id" @click="selectCity(city)">{{ city.name }}</li>
      </ul>
    </transition>
</template>
  

<script setup lang="ts">
import { computed, ref, onMounted } from 'vue';
  
const cities = ref([
  { id: 1, name: 'Волгоград' },
  { id: 2, name: 'Волжский' },
  { id: 3, name: 'Камышин' },
  { id: 4, name: 'Михайловка' },
  { id: 5, name: 'Урюпинск' },
]);
  
const cityId = ref(1);
const isOpen = ref(false);
const root = ref<HTMLElement | null>(null);
const selectedCity = computed(() => cities.value.find(city => city.id === cityId.value));

const selectCity = (city: { id: number; name: string; }) => {
  cityId.value = city.id;
};

onMounted(() => {
  window.addEventListener('click', event => {
    if (root.value?.outerHTML && !root.value?.contains(event.target as HTMLElement)) {
      isOpen.value = false;
    }
  });
});
</script>


<style scoped>
ul.city-list {
  background: #fff;
  position: absolute;
  padding-inline-start: 0;
  width: 150px;
  border: solid 2px #eeeeee;
}

.city-list > li {
  padding: 10px;
  cursor: pointer;
  transition: 0.25s;
  list-style-type: none;
  border-bottom: solid 2px #eeeeee;
}

.city-list > li:last-child {
  border-bottom: none;
}

.city-list > li:hover {
  background: #eeeeee;
}
</style>