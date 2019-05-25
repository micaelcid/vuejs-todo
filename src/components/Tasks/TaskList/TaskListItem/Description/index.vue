<template>
    <div class="task-details">
      <span>{{taskName}}</span>
    </div>
</template>

<script>
export default {
  props: ['taskName'],
}
</script>

<style scoped lang="scss">
    .task-details{
      float:left;
      padding: 6px 0;
    }
</style>
