<template>
  <div class="dashboard">
    <h1>
      Olá, {{user.name}}
    </h1>
    <p>
      Espero que seu dia esteja sendo produtivo (:
    </p>
  </div>
</template>

<script>
export default {
  props: ['user'],
};
</script>
