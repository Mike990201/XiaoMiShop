import { createApp } from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import axios from 'axios'
import '../src/assets/font/iconfont.css'
import '../src/assets/font/iconfont.ttf'
import '../src/assets/font/iconfont.js'
import '../src/assets/font/iconfont.json'
import '../src/assets/font/iconfont.woff'
import '../src/assets/font/iconfont.woff2'
import '../src/assets/font/footer.css'

const app = createApp(App)
app.config.globalProperties.$axios = axios
app.use(store).use(router).mount('#app')
