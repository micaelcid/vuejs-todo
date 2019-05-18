<template>
    <div class="task-actions">
      <button @click="deleteTask(taskId)">Deletar</button>
    </div>
</template>

<script>
export default {
  props: ['taskId', 'deleteTask'],
};
</script>

<style scoped lang="scss">
    .task-actions{
      float:right;
      button{
        background-color: #42b983;
        border-radius: 6px;
        color: white;
        border: none;
        font-weight: bold;
        padding: 6px;
        cursor: pointer;
      }
    }
</style>
