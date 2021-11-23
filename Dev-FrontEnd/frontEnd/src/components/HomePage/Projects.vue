<template>
  <div class="projects">
    <div v-for="project in projects" :key="project.pid">
      <Project :project="project" class="project-card" />
    </div>
  </div>
</template>

<script>
import Project from "./Project.vue";
export default {
  name: "Projects",
  props: {
    projects: Array,
  },
  components: {
    Project,
  },
};
</script>

<style scoped>
.projects {
  display: flex;
  flex-wrap: wrap;
  justify-content: space-around;
  padding-top: 4rem;
}

.project-card {
  margin-top: 2rem;
}
</style>
