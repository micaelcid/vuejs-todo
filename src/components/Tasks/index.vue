<template>
  <div id="tasks">
    <h1>Tarefas</h1>
    <TaskInput :taskName="taskName" :setTaskName="setTaskName" :createTask="createTask" />
    <TaskList :tasks="tasks" :deleteTask="deleteTask" />
    <span>{{totalTasks}}</span>
  </div>
</template>

<script>
import TaskInput from './TaskInput/index.vue';
import TaskList from './TaskList/index.vue';
import localStorage from './localStorage';

export default {
  components: {
    TaskInput,
    TaskList,
  },
  data() {
    return {
      taskName: '',
      tasks: [],
      lastTaskId: 0,
    };
  },
  computed: {
    totalTasks() {
      return `Você tem ${this.tasks.length} tarefas.`;
    },
  },
  methods: {
    setTaskName(task) {
      this.taskName = task.target.value;
    },
    createTask() {
      this.lastTaskId += 1;
      const task = {
        id: this.lastTaskId,
        name: this.taskName,
      };
      this.tasks.push(task);
      this.taskName = '';
      localStorage.createTask(task);
    },
    deleteTask(id) {
      const taskIndex = this.tasks.findIndex(task => task.id === id);
      this.tasks.splice(taskIndex, 1);
      localStorage.deleteTask(id);
    },
  },
  created() {
    this.tasks = localStorage.getTasks();
    this.lastTaskId = this.tasks[0].id;
  },
};
</script>

<style scoped>
  span {
    text-align: right;
    font-size: 0.9em;
  }
</style>
