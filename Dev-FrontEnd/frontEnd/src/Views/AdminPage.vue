<template>
  <v-app>
    <nav-bar />
    <router-view></router-view>
    <v-footer app> </v-footer>
  </v-app>
</template>

<script>
import NavBar from "../components/AdminPage/NavBar.vue";
export default {
  name: "AdminPage",
  components: {
    NavBar,
  },
  data() {
    return {};
  },
  methods: {},
};
</script>

<style scoped></style>
