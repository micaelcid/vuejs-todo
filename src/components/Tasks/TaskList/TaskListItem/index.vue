<template>
  <li :id="`task-list-${task.id}`">
    <Description :taskName="task.name" />
    <Actions :taskId="task.id" :deleteTask="deleteTask" />
  </li>
</template>

<script>
import Description from './Description/index.vue';
import Actions from './Actions/index.vue';

export default {
  props: ['task', 'deleteTask'],
  components: {
    Description,
    Actions,
  },
};
</script>

<style scoped lang="scss">
  li {
    margin: 5px 0;
    height: 32px;
    border-bottom: 0.25px solid #c0c0c0;
  }
</style>
