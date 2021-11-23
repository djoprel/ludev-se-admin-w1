import Vue from "vue";
import App from "./App.vue";
import vuetify from "./plugins/vuetify";
import VueRouter from "vue-router";
import Admin from "./Views/AdminPage.vue";
import Home from "./Views/HomePage.vue";
import AdminDashboard from "./components/AdminPage/Dashboard.vue";
import AdminProjects from "./components/AdminPage/Projects.vue";
import AdminTeams from "./components/AdminPage/Teams.vue";
import AdminGrades from "./components/AdminPage/Grades.vue";
import AdminUsers from "./components/AdminPage/Users.vue";
import AdminSettings from "./components/AdminPage/Settings.vue";

Vue.config.productionTip = false;
Vue.use(VueRouter);

const routes = [
  {
    path: "/admin",
    component: Admin,
    children: [
      {
        path: "",
        alias: ["dashboard"],
        component: AdminDashboard,
      },
      {
        path: "projects",
        component: AdminProjects,
      },
      {
        path: "teams",
        component: AdminTeams,
      },
      {
        path: "grades",
        component: AdminGrades,
      },
      {
        path: "users",
        component: AdminUsers,
      },
      {
        path: "settings",
        component: AdminSettings,
      },
    ],
  },
  { path: "/", component: Home },
];

const router = new VueRouter({
  routes,
  mode: "history",
});

new Vue({
  vuetify,
  router,
  render: (h) => h(App),
}).$mount("#app");
