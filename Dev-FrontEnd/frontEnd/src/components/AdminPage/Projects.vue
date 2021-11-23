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
            <v-form
              ref="form"
              v-model="valid"
              lazy-validation
            >
              <v-text-field
                :value = project.title
                
                :counter="100"
                :rules="project_nameRules"
                label="Project"
                required
                
              ></v-text-field>

              <v-text-field
                :value = project.client
                :counter="100"
                :rules="clientRules"
                label="Client"
                required
              ></v-text-field>

              <v-col >
                <v-textarea
                  full-width = true
                  :value = project.descr
                  :counter="1000"
                  :rules="descriptionRules"
                  label="Description"
                  required
                ></v-textarea>
              ></v-col>

              <!-- <v-select
                v-model="select"
                :items="items"
                :rules="[v => !!v || 'Item is required']"
                label="Item"
                required
              ></v-select>

              <v-checkbox
                v-model="checkbox"
                :rules="[v => !!v || 'You must agree to continue!']"
                label="Do you agree?"
                required
              ></v-checkbox> -->

              <v-btn
                :disabled="!valid"
                color="success"
                class="mr-4"
                @click="edit"
              >
                Validate
              </v-btn>

            
            </v-form>
          
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
      edit: true,
      project_name: '',
      project_nameRules: [
        v => !!v || 'Project name is required',
        v => (v && v.length <= 100) || 'Project name must be less than 100 characters',
      ],
      client: '',
      clientRules: [
        v => !!v || 'Client name is required',
        v => (v && v.length <= 100) || 'Client name must be less than 100 characters',
      ],
      description: '',
      descriptionRules: [
        v=> !!v || 'Description name is required',
        v => (v && v.length <= 1000) || 'Description must be less than 1000 characters',
      ],
    };
  },
  methods: {
    async fetchProjects() {
      const res = await fetch("http://localhost:3001/project_page");
      const data = await res.json();
      console.log(data);
      return data;
    },
    validate () {
      this.$refs.form.validate()
    },

  },
  async created() {
    this.projects = await this.fetchProjects();
  },
};
</script>

<style scoped></style>
