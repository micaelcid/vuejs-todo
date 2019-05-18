<template>
    <span>{{totalTasks}}</span>
</template>

<script>
export default {
  props: ['tasksLength'],
  computed: {
    totalTasks() {
      const length = this.tasksLength;
      if (length === 0) {
        return 'Você não tem nenhuma tarefa. Digite e aperte ENTER para adicionar uma.';
      }
      return `Você possui ${length} ${length > 1 ? 'tarefas' : 'tarefa'}`;
    },
  },
};
</script>
