<template>
  <AppHeader></AppHeader>

  <div class="flex flex-wrap ">
    <div class="container mx-auto sm:px-4 mt-5 pt-5 pb-3  mb-5 main-container bg-white border border-gray-400 rounded">
      <div class="flex flex-wrap ">
        <div class="sm:w-4/5 pr-4 pl-4 mx-auto">
          <form @submit.prevent="letUserIn" novalidate>

            <div v-show="step === 1" class="step">
              <h3 class="mb-3 font-weight-light">Вход на сайт</h3>

              <div class="mb-3">
                <label for="exampleInputEmail1" class="form-label">Ваш логин</label>
                <input type="email" class="block appearance-none w-full py-1 px-2 mb-1 text-base leading-normal bg-white text-gray-800 border border-gray-200 rounded" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Введите email или номер телефона">
              </div>

              <div class="mb-3">
                <label for="exampleInputPassword1" class="form-label">Пароль</label>
                <div class="relative flex items-stretch w-full">
                  <input :type="passIsHidden1 ? 'password' : 'text'" class="block appearance-none w-full py-1 px-2 mb-1 text-base leading-normal bg-white text-gray-800 border border-gray-200 rounded" id="exampleInputPassword1" placeholder="Введите пароль">
                  <div @click="changePasswordType(1)" class="input-group-append" id="eye1">
                    <span class="input-group-text cumancen  text-sm h-full"><i :class="passIsHidden1 ? 'fas fa-eye' : 'fas fa-eye-slash'"></i></span>
                  </div>
                </div>
              </div>

              <div class="mb-3 relative block mb-2">
                <input type="checkbox" class="absolute mt-1 -ml-6" id="exampleCheck1">
                <label class="text-gray-700 pl-6 mb-0" for="exampleCheck1">Запомнить пароль</label>
              </div>

              <div class="flex flex-wrap ">
                <div class="relative flex-grow max-w-full flex-1 px-4">
                  <button type="submit" class="color-btn inline-block align-middle text-center select-none border font-normal whitespace-no-wrap rounded py-1 px-3 leading-normal no-underline bg-blue-600 text-white hover:bg-blue-600">&nbsp;&nbsp;&nbsp;&nbsp;Войти&nbsp;&nbsp;&nbsp;&nbsp;</button>
                </div>

                <div class="relative flex-grow max-w-full flex-1 px-4 text-end">
                  <div @click="forgotPassword" id="forgotPassword" class="block mt-1">Забыли пароль?</div>
                </div>
              </div>
              <hr>

              <div id="signUp" class="block mt-1 mt-3 text-justify">Всё ещё не зарегистрированы на сайте? <a href="#">Регистрация.</a></div>
            </div>

            <div v-show="step === 2" class="step">
              <h3 class="mb-3 font-weight-light">Востановление пароля</h3>

              <div class="mb-3 mt-3">
                <label for="exampleInputEmail1" class="form-label">Электронная почта</label>
                <input type="email" class="block appearance-none w-full py-1 px-2 mb-1 text-base leading-normal bg-white text-gray-800 border border-gray-200 rounded" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Введите email">
              </div>

              <div class="mb-3">
                <label for="exampleInputPassword1" class="form-label">Новый пароль</label>
                <div class="relative flex items-stretch w-full">
                  <input :type="passIsHidden2 ? 'password' : 'text'" class="block appearance-none w-full py-1 px-2 mb-1 text-base leading-normal bg-white text-gray-800 border border-gray-200 rounded" id="exampleInputPassword2" placeholder="Введите новый пароль">
                  <div @click="changePasswordType(2)" class="input-group-append" id="eye2">
                    <span class="input-group-text cumancen  text-sm h-full"><i :class="passIsHidden2 ? 'fas fa-eye' : 'fas fa-eye-slash'"></i></span>
                  </div>
                </div>
              </div>

              <div class="mb-4">
                <label for="exampleInputPassword1" class="form-label">Повторите пароль</label>
                <div class="relative flex items-stretch w-full">
                  <input :type="passIsHidden3 ? 'password' : 'text'" class="block appearance-none w-full py-1 px-2 mb-1 text-base leading-normal bg-white text-gray-800 border border-gray-200 rounded" id="exampleInputPassword3" placeholder="Введите новый пароль еще раз">
                  <div @click="changePasswordType(3)" class="input-group-append" id="eye3">
                    <span class="input-group-text cumancen text-sm h-full"><i :class="passIsHidden3 ? 'fas fa-eye' : 'fas fa-eye-slash'"></i></span>
                  </div>
                </div>
              </div>

              <div class="flex flex-wrap  mb-4">
                <div class="relative flex-grow max-w-full flex-1 px-4 mx-auto">
                  <button type="submit" class="bg-altmain border-altmain inline-block align-middle text-center select-none border font-normal whitespace-no-wrap rounded py-1 px-3 leading-normal no-underline bg-blue-600 text-white hover:bg-blue-600">&nbsp;&nbsp;&nbsp;Восстановить&nbsp;&nbsp;&nbsp;</button>
                </div>

                <div class="relative flex-grow max-w-full flex-1 px-4 mx-auto text-end">
                  <div @click="signIn" id="signIn" class="block text-altmain mt-1 text-blue-600 text-base"><a href="">Продолжить вход</a></div>
                </div>
              </div>
              <hr>

            </div>

          </form>
        </div>
      </div>
    </div>
  </div>

  <AppFooter></AppFooter>
</template>

<script>
import AppHeader from '../src/components/AppHeader.vue'
import AppFooter from '../src/components/AppFooter.vue'

export default {
  data() {
    return {
      step : 1,
      passIsHidden1 : true,
      passIsHidden2 : true,
      passIsHidden3 : true,

    }
  },
  methods: {
    forgotPassword() {
      this.step = 2
    },
    signIn() {
      this.step = 1
    },
    letUserIn() {
      //something
    },
    changePasswordType(num) {
      if (num === 1) {
        this.passIsHidden1 = !this.passIsHidden1
      } else if (num === 2) {
        this.passIsHidden2 = !this.passIsHidden2
      } else if (num === 3) {
        this.passIsHidden3 = !this.passIsHidden3
      }
    }
  },
  components:{
    AppHeader,
    AppFooter
  }
}
</script>

<style scoped>
  .main-container{
      max-width: 400px;
  }
</style>
