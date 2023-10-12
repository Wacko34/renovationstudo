<template>
  <div class="container mt-5 pt-3 pb-3 main-container">
    <div class="row">
      <div class="col-sm-10 mx-auto">
        <form @submit.prevent="letUserIn" novalidate>

          <div v-show="step === 1" class="step">
            <h3 class="mb-3 font-weight-light">Вход на сайт</h3>

            <div class="mb-3">
              <label for="exampleInputEmail1" class="form-label">Ваш логин</label>
              <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Введите email или номер телефона">
            </div>

            <div class="mb-3 showing-stealth">
              <label for="exampleInputPassword1" class="form-label">Пароль</label>
              <div class="input-group">
                <input :type="passIsHidden1 ? 'password' : 'text'" class="form-control" id="exampleInputPassword1" placeholder="Введите пароль">
                <div @click="changePasswordType(1)" class="input-group-append" id="eye1">
                  <span class="input-group-text cumancen"><i :class="passIsHidden1 ? 'fas fa-eye' : 'fas fa-eye-slash'"></i></span>
                </div>
              </div>
            </div>

            <div class="mb-3 form-check">
              <input type="checkbox" class="form-check-input" id="exampleCheck1">
              <label class="form-check-label" for="exampleCheck1">Запомнить пароль</label>
            </div>

            <div class="row">
              <div class="col">
                <button type="submit" class="color-btn btn btn-primary">&nbsp;&nbsp;&nbsp;&nbsp;Войти&nbsp;&nbsp;&nbsp;&nbsp;</button>
              </div>

              <div class="col text-end">
                <div @click="forgotPassword" id="forgotPassword" class="form-text">Забыли пароль?</div>
              </div>
            </div>
            <hr>

            <div id="signUp" class="form-text mt-3 text-justify">Всё ещё не зарегистрированы на сайте? <a href="#">Регистрация.</a></div>
          </div>

          <div v-show="step === 2" class="step">
            <h3 class="mb-3 font-weight-light">Востановление пароля</h3>

            <div class="mb-3 mt-3">
              <label for="exampleInputEmail1" class="form-label">Электронная почта</label>
              <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Введите email">
            </div>

            <div class="mb-3 showing-stealth">
              <label for="exampleInputPassword1" class="form-label">Новый пароль</label>
              <div class="input-group">
                <input :type="passIsHidden2 ? 'password' : 'text'" class="form-control" id="exampleInputPassword2" placeholder="Введите новый пароль">
                <div @click="changePasswordType(2)" class="input-group-append" id="eye2">
                  <span class="input-group-text cumancen"><i :class="passIsHidden2 ? 'fas fa-eye' : 'fas fa-eye-slash'"></i></span>
                </div>
              </div>
            </div>

            <div class="mb-4 showing-stealth">
              <label for="exampleInputPassword1" class="form-label">Повторите пароль</label>
              <div class="input-group">
                <input :type="passIsHidden3 ? 'password' : 'text'" class="form-control" id="exampleInputPassword3" placeholder="Введите новый пароль еще раз">
                <div @click="changePasswordType(3)" class="input-group-append" id="eye3">
                  <span class="input-group-text cumancen"><i :class="passIsHidden3 ? 'fas fa-eye' : 'fas fa-eye-slash'"></i></span>
                </div>
              </div>
            </div>

            <div class="row mb-4">
              <div class="col mx-auto">
                <button type="submit" class="color-btn btn btn-primary">&nbsp;&nbsp;&nbsp;Восстановить&nbsp;&nbsp;&nbsp;</button>
              </div>

              <div class="col mx-auto text-end">
                <div @click="signIn" id="signIn" class="form-text text-primary get-back-to-sign-in"><a href="">Продолжить вход</a></div>
              </div>
            </div>
            <hr>

          </div>

        </form>
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

  }
}
</script>

<style>
  .main-container{
      background-color: white;
      border-radius: 8px;
      width: 100%;
      max-width: 450px;
  }
  .get-back-to-sign-in{
    font-size: medium;
  }
  .showing-stealth{
  position: relative;
}

.showing-stealth span {
  font-size: 20px;
  height: 100%;
}

.showing-stealth span i.conceal-btn::before{
  content: "\f070";
}

.color-btn{
  background-color: #296751;
  border-color: #296751;
}

a{
  color: #296751;
}

</style>
