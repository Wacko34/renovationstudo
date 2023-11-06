<template>
<div class="contact-form round">
    <div class="w-65%">
        <span class="phone">
            Оставьте ваш телефон
        </span>
        <span>
            И мы свяжемся с вами
        </span>
        <form @submit.prevent="send" class="mt-15px" action="" method="post">
            <div class="h-40px mt-30px">
                <label class="block mb-5px mt-10px" for="name">Ваше имя</label>
                <input v-model="name" class="round" type="text" name="name">
                <label class="block mb-5px mt-10px" for="phone">Номер телефона</label>
                <input v-model="phone" @input="formatPhoneNumber" class="round" type="tel" name="phone" maxlength="15">
                <label class="block mb-5px mt-10px" for="email">Почта</label>
                <input v-model="email" class="round" type="email" name="email">
                <button class="sendBtn round" type="submit">Отправить</button>
            </div>
        </form>
    </div>
    <div class="w-35%" style="display: flex; flex-direction: column; justify-content: flex-end;">
        <img class="w-90% flex-self-end" src="@/assets/img/post.png" alt="post" />
    </div>
</div>
</template>


<script setup lang="ts">
import { ref, computed } from "vue";

const startValidation = ref(false);
const name = ref('');
const phone = ref('');
const email = ref('');

const isValidName = computed(() => {
    return startValidation.value ? /^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/.test(phone.value) : null;
});

const isValidPhone = computed(() => {
    return startValidation.value ? /^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/.test(phone.value) : null;
});

const isValidEmail = computed(() => {
    return startValidation.value ? /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email.value) : null;
});

function formatPhoneNumber () {
    if (phone.value.length > 1) {
        if (phone.value.startsWith('+')) {
            phone.value = '+7' + phone.value.substring(2);
        } else {
            phone.value = '+7' + phone.value.substring(1);
        }
    }

    let formattedNumber = phone.value.replace(/[^\d+]/g, '');

    if (formattedNumber.length >= 1) {
    formattedNumber = formattedNumber.replace(/(\d{1})/, '$1-');
    }

    if (formattedNumber.length >= 3) {
    formattedNumber = formattedNumber.replace(/(\d{3})/, '$1-');
    }

    if (formattedNumber.length >= 7) {
    formattedNumber = formattedNumber.replace(/(\d{3})-(\d{3})/, '$1-$2-');
    }

    if (formattedNumber.endsWith("-")) {
    formattedNumber = formattedNumber.slice(0, -1);
    }

    phone.value = formattedNumber;
}

function send () {
    startValidation.value = true;
}
</script>


<style scoped>
.contact-form {
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

.contact-form .phone {
    display: block;
    margin-bottom: 5px;
    font-size: x-large;
    font-weight: bold;
}

form input {
    height: 100%;
    font-size: x-large;
    width: 70%;
    border-style: none;
}

form input:focus {
    outline: none;
}

form .sendBtn {
    height: 100%;
    padding: 10px 25px;
    cursor: pointer;
    background: #fff;
    margin-left: 15px;
    border-width: 1px;
    transition: 0.25s box-shadow;
}

form .sendBtn:hover {
    cursor: pointer;
    background: #fff;
    box-shadow: 2px 3px 6px rgba(0, 0, 0, 0.3);
}
</style>