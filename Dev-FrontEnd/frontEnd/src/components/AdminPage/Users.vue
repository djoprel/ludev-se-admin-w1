<template>
  <v-container class="grey lighten-5">
    <v-sparkline
      :value="value"
      :gradient="gradient"
      :smooth="radius || false"
      :padding="padding"
      :line-width="width"
      :stroke-linecap="lineCap"
      :gradient-direction="gradientDirection"
      :fill="fill"
      :type="type"
      :auto-line-width="autoLineWidth"
      auto-draw
    ></v-sparkline>
    <h2>Users</h2>
    <v-card class="mx-auto" max-width="100%" tile>
      <v-list-item v-for="user in users" :key="user.uid" three-line>
        <v-list-item-content>
          <!-- <v-icon v-text="item.icon"></v-icon> -->
          <v-list-item-title> ID:{{ user.uid }} - John Doe</v-list-item-title>
          <v-list-item-subtitle
            >Team: {{ user.tid }} - {{ user.teamname }}
          </v-list-item-subtitle>
          <v-list-item-subtitle>Study: {{ user.study }} </v-list-item-subtitle>
        </v-list-item-content>
      </v-list-item>
    </v-card>
  </v-container>
</template>

<script>
const gradients = [
  ["#222"],
  ["#42b3f4"],
  ["red", "orange", "yellow"],
  ["purple", "violet"],
  ["#00c6ff", "#F0F", "#FF0"],
  ["#f72047", "#ffd200", "#1feaea"],
];

export default {
  name: "Projects",
  components: {},
  data() {
    return {
      right: null,
      width: 2,
      radius: 10,
      padding: 8,
      lineCap: "round",
      gradient: gradients[5],
      value: [0, 2, 5, 9, 5, 10, 3, 5, 0, 0, 1, 8, 2, 9, 0],
      gradientDirection: "top",
      gradients,
      fill: false,
      type: "trend",
      autoLineWidth: false,
      users: [],
    };
  },
  methods: {
    async fetchUsers() {
      const res = await fetch("http://localhost:3001/users_page");
      const data = await res.json();
      console.log(data);
      return data;
    },
  },
  async created() {
    this.users = await this.fetchUsers();
  },
};
</script>

<style scoped></style>
