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
    <v-row v-for="n in 6" :key="n" class="mb-6" no-gutters>
      <v-col v-for="k in 3" :key="k">
        <v-card class="mx-auto" max-width="344" outlined tile>
          <v-list-item three-line>
            <v-list-item-content>
              <v-list-item-title class="text-h5 mb-1">
                Team {{ k + (n - 1) * 3 }}
              </v-list-item-title>
              <v-list-item-subtitle>
                TeamName
              </v-list-item-subtitle>
              <v-divider></v-divider>
              Members:
              <v-progress-linear
                color="yellow darken-2"
                height="20"
                striped
                value="50"
              >
                {{ (k * k) % 6 }} members
              </v-progress-linear>
            </v-list-item-content>

            <v-list-item-avatar
              tile
              size="80"
              color="grey"
            ></v-list-item-avatar>
          </v-list-item>

          <v-card-actions>
            <v-btn outlined rounded text>
              Go to team
            </v-btn>
          </v-card-actions>
        </v-card>
      </v-col>
    </v-row>
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
  name: "Home",
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
    };
  },
  methods: {},
};
</script>

<style scoped></style>
