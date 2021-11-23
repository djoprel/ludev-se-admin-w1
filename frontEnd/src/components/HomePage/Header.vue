<template>
  <v-container>
    <v-app-bar app>
      <h1 class="Full-SE">Software Engineering</h1>
      <h1 class="Small-SE">SE</h1>
      <v-spacer></v-spacer>
      <v-btn class="ma-2" outlined color="blue" @click="Student()">
        Student
      </v-btn>
      <v-btn class="ma-2" outlined color="red" @click="Admin()">
        Admin
      </v-btn>
    </v-app-bar>
  </v-container>
</template>

<script>
export default {
  name: "Header",
  methods: {
    Admin() {
      // console.log("Admin");
      this.$emit("logInAdmin");
    },
    Student() {
      // console.log("Student");
    },
  },
};
</script>

<style>
.Full-SE {
  display: inline;
}
.Small-SE {
  display: none;
}

@media only screen and (max-width: 600px) {
  .Full-SE {
    display: none;
  }
  .Small-SE {
    display: inline;
  }
}
</style>
