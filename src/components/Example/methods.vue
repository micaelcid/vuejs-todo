<template>
  <div>
  {{i}} <button @click="add">Add</button>
  </div>
</template>

<script>
export default {
  data() {
    return {
      i: 0,
    };
  },
  methods: {
    add() {
      this.i += 1;
    },
  },
};
</script>
