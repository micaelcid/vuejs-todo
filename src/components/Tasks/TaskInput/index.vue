<template>
  <div>
    <input type="text" maxlength="32" :value="taskName" @keyup="setTaskName" @keyup.enter="createTask">
  </div>
</template>

<script>
export default {
  props: ['taskName', 'setTaskName', 'createTask'],
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
