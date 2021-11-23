<template>
  <v-row class="login">
    <v-form ref="form" v-model="valid" lazy-validation class="form">
      <v-text-field
        v-model="username"
        :counter="8"
        :rules="studentNumberRules"
        label="StudentNumber e.g. S1234567"
        required
        class="text-field"
      ></v-text-field>

      <v-text-field
        v-model="password"
        :rules="passwordRules"
        label="Password"
        required
      ></v-text-field>
      <!-- <v-btn :disabled="!valid" color="success" class="mr-4" @click="validate">
        Log In
      </v-btn> -->
      <v-spacer></v-spacer>
      <v-btn :disabled="!valid" color="success" class="mr-4" @click="validate">
        LogIn
      </v-btn>
    </v-form>
  </v-row>
</template>

<script>
export default {
  data: () => ({
    valid: true,
    username: "",
    studentNumberRules: [
      (v) => !!v || "Student Number is required!",
      (v) =>
        (v && v.length == 8) ||
        "Student number consists be exact 8 characters!",
    ],
    password: "",
    passwordRules: [
      (v) => !!v || "Password is required!",
      (v) =>
        (v && v.length >= 8) || "Password consists of at least 8 characters!",
    ],
  }),

  methods: {
    validate() {
      this.$refs.form.validate();
    },
    reset() {
      this.$refs.form.reset();
    },
    resetValidation() {
      this.$refs.form.resetValidation();
    },
  },
};
</script>

<style>
.login {
  justify-content: center;
  align-items: center;
}
.text-field {
  width: 40vw;
}
</style>
