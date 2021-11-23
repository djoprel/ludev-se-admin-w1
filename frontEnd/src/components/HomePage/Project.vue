<template>
  <!-- <v-row>
    <v-img
      height="10%"
      src="https://cdn.vuetifyjs.com/images/cards/server-room.jpg"
    >
    </v-img>
    <h3>{{ project.title }}</h3>
    <p>{{ project.about }}</p>
  </v-row> -->
  <!-- <div class="project">
    <h3>{{ project.title }}</h3>
    <p>{{ project.about }}</p>
  </div> -->
  <v-card class="mx-auto" width="75vw" max-width="500px">
    <v-img
      src="https://cdn.vuetifyjs.com/images/cards/sunshine.jpg"
      height="200px"
    ></v-img>

    <v-card-title>
      <h3>{{ project.title }}</h3>
    </v-card-title>
    <v-divider></v-divider>
    <v-card-subtitle>
      <p>{{ project.client }}</p>
    </v-card-subtitle>

    <v-card-actions>
      <v-btn
        @click="show = !show"
        block
        class="center"
        color="orange lighten-2"
      >
        <v-spacer></v-spacer>
        Explore
        <v-spacer></v-spacer>
        <v-icon>{{ show ? "mdi-chevron-up" : "mdi-chevron-down" }}</v-icon>
      </v-btn>
    </v-card-actions>
    <!-- <v-btn
      icon
      @click="show = !show"
      color="orange lighten-2"
      text
      bottom
      right
    >
      Explore
      <v-icon>{{ show ? "mdi-chevron-up" : "mdi-chevron-down" }}</v-icon>
    </v-btn> -->

    <v-expand-transition>
      <div v-show="show">
        <v-divider></v-divider>

        <v-card-text>
          <p>
            {{ project.descr }}
          </p>
        </v-card-text>
      </div>
    </v-expand-transition>
  </v-card>
</template>

<script>
export default {
  name: "Project",
  props: {
    project: Object,
  },
  data: () => ({
    show: false,
  }),
};
</script>

<style>
/* .card {
  margin: auto;
  min-width: 100px;
  max-width: 300px;
} */
/* @media only screen and (max-width: 600px) {
  .card {
    width: 75vw;
    max-width: 400px;
  }
}

@media only screen and (min-width: 600px) {
  .card {
    width: 400px;
  }
} */

.project {
  background: #f4f4f4;
  margin: 5px;
  padding: 10px 20px;
  cursor: pointer;
}
.center {
  margin: auto;
  width: 50%;
}
</style>
