<template>
  <div id="tasks">
    <h1>Tarefas</h1>
    <TaskInput :taskName="taskName" :setTaskName="setTaskName" :addTask="addTask" />
    <TaskList :tasks="tasks" :deleteTask="deleteTask" />
  </div>
</template>

<script>
import TaskInput from './TaskInput/index.vue';
import TaskList from './TaskList/index.vue';

export default {
  components: {
    TaskInput,
    TaskList,
  },
  data() {
    return {
      taskName: '',
      tasks: [],
      tasksCount: 0,
    };
  },
  methods: {
    setTaskName(task) {
      this.taskName = task.target.value;
    },
    addTask() {
      this.tasksCount += 1;
      const data = {
        id: this.tasksCount,
        name: this.taskName,
      };
      this.tasks.push(data);
      this.taskName = '';
    },
    deleteTask(id) {
      const taskIndex = this.tasks.findIndex(task => task.id === id);
      this.tasks.splice(taskIndex, 1);
    },
  },
};
</script>
