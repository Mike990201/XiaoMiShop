import { createRouter, createWebHistory } from 'vue-router'
import Home from '../views/Home.vue'
import List from '../views/List.vue'
import Index from '../views/Index.vue'
import Login from '../views/Login.vue'
import Error from '../views/Error.vue'
const routes = [

  {
    path: '/',
    name: 'Home',
    component: Home,
    children:[
      {
        path: '/',
        name: 'Index',
        component: Index,
      },
      {
        path: '/list',
        name: 'List',
        component: List
      }
    ]
  },
  {
    path: '/about',
    name: 'About',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "about" */ '../views/About.vue')
  },
  {
    path: '/login',
    name: 'Login',
    component:Login
  },
  {
    path: '/:catchAll(.*)',
    name: 'Error',
    component:Error
  },
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router
