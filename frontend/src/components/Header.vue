<template>
<header>
    <div class="row">
        <div class="left">
            <router-link to="/"><img class="w-200px" src="@/assets/img/logo.png" alt="logo" /></router-link>
            <div class="ml-50px">
                <CitySelector />
            </div>
        </div>
        <div class="right">
            <router-link to="/"><button class="loginBtn round" type="button">Войти</button></router-link>
        </div>
    </div>
    <div class="menu">
        <div class="row flex justify-between items-center h-full w-70%">
            <button>Услуги</button>
            <button>Портфолио</button>
            <button>Отзывы</button>
            <button>О нас</button>
            <button class="green round">Заказать ремонт</button>
        </div>
    </div>
</header>
</template>

<script setup lang="ts">
import CitySelector from './CitySelector.vue'
</script>

<style scoped>
header > .row {
    display: flex;
    justify-content: space-between;
    padding: 20px 80px;
}

header > .row > .left, .right {
    display: flex;
    align-items: center;
}

header > .row > .right .loginBtn {
    padding: 10px 25px;
    cursor: pointer;
    background: #fff;
    border-width: 1px;
    transition: 0.25s box-shadow;
}

header > .row > .right .loginBtn:hover {
    cursor: pointer;
    background: #fff;
    box-shadow: 2px 3px 6px rgba(0, 0, 0, 0.3);
}

header > .menu  {
    display: flex;
    justify-content: center;
    height: 50px;
    background: #8dd3bb;
}

header > .menu > .row > button {
    padding: 10px 25px;
    border-style: none;
    cursor: pointer;
}

header > .menu > .row > button:not(.green) {
    background: none;
    transition: 0.05s border-bottom;
}

header > .menu > .row > button:not(.green):hover {
    border-bottom: solid  3px;
}

header > .menu > .row > button.green {
    background: rgba(255, 255, 255, 0.5);
    transition: 0.25s box-shadow;
}

header > .menu > .row > button.green:hover {
    box-shadow: 2px 3px 6px rgba(0, 0, 0, 0.3);
}
</style>