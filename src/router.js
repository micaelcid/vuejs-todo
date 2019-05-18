import Vue from 'vue';
import Router from 'vue-router';

import Dashboard from './views/Dashboard.vue';
import Profile from './views/Profile.vue';
import Example from './views/Example.vue';

Vue.use(Router);

export default new Router({
  mode: 'history',
  routes: [
    {
      path: '/',
      component: Dashboard,
    },
    {
      path: '/profile',
      component: Profile,
    },
    {
      path: '/example',
      component: Example,
    },
  ],
});
