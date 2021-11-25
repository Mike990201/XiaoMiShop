<template>
  <div class="home">
    <header-nav></header-nav> 
    <router-view>

    </router-view>
    <footer-nav>
    </footer-nav>
  </div>
</template>

<script>
// @ is an alias to /src
//import HelloWorld from '@/components/HelloWorld.vue'
import HeaderNav from '../components/Header-nav.vue'
import FooterNav from '../components/Footer-nav.vue'
import Swiper from "swiper/swiper-bundle.min.js"
export default {
  name: 'Home',
  components: {
    //HelloWorld
    HeaderNav,
    FooterNav,
    Swiper
  }
}
</script>
