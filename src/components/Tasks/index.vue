<template>
  <div id="tasks">
    <TaskHeader />
    <TaskInput :taskName="taskName" :setTaskName="setTaskName" :createTask="createTask" />
    <TaskList :tasks="tasks" :deleteTask="deleteTask" />
    <TaskFooter :tasksLength="this.tasksLength" />
  </div>
</template>

<script>
import TaskHeader from './TaskHeader/index.vue';
import TaskInput from './TaskInput/index.vue';
import TaskList from './TaskList/index.vue';
import TaskFooter from './TaskFooter/index.vue';
// import localStorage from './localStorage';

export default {
  components: {
    TaskHeader,
    TaskInput,
    TaskList,
    TaskFooter,
  },
  data() {
    return {
      taskName: '',
      tasks: [],
      lastTaskId: 0,
    };
  },
  computed: {
    tasksLength() {
      return this.tasks.length;
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
      // localStorage.createTask(task);
    },
    deleteTask(id) {
      const taskIndex = this.tasks.findIndex(task => task.id === id);
      this.tasks.splice(taskIndex, 1);
      // localStorage.deleteTask(id);
    },
  },
  created() {
    // this.tasks = localStorage.getTasks();
    this.lastTaskId = this.tasks.length > 0 ? this.tasks[0].id : 0;
  },
};
</script>

<style scoped>
  span {
    text-align: right;
    font-size: 0.9em;
  }
</style>
