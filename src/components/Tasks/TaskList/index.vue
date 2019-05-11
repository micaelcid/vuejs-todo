<template>
  <ul id="task-list">
    <TaskListItem
    v-for="task in tasks"
    :key="task.id"
    :task="task"
    :deleteTask="deleteTask" />
  </ul>
</template>

<script>
import TaskListItem from './TaskListItem/index.vue';

export default {
  props: ['tasks', 'deleteTask'],
  components: {
    TaskListItem,
  },
};
</script>

<style scoped lang="scss">
  ul{
    text-align: left;
    list-style: none;
    padding: 0;
  }
</style>
