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
    <h2>Teams</h2>
    <v-container>
      <v-row>
        <v-spacer></v-spacer>
        <v-spacer></v-spacer>
        <v-icon color="teal">
          mdi-check
        </v-icon>
        <b>: Team has handed in 3 bids</b>
        <v-spacer></v-spacer>
        <v-icon color="error">
          mdi-alert-circle
        </v-icon>
        <b>: Team has not handed in 3 bids</b>
        <v-spacer></v-spacer>
        <v-spacer></v-spacer>
      </v-row>
    </v-container>

    <v-expansion-panels>
      <v-expansion-panel>
        <v-expansion-panel-header>
          <b>Team 1</b>
          <template v-slot:actions>
            <v-icon color="primary">
              $expand
            </v-icon>
          </template>
        </v-expansion-panel-header>
        <v-expansion-panel-content>
          <v-container> <b>Team Name:</b> Ducati panigale</v-container>
          <v-container> <b>Members:</b> John Doe etc</v-container>

          <v-container> <b>Bids:</b></v-container>
        </v-expansion-panel-content>
      </v-expansion-panel>

      <v-expansion-panel>
        <v-expansion-panel-header disable-icon-rotate>
          <b>Team 2</b>
          <template v-slot:actions>
            <v-icon color="teal">
              mdi-check
            </v-icon>
          </template>
        </v-expansion-panel-header>
        <v-expansion-panel-content>
          Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
          eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad
          minim veniam, quis nostrud exercitation ullamco laboris nisi ut
          aliquip ex ea commodo consequat.
        </v-expansion-panel-content>
      </v-expansion-panel>

      <v-expansion-panel>
        <v-expansion-panel-header disable-icon-rotate>
          <b>Team 3</b>
          <template v-slot:actions>
            <v-icon color="error">
              mdi-alert-circle
            </v-icon>
          </template>
        </v-expansion-panel-header>
        <v-expansion-panel-content>
          Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
          eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad
          minim veniam, quis nostrud exercitation ullamco laboris nisi ut
          aliquip ex ea commodo consequat.
        </v-expansion-panel-content>
      </v-expansion-panel>
      <v-expansion-panel>
        <v-expansion-panel-header disable-icon-rotate>
          <b>Team 4</b>
          <template v-slot:actions>
            <v-icon color="error">
              mdi-alert-circle
            </v-icon>
          </template>
        </v-expansion-panel-header>
        <v-expansion-panel-content>
          Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
          eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad
          minim veniam, quis nostrud exercitation ullamco laboris nisi ut
          aliquip ex ea commodo consequat.
        </v-expansion-panel-content>
      </v-expansion-panel>
      <v-expansion-panel>
        <v-expansion-panel-header disable-icon-rotate>
          <b>Team 5</b>
          <template v-slot:actions>
            <v-icon color="error">
              mdi-alert-circle
            </v-icon>
          </template>
        </v-expansion-panel-header>
        <v-expansion-panel-content>
          Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
          eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad
          minim veniam, quis nostrud exercitation ullamco laboris nisi ut
          aliquip ex ea commodo consequat.
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
    };
  },
  methods: {},
};
</script>

<style scoped></style>
