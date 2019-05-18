<template>
  <div>{{fullName}}</div>
</template>

<script>
export default {
  data() {
    return {
      firstName: 'Rui',
      lastName: 'Silverstring',
    };
  },
  computed: {
    fullName() {
      const fullName = `${this.firstName} ${this.lastName}`;
      return fullName;
    },
  },
};
</script>
