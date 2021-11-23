<template>
  <v-container>
    <v-app-bar app>
      <h1 class="Full-SE">Software Engineering</h1>
      <h1 class="Small-SE">SE</h1>
      <v-spacer></v-spacer>
      <v-btn class="ma-2" outlined color="red" @click="LogOut()">
        Log-out
      </v-btn>
    </v-app-bar>
  </v-container>
</template>

<script>
export default {
  name: "Header",
  methods: {
    LogOut() {
      console.log("LogOut!");
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
