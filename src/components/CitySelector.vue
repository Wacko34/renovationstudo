<template>
  <div class="relative" ref="citySelector">
    <div @click="toggleDropdown" class="font-bold cursor-pointer">
      {{ selectedCity }}
    </div>
    <transition name="fade">
      <div
        v-if="isDropdownOpen"
        class="absolute top-10 left-0 w-40 bg-white border border-gray-300 shadow-md z-10"
      >
        <div
          v-for="city in filteredCities"
          :key="city"
          @click="selectCity(city)"
          class="p-2 cursor-pointer hover:bg-gray-100 transition"
        >
          {{ city }}
        </div>
      </div>
    </transition>
  </div>
</template>

<script lang="ts">
export default {
  data() {
    return {
      selectedCity: "Волгоград" as string,
      isDropdownOpen: false as boolean,
      availableCities: [
        "Волгоград",
        "Москва",
        "Санкт-Петербург",
        "Екатеринбург",
      ] as string[],
    };
  },
  computed: {
    filteredCities(): string[] {
      return this.availableCities.filter((city) => city !== this.selectedCity);
    },
  },
  methods: {
    toggleDropdown() {
      this.isDropdownOpen = !this.isDropdownOpen;

      if (this.isDropdownOpen) {
        document.addEventListener("click", this.closeDropdownOnClickOutside);
      } else {
        document.removeEventListener("click", this.closeDropdownOnClickOutside);
      }
    },
    selectCity(city: string) {
      this.selectedCity = city;
      this.isDropdownOpen = false;
      document.removeEventListener("click", this.closeDropdownOnClickOutside);
    },
    closeDropdownOnClickOutside(event: Event) {
      const targetElement = event.target as HTMLElement;
      const citySelector = this.$refs.citySelector as HTMLElement;

      if (!citySelector.contains(targetElement)) {
        this.isDropdownOpen = false;
        document.removeEventListener("click", this.closeDropdownOnClickOutside);
      }
    },
  },
};
</script>
