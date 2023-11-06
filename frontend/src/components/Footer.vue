<template>
    <footer class="relative">
        <FeedbackForm v-if="feedbackFormEnable" />
        <div id="footer-container" :style="containerStyle">
            <div id="about" :style="aboutStyle">
                <div class="flex grow flex-justify-center">
                    <div class="flex-col">
                        <img class="w-150px" src="@/assets/img/logo.png" alt="logo" />
                        <p class="font-bold mt-10px mb-10px">Мы в соцсетях</p>
                        <a href="https://facebook.com/"><img class="w-20px mr-10px cursor-pointer" src="@/assets/img/icon_facebook.png" alt="facebook" /></a>
                        <a href="https://www.youtube.com/"><img class="w-20px mr-10px cursor-pointer" src="@/assets/img/icon_youtube.png" alt="youtube" /></a>
                        <a href="https://instagram.com/"><img class="w-20px mr-10px cursor-pointer" src="@/assets/img/icon_instagram.png" alt="instagram" /></a>
                    </div>
                </div>
                <div class="flex grow flex-justify-center">
                    <div class="flex-col">
                        <p class="font-bold mt-10px">Информация о нас</p>
                        <router-link to="/" class="decoration-none"><p class="mt-10px">Команда</p></router-link>
                        <router-link to="/" class="decoration-none"><p class="mt-10px">Вакансии</p></router-link>
                        <router-link to="/" class="decoration-none"><p class="mt-10px">Новости</p></router-link>
                    </div>
                </div>
                <div class="flex grow flex-justify-center">
                    <div class="flex-col">
                        <p class="font-bold mt-10px">Наши услуги</p>
                        <router-link to="/" class="decoration-none"><p class="mt-10px">Ремонтные работы</p></router-link>
                        <router-link to="/" class="decoration-none"><p class="mt-10px">Дизайн-проект</p></router-link>
                        <router-link to="/" class="decoration-none"><p class="mt-10px">Ремонт под ключ</p></router-link>
                    </div>
                </div>
                <div class="flex grow flex-justify-center">
                    <div class="flex-col">
                        <p class="font-bold mt-10px">Контакты</p>
                        <div class="mt-10px">
                            <img class="mr-5px v-middle" src="@/assets/img/icon_phone.png" alt="phone" />
                            <span>+7(999)555-12-34</span>
                        </div>
                        <div class="mt-10px">
                            <img class="mr-5px v-middle" src="@/assets/img/icon_mail.png" alt="mail" />
                            <span>test@mail.ru</span>
                        </div>
                        <div class="mt-10px">
                            <img class="mr-5px v-super" src="@/assets/img/icon_home.png" alt="home" />
                            <span class="inline-block">г. Волгоград, ул. <br> Волгоградская 1</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
</template>


<script setup lang="ts">
import FeedbackForm from './FeedbackForm.vue'
import { useRouter } from "vue-router";
import { ref, computed } from "vue";

const feedbackFormEnable = ref(false);
const router = useRouter();
const currentRoute = router.currentRoute.value; 

const containerStyle = computed(() => {
      if (currentRoute.path === '/') {
        feedbackFormEnable.value = true;
        return { height: '400px' }; 
      }

      return {}; 
});

const aboutStyle = computed(() => {
      if (currentRoute.path === '/') {
        return { paddingTop: '220px' }; 
      }

      return {}; 
});
</script>


<style scoped>
#footer-container {
    height: 200px;
    background: #8dd3bb;
}

#about {
    display: flex;
    padding-top: 30px;
    height: 100%;
    width: 100%;
}
</style>