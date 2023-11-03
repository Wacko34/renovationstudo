<template>
    <footer>
        <div class="contact-form round">
            <div class="w-65%">
                <span class="phone">
                    Оставьте ваш телефон
                </span>
                <span>
                    И мы свяжемся с вами
                </span>
                <form class="mt-15px" action="" method="post">
                    <div class="h-40px mt-30px">
                        <label class="block mb-5px mt-10px" for="name">Ваше имя</label>
                        <input class="round" type="text" name="name">
                        <label class="block mb-5px mt-10px" for="phone">Номер телефона</label>
                        <input class="round" type="tel" name="phone">
                        <label class="block mb-5px mt-10px" for="email">Почта</label>
                        <input class="round" type="email" name="email">
                        <button class="sendBtn round" type="submit">Отправить</button>
                    </div>
                </form>
            </div>
            <div class="w-35%" style="display: flex; flex-direction: column; justify-content: flex-end;">
                <img class="w-90% flex-self-end" src="@/assets/img/post.png" alt="post" />
            </div>
        </div>
        <div class="h-400px bg-#8dd3bb">
            <div class="pt-220px flex h-100% w-100%">
                <div class="flex grow flex-justify-center">
                    <div class="flex-col">
                        <img class="w-150px" src="@/assets/img/logo_small.png" alt="logo" />
                        <p class="font-bold mt-10px mb-10px">Мы в соцсетях</p>
                        <img class="w-20px mr-10px cursor-pointer" src="@/assets/img/facebook.png" alt="facebook" />
                        <img class="w-20px mr-10px cursor-pointer" src="@/assets/img/youtube.png" alt="youtube" />
                        <img class="w-20px mr-10px cursor-pointer" src="@/assets/img/instagram.png" alt="instagram" />
                    </div>
                </div>
                <div class="flex grow flex-justify-center">
                    <div class="flex-col">
                        <p class="font-bold mt-10px">Информация о нас</p>
                        <p class="mt-10px">Текст</p>
                        <p class="mt-10px">Текст</p>
                        <p class="mt-10px">Текст</p>
                    </div>
                </div>
                <div class="flex grow flex-justify-center">
                    <div class="flex-col">
                        <p class="font-bold mt-10px">Наши услуги</p>
                        <p class="mt-10px cursor-pointer">Ремонтные работы</p>
                        <p class="mt-10px cursor-pointer">Дизайн-проект</p>
                        <p class="mt-10px cursor-pointer">Ремонт под ключ</p>
                    </div>
                </div>
                <div class="flex grow flex-justify-center">
                    <div class="flex-col">
                        <p class="font-bold mt-10px">Контакты</p>
                        <p class="mt-10px">+7(999)555-12-34</p>
                        <p class="mt-10px">test@mail.ru</p>
                    </div>
                </div>
                <div class="flex grow flex-justify-center">
                    <div class="flex-col">
                        <p class="font-bold mt-10px">Адрес</p>
                        <p class="mt-10px">г. Волгоград, ул.</p>
                        <p class="mt-10px">Волгоградская 1</p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
</template>


<script setup lang="ts">
import { ref } from "vue";
</script>


<style scoped>
footer {
    flex-grow: 0;
    position:relative;
}

footer .contact-form {
    position: absolute;
    display: flex;
    justify-content: space-between;
    height: 340px;
    width: 70%;
    background: #cdeae1;
    top: -170px;
    right: 15%;
    padding: 20px;
}

footer .contact-form .phone {
    display: block;
    margin-bottom: 5px;
    font-size: x-large;
    font-weight: bold;
}

footer form input {
    height: 100%;
    font-size: x-large;
    width: 70%;
    border-style: none;
}

footer form input:focus {
    outline: none;
}

footer form .sendBtn {
    height: 100%;
    padding: 10px 25px;
    cursor: pointer;
    background: #fff;
    margin-left: 15px;
    border-width: 1px;
    transition: 0.25s box-shadow;
}

footer form .sendBtn:hover {
    cursor: pointer;
    background: #fff;
    box-shadow: 2px 3px 6px rgba(0, 0, 0, 0.3);
}
</style>