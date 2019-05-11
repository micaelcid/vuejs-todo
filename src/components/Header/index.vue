<template>
  <div id="nav">
    <router-link to="/">Dashboard</router-link> |
    <router-link to="/profile">Profile</router-link>
  </div>
</template>

<style scoped lang="scss">
  #nav {
    width: 100%;
    padding: 16px;
    background-color: #42b983;
    margin-bottom:20px;
    box-shadow: #ccc 0px 1px 4px 1px;
    a {
      font-weight: bold;
      color: #2c3e50;
      &.router-link-exact-active {
        color: white;
      }
    }
  }
</style>
