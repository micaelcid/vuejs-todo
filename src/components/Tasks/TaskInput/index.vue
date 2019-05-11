<template>
  <div>
    <input type="text" maxlength="32" :value="taskName" @keyup="setTaskName" @keyup.enter="addTask">
  </div>
</template>

<script>
export default {
  props: ['taskName', 'setTaskName', 'addTask'],
};
</script>

<style scoped lang="scss">
  input {
    width: 96%;
    padding: 2%;
    outline: none;
    font-size: 16px;
    border-radius: 4px;
  }
</style>
