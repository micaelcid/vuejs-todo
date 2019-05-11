<template>
  <div class="dashboard">
    <h1>
      Olá, {{user.name}}
    </h1>
  </div>
</template>

<script>
export default {
  props: ['user'],
};
</script>
