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
    <h2>Projects</h2>
    <v-expansion-panels>
      <v-expansion-panel v-for="project in projects" :key="project.pid">
        <v-expansion-panel-header>
          <b> Project {{ project.pid }} - {{ project.title }} </b>
          <template v-slot:actions>
            <v-icon color="primary">
              $expand
            </v-icon>
          </template>
        </v-expansion-panel-header>
        <v-expansion-panel-content>
          <v-container> <b>Client:</b> {{ project.client }} </v-container>
          <v-container> <b>Description:</b> {{ project.descr }} </v-container>
          <v-container>
            <b>Number of Teams able to choose this project:</b>
            {{ project.max_available }}
            <v-progress-linear height="15" value="50" striped color="lime">
              {{ project.amount_available - project.max_available }}/
              {{ project.max_available }}
            </v-progress-linear>
            <v-container>
              <v-card-actions>
                <v-spacer></v-spacer>
                <v-btn text color=" grey accent-4" @click="reveal = true">
                  EDIT &ensp;
                  <v-icon @click="next">
                    mdi-wrench-outline
                  </v-icon>
                </v-btn>
              </v-card-actions>
            </v-container>
          </v-container>
        </v-expansion-panel-content>
      </v-expansion-panel>
    </v-expansion-panels>
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
      projects: [],
      reveal: false,
    };
  },
  methods: {
    async fetchProjects() {
      const res = await fetch("http://localhost:3001/project_page");
      const data = await res.json();
      console.log(data);
      return data;
    },
  },
  async created() {
    this.projects = await this.fetchProjects();
  },
};
</script>

<style scoped></style>
