<template>
  <div id="nav">
    <h2>Vue Todo</h2>
    <router-link to="/">Painel</router-link> |
    <router-link to="/profile">Perfil</router-link>
  </div>
</template>

<style scoped lang="scss">
  #nav {
    width: 100%;
    padding: 16px 0;
    background-color: #42b983;
    margin-bottom:20px;
    box-shadow: #ccc 0px 1px 4px 1px;
    a {
      font-weight: bold;
      color: #2c3e50;
      width: 100px;
      margin: 0 16px;
      text-decoration: none;
      &.router-link-exact-active {
        color: white;
      }
    }
  }
</style>
