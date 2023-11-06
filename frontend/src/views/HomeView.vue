<template>
  <div v-show="needPasswordChande">
    <AppForgetPasswordForm @continueSigningIn="OnContinueSigningIn"></AppForgetPasswordForm>
  </div>

  <div v-show="!needPasswordChande">
    <AppSignInForm @requirePasswordChange="OnPasswordRequireChange"></AppSignInForm>
  </div>
</template>

<script lang="ts">
import AppSignInForm from '@/components/AppSignInForm.vue'
import AppForgetPasswordForm from '@/components/AppForgetPasswordForm.vue'

export default {
  components: {
    AppSignInForm,
    AppForgetPasswordForm
  },
  data() {
    return {
      needPasswordChande: false,
      user: {
        signed: false
      }
    }
  },
  methods: {
    OnPasswordRequireChange() {
      this.needPasswordChande = true
    },
    OnContinueSigningIn() {
      this.needPasswordChande = false
    }
  }
}
</script>
