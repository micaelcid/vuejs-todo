<template>
  <div id="app">
    <Header />
    <router-view :user="user" :message="'Propriedade'" id="router-view" />
    <Footer />
  </div>
</template>

<script>
import Header from './components/Header/index.vue';
import Footer from './components/Footer/index.vue';

export default {
  components: {
    Header,
    Footer,
  },
  data() {
    return {
      user: {
        id: 1,
        name: 'Cid',
      },
    };
  },
};
</script>


<style lang="scss">
body {
  background: #e9ebee;
  margin:0;
}
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}
#router-view {
  @media (min-width: 1024px){
    width: 768px;
  }
  background: white;
  box-shadow: #ccc 0px 1px 4px 1px;
  border-radius: 8px;
  padding: 16px;
  margin: auto;
  text-align: left;
}
</style>
