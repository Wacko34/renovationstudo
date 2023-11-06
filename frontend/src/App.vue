<template>
  <AppHeader></AppHeader>

  <div v-show="needPasswordChande">
    <AppForgetPasswordForm @continueSigningIn="OnContinueSigningIn" ></AppForgetPasswordForm>
  </div>

  <div v-show="!needPasswordChande">
    <AppSignInForm @requirePasswordChange="OnPasswordRequireChange"></AppSignInForm>
  </div>


  <AppFooter></AppFooter>
</template>

<script>
import AppHeader from '../src/components/AppHeader.vue'
import AppFooter from '../src/components/AppFooter.vue'
import AppSignInForm from './components/AppSignInForm.vue'
import AppForgetPasswordForm from './components/AppForgetPasswordForm.vue'

export default {
  components:{
    AppHeader,
    AppFooter,
    AppSignInForm,
    AppForgetPasswordForm
  },
  data(){
    return{
      needPasswordChande: false,
      user: {
        signed: false
      }
    }
  },
  methods:{
    OnPasswordRequireChange() {
      this.needPasswordChande = true;
    },
    OnContinueSigningIn() {
      this.needPasswordChande = false;
    },
  }
}
</script>

<style scoped>
  .main-container{
      max-width: 400px;
  }
</style>
