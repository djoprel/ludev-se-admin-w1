<template>
  <div>
    <Header v-on:logInAdmin="showAdminLogIn()" />
    <v-overlay :absolute="absolute" :opacity="opacity" :value="overlayAdmin">
      <v-sheet rounded="rounded" elevation="10" height="50vh" width="75vw">
        <v-row>
          <v-spacer></v-spacer>
          <v-btn
            class="closeLogin"
            color="orange lighten-2"
            @click="overlayAdmin = false"
          >
            close
          </v-btn>
        </v-row>
        <LogInAdmin />
      </v-sheet>
    </v-overlay>
    <Projects :projects="projects" />
  </div>
</template>
<script>
// import HelloWorld from "./components/HelloWorld";
import Header from "./../components/HomePage/Header.vue";
import Projects from "./../components/HomePage/Projects.vue";
import LogInAdmin from "./../components/HomePage/LoginAdmin.vue";

export default {
  name: "HomePage",

  components: {
    // HelloWorld,
    Header,
    Projects,
    LogInAdmin,
  },

  data() {
    return {
      projects: [],
      overlayAdmin: true,
    };
  },

  methods: {
    async fetchProjects() {
      const res = await fetch("http://localhost:3001/Projects");
      const data = await res.json();
      console.log(data);
      return data;
    },
    showAdminLogIn() {
      this.overlayAdmin = !this.overlayAdmin;
    },
  },

  async created() {
    this.projects = await this.fetchProjects();
  },
  // id title client about
};
</script>

<style>
.closeLogin {
  margin-top: 10px;
  margin-right: 20px;
}
</style>
