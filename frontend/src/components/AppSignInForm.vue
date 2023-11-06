<template>
    <div class="flex flex-wrap">
    <div class="container mx-auto sm:px-3 mt-5 pt-5 pb-3 mb-5 main-container border border-gray rounded">
      <div class="flex flex-wrap ">
        <div class="sm:w-4/5 pr-2 pl-2 mx-auto">
          <form @submit.prevent="letUserIn" novalidate>
              <h1 class="mb-3 text-center text-lg font-bold mt-2">Авторизация</h1>

              <div class="mb-3 border border-lightgray rounded">
                <div class="flex flex-wrap">
                    <div class="w-1/2 text-center">
                        <div id="div-switch" :class="email ? 'm-0.5 bg-main rounded pt-1 pb-1' : 'm-0.5 bg-white rounded pt-1 pb-1 hover:bg-grey'">
                            <a @click="changeInputLoginType()" type="button">Почта</a>
                        </div>
                    </div>
                    <div class="w-1/2 text-center">
                        <div id="div-switch" :class="!email ? 'm-0.5 bg-main rounded pt-1 pb-1' : 'm-0.5 bg-white rounded pt-1 pb-1 hover:bg-grey'">
                            <a @click="changeInputLoginType()" type="button">Телефон</a>
                        </div>
                    </div>
                </div>
              </div>

              <div class="mb-4">
                <input :type="email ? 'email' : 'phone'" class="block appearance-none w-full py-1 px-2 mb-1 text-base leading-normal bg-white text-gray-800 border border-gray-200 rounded"  :placeholder="email ? 'Почта' : 'Телефон'">
              </div>

              <div class="mb-1.5">
                <div class="relative flex items-stretch w-full">
                  <input :type="passIsHidden ? 'password' : 'text'" class="block appearance-none w-full py-1 px-2 mb-1 text-base leading-normal bg-white text-gray-800 border border-gray-200 rounded" placeholder="Введите пароль">
                  <div @click="changePasswordType()" class="input-group-append absolute inset-y-0 right-0 pr-3 mt-1.5 flex items-center leading-5" id="eye1">
                    <span class="input-group-text cumancen  text-sm h-full"><i :class="passIsHidden ? 'fas fa-eye' : 'fas fa-eye-slash'"></i></span>
                  </div>
                  
                </div>
              </div>

            <div class="flex items-start mb-3">
                    <div class="flex items-center h-5">
                        <input id="remember" aria-describedby="remember" type="checkbox" class="w-3 h-3 border border-gray-300 rounded bg-gray-50 focus:ring-3 focus:ring-main dark:bg-gray dark:border-gray dark:focus:ring-main dark:ring-offset-gray" required="">
                    </div>
                    <div class="ml-1.5 text-sm">
                        <label for="remember" class="text-gray-500 dark:text-gray-300">Запомнить меня</label>
                    </div>
            </div>

              <div class="flex flex-wrap mb-1.5 text-center">
                <div class="relative flex-grow max-w-full flex-1">
                  <div @click="forgotPassword" id="forgotPassword" class="block mt-1 text-sm">Забыли пароль?</div>
                </div>
              </div>


              <div class="flex flex-wrap mb-2 text-center">
                <button type="submit" class="w-4/5 mx-auto h-9 color-btn inline-block align-middle text-center select-none border border-none font-normal whitespace-no-wrap rounded leading-normal no-underline bg-purchase hover:bg-gray">Войти</button>
              </div>

              <div class="flex flex-wrap mb-3 text-center">
                <button type="submit" class="w-4/5 mx-auto h-9 color-btn inline-block align-middle text-center select-none border font-normal whitespace-no-wrap rounded leading-normal no-underline bg-white hover:bg-purchase hover:text-white border-main text-main">Зарегестрироваться</button>
              </div>

          </form>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
        step : 1,
        passIsHidden : true,
        email : true,
    }
  },
  methods: {
    forgotPassword() {
        this.$emit('requirePasswordChange', {
            needPasswordChande: true
        })
    }, 
    signIn() {
      this.step = 1
    },
    letUserIn() {
      //something
    },
    changePasswordType() {
        this.passIsHidden = !this.passIsHidden
    },
    changeInputLoginType() {
        this.email = !this.email
    }
  }
}
</script>
<style scoped>
  .main-container{
      max-width: 320px;
  }
  #div-switch:hover{
    background-color: lightgray;
  }
</style>