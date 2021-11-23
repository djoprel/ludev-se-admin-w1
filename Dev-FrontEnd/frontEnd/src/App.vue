<template>
  <v-app>
    <!-- Sizes your content based upon application components -->
    <v-main>
      <!-- Provides the application the proper gutter -->
      <v-container fluid>
        <!-- If using vue-router -->
        <router-view></router-view>
      </v-container>
    </v-main>

    <v-footer app> </v-footer>
  </v-app>
</template>

//
<script>
// import HelloWorld from "./components/HelloWorld";
// import Header from "./components/HomePage/Header.vue";
// import Projects from "./components/HomePage/Projects.vue";
// import LogInAdmin from "./components/HomePage/LoginAdmin.vue";

export default {
  name: "App",
  props: {
    msg: String,
  },
  //   components: {
  //     // HelloWorld,
  //     Header,
  //     Projects,
  //     LogInAdmin,
  //   },

  //   data() {
  //     return {
  //       projects: [],
  //       overlayAdmin: true,
  //     };
  //   },

  //   methods: {
  //     async fetchProjects() {
  //       const res = await fetch("http://localhost:3001/Projects");
  //       const data = await res.json();
  //       console.log(data);
  //       return data;
  //     },
  //     showAdminLogIn() {
  //       this.overlayAdmin = !this.overlayAdmin;
  //     },
  //   },

  //   async created() {
  //     this.projects = await this.fetchProjects();
  //   },
  //   // id title client about
};
</script>

<style>
.closeLogin {
  margin-top: 10px;
  margin-right: 20px;
}
</style>
