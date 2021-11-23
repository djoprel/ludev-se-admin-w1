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
<<<<<<< HEAD
=======
      <v-btn @click="created">TEST</v-btn>
>>>>>>> 5769857346d375dca6231bc3e153d714c3dfeb93
    </v-form>
  </v-row>
</template>

<script>
<<<<<<< HEAD
// import axios from "axios";

=======
>>>>>>> 5769857346d375dca6231bc3e153d714c3dfeb93
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
<<<<<<< HEAD
      if (this.$refs.form.validate()) {
        console.log("meui");
        this.login();
        // const requestOptions = {
        //   method: 'POST',
        //   headers: { 'Content-Type': 'application/json' },
        //   body: JSON.stringify({
        //   username: "wat denke zelf",
        //   password: "mja raar",
        //   privileges: 0
        //   })
        // };
        // axios
        //   .post("http://localhost:3001/Login", {
        //     params: {
        //       username: "username",
        //       password: "password",
        //       privileges: 0,
        //     },
        //   })
        //   .then((response) => (this.responseData = response.data));
        //catch((error) => {});
        // axios
        //   .post("http://localhost:3001/Login", {
        //     username: "s2592991",
        //     password: "Macquine",
        //     privileges: 0,
        //   })
        //   .then(function(response) {
        //     console.log(response);
        //   })
        //   .catch(function(error) {
        //     console.log(error);
        //   });
        // fetch("http://localhost:3001/Projects", {
        //   method: "POST",
        //   headers: {
        //     "Content-Type": "application/json",
        //   },
        //   body: JSON.stringify({
        //     username: "s2592991",
        //     password: "Macquine",
        //     privileges: 0,
        //   }),
        // })
        //   .then((response) => response.json())
        //   .then((data) => {
        //     console.log(data);
        //   })
        //   .catch((error) => {
        //     console.log(error);
        //   });
        //fetch("http://localhost:3001/Login", requestOptions)
        //this.authenticated = this.authenticate();
        //this.$router.push("/admin/dashboard");
      }
=======
      this.$refs.form.validate();
>>>>>>> 5769857346d375dca6231bc3e153d714c3dfeb93
    },
    reset() {
      this.$refs.form.reset();
    },
    resetValidation() {
      this.$refs.form.resetValidation();
    },
<<<<<<< HEAD
    login() {
=======
    created() {
>>>>>>> 5769857346d375dca6231bc3e153d714c3dfeb93
      // Simple POST request with a JSON body using fetch
      const requestOptions = {
        method: "POST",
        headers: { "Content-Type": "application/json" },
<<<<<<< HEAD
        body: JSON.stringify({
          username: "username",
          password: "password",
          privileges: "0",
        }),
      };
      fetch("http://localhost:3001/Login", requestOptions)
        .then((response) => response.json())
        .then((data) => (this.postId = data.id));
    },
    async authenticate() {
      const requestOptions = {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          username: this.username,
          password: this.password,
          privileges: 0,
        }),
      };
      const res = await fetch("http://localhost:3001/Login", requestOptions);
      const data = await res.json();
      console.log(data);
      return data;
    },
=======
        body: JSON.stringify({ title: "Vue POST Request Example" }),
      };
      fetch("https://jsonplaceholder.typicode.com/posts", requestOptions)
        .then((response) => response.json())
        .then((data) => (this.postId = data.id));
    },
>>>>>>> 5769857346d375dca6231bc3e153d714c3dfeb93
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
