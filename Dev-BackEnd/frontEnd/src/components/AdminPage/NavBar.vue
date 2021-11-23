<template>
  <div>
    <v-navigation-drawer app permanent>
      <v-container>
        <v-list-item>
          <v-list-item-content>
            <v-list-item-title class="text-h6">
              Admin Page
            </v-list-item-title>
            <v-list-item-subtitle> </v-list-item-subtitle>
          </v-list-item-content>
        </v-list-item>
      </v-container>
      <v-divider></v-divider>

      <v-list dense nav>
        <v-list-item
          v-for="item in items"
          :key="item.title"
          link
          @click="Switch(item.title)"
        >
          <v-list-item-icon>
            <v-icon>{{ item.icon }}</v-icon>
          </v-list-item-icon>

          <v-list-item-content>
            <v-list-item-title>{{ item.title }}</v-list-item-title>
          </v-list-item-content>
        </v-list-item>

        <!-- <v-list-item class="red" @click="LogOut()">
          <v-list-item-icon>
            <v-icon>mdi-logout</v-icon>
          </v-list-item-icon>
          <v-list-item-content>
            <v-list-item-title>LOG OUT</v-list-item-title>
          </v-list-item-content>
        </v-list-item> -->
      </v-list>
      <template v-slot:append>
        <div class="pa-2">
          <v-btn block class="red" @click="LogOut()">
            Logout
          </v-btn>
        </div>
      </template>
    </v-navigation-drawer>
  </div>
</template>

<script>
export default {
  name: "NavBar",
  components: {},
  data() {
    return {
      items: [
        { title: "Dashboard", icon: "mdi-view-dashboard-outline" },
        { title: "Projects", icon: "mdi-database-outline" },
        { title: "Teams", icon: "mdi-account-group-outline" },
        { title: "Grades", icon: "mdi-numeric" },
        { title: "Users", icon: "mdi-badge-account-horizontal-outline" },
        { title: "Settings", icon: "mdi-cog-outline" },
      ],
    };
  },
  methods: {
    LogOut() {
      console.log("LogOut!");
    },
    Switch(title) {
      let route = "/admin/" + title;
      this.$router.push({ path: route });
    },
  },
};
</script>

<style scoped>
.v-btn {
  max-width: 128px;
}
</style>
