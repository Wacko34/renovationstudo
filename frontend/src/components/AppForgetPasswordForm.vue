<template>
  <div class="flex flex-wrap">
    <div class="container mx-auto sm:px-3 mt-5 pt-5 pb-3 mb-5 main-container border border-gray rounded">
      <div class="flex flex-wrap ">
        <div class="sm:w-4/5 pr-2 pl-2 mx-auto">
          <form
            novalidate
            @submit.prevent="letUserIn"
          >
            <div
              v-show="step === 1"
              class="step"
            >
              <h1 class="mb-3 text-center text-lg font-bold mt-2">
                Востановление пароля
              </h1>

              <h3 class="mb-7 text-center font-weight-light w-11/12 mx-auto text-sm text-darkgray">
                Введите адрес электронной почты, чтобы сменить пароль
              </h3>

              <div class="mb-3 mt-3">
                <input
                  id="exampleInputEmail1"
                  type="email"
                  class="block appearance-none w-full py-1 px-2 mb-1 text-base leading-normal bg-white text-gray-800 border border-gray-200 rounded"
                  aria-describedby="emailHelp"
                  placeholder="Email"
                >
              </div>

              <div class="flex flex-wrap mt-10">
                <button
                  type="submit"
                  class="bg-purchase border-purchase w-4/5 mx-auto inline-block align-middle text-center select-none border font-normal whitespace-no-wrap rounded py-1 px-3 leading-normal no-underline bg-blue-600 text-black hover:bg-main"
                  @click="newPassword"
                >
                  Восстановить
                </button>
              </div>

              <div class="flex flex-wrap mt-1 text-center">
                <div
                  id="signIn"
                  class="block text-sm mx-auto mt-1 text-darkgray"
                  @click="signIn"
                >
                  <a href="">Вернуться к станице авторизации</a>
                </div>
              </div>
            </div>


            <div
              v-show="step === 2"
              class="step mb-4"
            >
              <h1 class="mb-3 text-center text-lg font-bold mt-2">
                Востановление пароля
              </h1>

              <h3 class="mb-7 text-center font-weight-light w-11/12 mx-auto text-sm text-darkgray">
                Введите новый пароль и подтвердите его
              </h3>

              <div class="mb-3">
                <div class="relative flex items-stretch w-full">
                  <input
                    :type="passIsHidden1 ? 'password' : 'text'"
                    class="block appearance-none w-full py-1 px-2 mb-1 text-base leading-normal bg-white text-gray-800 border border-gray-200 rounded"
                    placeholder="Новый пароль"
                  >
                  <div
                    id="eye1"
                    class="input-group-append absolute inset-y-0 right-0 pr-3 mt-1.5 flex items-center leading-5"
                    @click="changePasswordType(1)"
                  >
                    <span class="input-group-text cumancen  text-sm h-full"><i :class="passIsHidden1 ? 'fas fa-eye' : 'fas fa-eye-slash'" /></span>
                  </div>
                </div>
              </div>

              <div class="mb-1.5">
                <div class="relative flex items-stretch w-full">
                  <input
                    :type="passIsHidden2 ? 'password' : 'text'"
                    class="block appearance-none w-full py-1 px-2 mb-1 text-base leading-normal bg-white text-gray-800 border border-gray-200 rounded"
                    placeholder="Повторите ввод"
                  >
                  <div
                    id="eye1"
                    class="input-group-append absolute inset-y-0 right-0 pr-3 mt-1.5 flex items-center leading-5"
                    @click="changePasswordType(2)"
                  >
                    <span class="input-group-text cumancen  text-sm h-full"><i :class="passIsHidden2 ? 'fas fa-eye' : 'fas fa-eye-slash'" /></span>
                  </div>
                </div>
              </div>

              <div class="flex flex-wrap mt-7 mb-2">
                <button
                  type="submit"
                  class="bg-main border-purchase w-4/5 mx-auto inline-block align-middle text-center select-none border font-normal whitespace-no-wrap rounded py-1 px-3 leading-normal no-underline bg-blue-600 text-black hover:bg-main"
                  @click="submitNewPassword"
                >
                  Сменить пароль
                </button>
              </div>
            </div>


            <div
              v-show="step === 3"
              class="step  mb-10"
            >
              <h1 class="mb-3 text-center text-lg font-bold mt-2">
                Пароль изменен!
              </h1>

              <h3 class="mb-7 text-center font-weight-light w-11/12 mx-auto text-sm text-darkgray">
                Теперь вы можете использовать новый пароль, чтобы войти в свой аккаунт
              </h3>

              <div class="flex flex-wrap mt-10 mb-2">
                <button
                  type="submit"
                  class="bg-main border-purchase w-4/5 mx-auto inline-block align-middle text-center select-none border font-normal whitespace-no-wrap rounded py-1 px-3 leading-normal no-underline bg-blue-600 text-black hover:bg-main"
                  @click="signIn"
                >
                  Авторизоваться
                </button>
              </div>
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
      passIsHidden1 : true,
      passIsHidden2 : true,

    }
  },
  methods: {
    newPassword() {
      this.step = 2
    },
    signIn() {
        this.$emit('continueSigningIn', {
            needPasswordChande: false
        })
    },
    letUserIn() {
      //something
    },
    changePasswordType(num) {
      if (num === 1) {
        this.passIsHidden1 = !this.passIsHidden1
      } else if (num === 2) {
        this.passIsHidden2 = !this.passIsHidden2
      } 
    },
    submitNewPassword() {
        this.step = 3
    }
  }
}
</script>
<style scoped>
  .main-container{
      max-width: 330px;
  }
</style>