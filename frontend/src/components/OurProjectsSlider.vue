<template>
    <swiper
    :modules="[Autoplay, Pagination]"
    :slides-per-view="1"
    :centeredSlides="true"
    :speed="1500"
    :space-between="100"
    :loop="true"
    :pagination="{ 
        clickable: true,
        dynamicBullets: true
      }"
    :autoplay="{
      delay: 800000,
      disableOnInteraction: false,
    }"
  >
      <swiper-slide>
        <div class="flex justify-between mt-30px">
          <div class="slide-info-width h-400px p-20px pr-60px round bg-#8dd3bb">
            <p class="font-size-6 text-center font-bold">Современная классика</p>

            <p class="pt-20px font-medium">Квартира площадью 100 кв. м.</p>

            <p class="pt-20px">Мы создали уникальное пространство, сочетающее современные тренды и комфорт.</p>

            <p class="pt-20px font-medium">Стоимость дизайн-проекта: <span class="font-normal">500 000.</span></p>
            <p class="font-medium">Стоимость материалов: <span class="font-normal">1 500 000.</span></p>
            <p class="font-medium">Общая стоимость ремонта: <span class="font-normal">3 000 000.</span></p>

            <p class="pt-20px font-medium">Что было сделано:</p>

            <p class="pt-20px">
              -Полное обновление интерьера, включая перепланировку помещений и замену старых отделочных материалов
              -Разработка и реализация уникального дизайн-проекта, в том числе выбор цветовой палитры и мебели
              -Закупка и установка высококачественных строительных материалов, таких как экологичные полы и современные керамические плитки для ванных комнат и кухни.
            </p>
          </div>
          <div class="slide-info-width flex flex-wrap justify-between flex-content-between h-400px round">
            <div class="slide-img-width bgImage round h-193px" :style="{backgroundImage: `url(src/assets/img/slider1.jpg)`}"></div>
            <div class="slide-img-width bgImage round h-193px" :style="{backgroundImage: `url(src/assets/img/slider2.jpg)`}"></div>
            <div class="slide-img-width bgImage round h-193px" :style="{backgroundImage: `url(src/assets/img/slider3.jpg)`}"></div>
            <div class="slide-img-width bgImage round h-193px" :style="{backgroundImage: `url(src/assets/img/slider4.jpg)`}"></div>
          </div>
        </div>
        <div class="h-40px"></div>
      </swiper-slide>

      <swiper-slide>
        <div class="flex justify-between mt-30px">
          <div class="slide-info-width h-400px p-20px pr-60px round bg-#8dd3bb">
            <p class="font-size-6 text-center font-bold">Современная классика</p>

            <p class="pt-20px font-medium">Квартира площадью 100 кв. м.</p>

            <p class="pt-20px">Мы создали уникальное пространство, сочетающее современные тренды и комфорт.</p>

            <p class="pt-20px font-medium">Стоимость дизайн-проекта: <span class="font-normal">500 000.</span></p>
            <p class="font-medium">Стоимость материалов: <span class="font-normal">1 500 000.</span></p>
            <p class="font-medium">Общая стоимость ремонта: <span class="font-normal">3 000 000.</span></p>

            <p class="pt-20px font-medium">Что было сделано:</p>

            <p class="pt-20px">
              -Полное обновление интерьера, включая перепланировку помещений и замену старых отделочных материалов
              -Разработка и реализация уникального дизайн-проекта, в том числе выбор цветовой палитры и мебели
              -Закупка и установка высококачественных строительных материалов, таких как экологичные полы и современные керамические плитки для ванных комнат и кухни.
            </p>
          </div>
          <div class="slide-info-width flex flex-wrap justify-between flex-content-between h-400px round">
            <div class="slide-img-width bgImage round h-193px" :style="{backgroundImage: `url(src/assets/img/slider1.jpg)`}"></div>
            <div class="slide-img-width bgImage round h-193px" :style="{backgroundImage: `url(src/assets/img/slider2.jpg)`}"></div>
            <div class="slide-img-width bgImage round h-193px" :style="{backgroundImage: `url(src/assets/img/slider3.jpg)`}"></div>
            <div class="slide-img-width bgImage round h-193px" :style="{backgroundImage: `url(src/assets/img/slider4.jpg)`}"></div>
          </div>
        </div>
        <div class="h-40px"></div>
      </swiper-slide>

      <swiper-slide>
        <div class="flex justify-between mt-30px">
          <div class="slide-info-width h-400px p-20px pr-60px round bg-#8dd3bb">
            <p class="font-size-6 text-center font-bold">Современная классика</p>

            <p class="pt-20px font-medium">Квартира площадью 100 кв. м.</p>

            <p class="pt-20px">Мы создали уникальное пространство, сочетающее современные тренды и комфорт.</p>

            <p class="pt-20px font-medium">Стоимость дизайн-проекта: <span class="font-normal">500 000.</span></p>
            <p class="font-medium">Стоимость материалов: <span class="font-normal">1 500 000.</span></p>
            <p class="font-medium">Общая стоимость ремонта: <span class="font-normal">3 000 000.</span></p>

            <p class="pt-20px font-medium">Что было сделано:</p>

            <p class="pt-20px">
              -Полное обновление интерьера, включая перепланировку помещений и замену старых отделочных материалов
              -Разработка и реализация уникального дизайн-проекта, в том числе выбор цветовой палитры и мебели
              -Закупка и установка высококачественных строительных материалов, таких как экологичные полы и современные керамические плитки для ванных комнат и кухни.
            </p>
          </div>
          <div class="slide-info-width flex flex-wrap justify-between flex-content-between h-400px round">
            <div class="slide-img-width bgImage round h-193px" :style="{backgroundImage: `url(src/assets/img/slider1.jpg)`}"></div>
            <div class="slide-img-width bgImage round h-193px" :style="{backgroundImage: `url(src/assets/img/slider2.jpg)`}"></div>
            <div class="slide-img-width bgImage round h-193px" :style="{backgroundImage: `url(src/assets/img/slider3.jpg)`}"></div>
            <div class="slide-img-width bgImage round h-193px" :style="{backgroundImage: `url(src/assets/img/slider4.jpg)`}"></div>
          </div>
        </div>
        <div class="h-40px"></div>
      </swiper-slide>
    </swiper>
</template>


<script setup lang="ts">
import { Autoplay, Pagination } from 'swiper/modules';
import { Swiper, SwiperSlide } from 'swiper/vue';
import 'swiper/css';
import 'swiper/css/pagination';
document.title = 'ПРИстройка';
</script>


<style scoped>
.slide-info-width {
  width: calc(50% - 15px);
}

.slide-img-width {
  width: calc(50% - 7px);
}
</style>