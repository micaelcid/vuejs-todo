<template>
  <li :id="`task-list-${task.id}`">
    <div class="task-details">
      <span>{{task.name}}</span>
    </div>
    <div class="task-actions">
      <button @click="deleteTask(task.id)">Deletar</button>
    </div>
    <span style="clear:both;"></span>
  </li>
</template>

<script>
export default {
  props: ['task', 'deleteTask'],
};
</script>

<style scoped lang="scss">
  li{
    margin: 5px 0;
    height: 32px;
    border-bottom: 0.25px solid #c0c0c0;
    .task-details{
      float:left;
      padding: 6px 0;
    }
    .task-actions{
      float:right;
      button{
        background-color: #42b983;
        border-radius: 6px;
        color: white;
        border: none;
        font-weight: bold;
        padding: 6px;
      }
    }
  }
</style>
