<template>
    <div class="task-details">
      <span>{{task.name}}</span>
    </div>
</template>

<script>
export default {
  props: ['task'],
}
</script>

<style scoped lang="scss">
    .task-details{
      float:left;
      padding: 6px 0;
    }
</style>
