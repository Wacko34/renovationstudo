<template>
  <main>
    <div class="bgImage h-70vh w-100%" :style="{backgroundImage: `url(src/assets/img/background.jpg)`}">
      <div class="title-block margin round">
        <div class="font-semibold">Ремонт и дизайн интерьера</div>
        <div class="title">
          Студия <br> ремонта <br> ПРИстройка
        </div>
        <button class="green round">Заказать дизайн-проект</button>
      </div>
    </div>
    <div class="margin mt-50px">
      <div class="flex justify-between">
        <span class="font-size-6 font-bold">Наши услуги</span>
        <button class="white round">Посмотреть все</button>
      </div>
      <div class="flex justify-between mt-30px">
        <div class="service round flex flex-col flex-items-center w-30%">
          <div class="relative w-100%">
            <div class="bgImage round pt-70%" :style="{backgroundImage: `url(src/assets/img/service-renovation.jpg)`}"></div>
          </div>
          <span class="font-semibold mt-30px mb-30px">Косметический ремонт</span>
        </div>
        <div class="service round flex flex-col flex-items-center w-30%">
          <div class="relative w-100%">
            <div class="bgImage round pt-70%" :style="{backgroundImage: `url(src/assets/img/service-design.jpg)`}"></div>
          </div>
          <span class="font-semibold mt-30px mb-30px">Дизайн-проект</span>
        </div>
        <div class="service round flex flex-col flex-items-center w-30%">
          <div class="relative w-100%">
            <div class="bgImage round pt-70%" :style="{backgroundImage: `url(src/assets/img/service-turnkey.jpg)`}"></div>
          </div>
          <span class="font-semibold mt-30px mb-30px">Ремонт под ключ</span>
        </div>
      </div>
    </div>
  </main>
</template>


<script setup lang="ts">
document.title = 'ПРИстройка';
</script>


<style scoped>
main {
    flex-grow: 1;
}

.margin {
  margin-left: 100px;
  margin-right: 100px;
}

.bgImage {
  background-size: cover;
  background-repeat: no-repeat;
  background-position: center center;
}

.title-block {
  float: left;
  margin-top: 100px;
  margin-left: 50px;
}

.title {
  margin-top: 40px;
  margin-bottom: 40px;
  padding-top: 20px;
  padding-bottom: 20px;
  font-size: large;
  border-top: 3px solid;
  border-bottom: 3px solid;
  font-size: 3rem;
  font-weight: bold;
}

button {
  padding: 10px 25px;
  background: #fff;
  border-width: 1px;
  cursor: pointer;
  transition: 0.25s box-shadow;
}

button.green {
  width: 100%;
  border-style: none;
  font-weight: 600;
  background: #cdeae1;
}

button:hover {
  box-shadow: 2px 3px 6px rgba(0, 0, 0, 0.3);
}

.service {
  cursor: pointer;
  transition: 0.25s box-shadow;
}

.service:hover {
  box-shadow: 2px 3px 6px rgba(0, 0, 0, 0.3);
}
</style>