<template>
  <div class="index">
    <div class="banner">
      <ul class="banner-nav">
        <li class="banner-nav-list" v-for="(item, i) in bnldata" :key="i">
          <a href="#">
            {{ item.blname }}
            <span>&gt;</span>
          </a>
          <div class="box">
            <ul class="box-list" v-for="(item, i) in 4" :key="i">
              <li v-for="(items, i) in 6" :key="i">
                <a href="#">
                  <img src="../assets/list1.webp" alt="" />
                  小米10
                </a>
              </li>
            </ul>
          </div>
        </li>
      </ul>
      <div class="banner1 swiper-container">
        <div class="swiper-wrapper">
          <div
            class="swiper-slide"
            v-for="(item, index) in swiperdata"
            :key="index"
          >
            <a href="#"><img :src="item.src" alt="" /></a>
          </div>
        </div>
        <!-- 如果需要分页器 -->
        <div class="swiper-pagination"></div>

        <!-- 如果需要导航按钮 -->
        <div class="swiper-button-prev"></div>
        <div class="swiper-button-next"></div>

        <!-- 如果需要滚动条 -->
        <!-- <div class="swiper-scrollbar"></div> -->
      </div>
    </div>
    <div class="home-hero-sub">
      <div class="list">
        <ul>
          <li>
            <a href="#"
              ><img src="../assets/miaosha1.png" alt="" /><span
                >小米秒杀</span
              ></a
            >
          </li>
          <li>
            <a href="#"
              ><img src="../assets/miaosha2.png" alt="" /><span
                >企业团购</span
              ></a
            >
          </li>
          <li>
            <a href="#"
              ><img src="../assets/miaosha3.png" alt="" /><span
                >F码通道</span
              ></a
            >
          </li>
          <li>
            <a href="#"
              ><img src="../assets/miaosha4.png" alt="" /><span>米粉卡</span></a
            >
          </li>
          <li>
            <a href="#"
              ><img src="../assets/miaosha5.png" alt="" /><span
                >以旧换新</span
              ></a
            >
          </li>
          <li>
            <a href="#"
              ><img src="../assets/miaosha6.png" alt="" /><span
                >话费充值</span
              ></a
            >
          </li>
        </ul>
      </div>
      <div>
        <a href="#"><img src="../assets/home-list1.jpg" alt="" /></a>
      </div>
      <div>
        <a href="#"><img src="../assets/home-list2.jpg" alt="" /></a>
      </div>
      <div>
        <a href="#"><img src="../assets/home-list3.png" alt="" /></a>
      </div>
    </div>
    <por-list></por-list>
  </div>
</template>
<script>
import Swiper from "swiper/swiper-bundle.min.js";
import "swiper/swiper-bundle.min.css";
import PorList from "../components/PorList.vue";
export default {
  name: "Index",
  data() {
    return {
      bnldata: [],
      swiperdata: [],
    };
  },
  components: { Swiper, PorList },
  mounted() {
    setTimeout(() => {
      new Swiper(".banner1", {
        //direction: 'vertical', // 垂直切换选项
        loop: true,
        notNextTick: true,
        effect: "cube",
        // 循环模式选项
        autoplay: true,
        // 如果需要分页器
        pagination: {
          el: ".swiper-pagination",
          clickable: true,
        },

        // 如果需要前进后退按钮
        navigation: {
          nextEl: ".swiper-button-next",
          prevEl: ".swiper-button-prev",
        },
        observeParents: true, // 修改swiper自己或子元素时，自动初始化swiper
        observer: true, // 修改swiper的父元素时，自动初始化swiper
      });
    }, 300);
    this.$axios.get("http://127.0.0.1:3000/list/bannerlist").then((res) => {
      // console.log(res);
      if (res.status == 200) {
        this.bnldata = res.data;
      } else {
        console.log("请求失败，请稍后重试");
      }
    });
    this.$axios.get("http://127.0.0.1:3000/list/swiper").then((res) => {
      // console.log(res);
      if (res.status == 200) {
        this.swiperdata = res.data;
      } else {
        console.log("请求失败，请稍后重试");
      }
    });
  },
};
</script>
<style>
.banner {
  width: 1226px;
  height: 460px;
  margin: 0 auto;
  position: relative;
}
.banner .swiper-container,
.banner .swiper-container a img {
  width: 100%;
  height: 100%;
}
.banner .swiper-container .swiper-button-prev {
  padding-left: 234px;
}
.banner .banner-nav {
  position: absolute;
  left: 0;
  top: 0;
  height: 420px;
  padding: 20px 0;
  z-index: 2;
  background: rgba(0, 0, 0, 0.4);
  width: 234px;
}
.banner .banner-nav .banner-nav-list {
  height: 42px;
  line-height: 42px;
  text-indent: 30px;
  font-size: 14px;
}
.banner .banner-nav .banner-nav-list:hover {
  background: #ff6700;
}
.banner .banner-nav .banner-nav-list span {
  color: #fff;
  float: right;
  margin-right: 20px;
  font-weight: 700;
}
.banner .banner-nav .banner-nav-list a {
  color: #fff;
}
.banner .banner-nav .banner-nav-list .box {
  position: absolute;
  width: 992px;
  height: 460px;
  top: 0;
  left: 234px;
  background: #fff;
  display: none;
}
.banner .banner-nav .banner-nav-list:hover .box {
  display: block;
  box-shadow: 8px 8px 5px #b1b1b1;
}
.banner .banner-nav .banner-nav-list .box .box-list {
  width: 248px;
  height: 458px;
  margin: 0;
  padding: 20px 0;
  float: left;
}
.banner .banner-nav .banner-nav-list .box .box-list li {
  width: 265px;
  height: 76px;
  float: left;
}
.banner .banner-nav .banner-nav-list .box .box-list li a {
  padding-left: 0;
  color: #424242;
}
.banner .banner-nav .banner-nav-list .box .box-list li img {
  float: left;
  margin-left: 20px;
  padding-right: 0;
}
.home-hero-sub {
  width: 1226px;
  margin: 30px auto;
  height: 170px;
  display: flex;
  justify-content: space-between;
}
.home-hero-sub > div {
  width: 316px;
  height: 170px;
}
.home-hero-sub .list {
  width: 234px;
  height: 170px;
  background: #5f5750;
}
.home-hero-sub > div img {
  width: 316px;
  height: 170px;
}
.home-hero-sub .list ul {
  display: flex;
  flex-wrap: wrap;
}
.home-hero-sub .list ul li {
  width: 78px;
  height: 85px;
  text-align: center;
  font-size: 12px;
  color: #b1adaa;
  padding-top: 20px;
  box-sizing: border-box;
  position: relative;
}
.home-hero-sub .list ul li::before {
  content: "";
  width: 60px;
  height: 2px;
  background-color: #665e57;
  position: absolute;
  top: 2px;
  left: 12px;
}
.home-hero-sub .list ul li::after {
  content: "";
  width: 2px;
  height: 70px;
  background-color: #665e57;
  position: absolute;
  top: 10px;
  left: 2px;
}
.home-hero-sub .list ul li a {
  color: #b1adaa;
}
.home-hero-sub .list ul li a img {
  width: 30px;
  height: 30px;
}
.home-hero-sub .list ul li a span {
  display: block;
}
.pro {
  background: #f1f1f1;
}
.pro .pro-box {
  width: 1226px;
  margin: 0 auto;
}
.pro .pro-box .pro-jd .pro-banner {
  padding: 20px 0;
}
.pro .pro-box .pro-jd h2 {
  font-size: 22px;
  font-weight: 400;
  line-height: 58px;
}
.pro .pro-box .pro-jd .jd-content {
  display: flex;
  justify-content: space-between;
}
.pro .pro-box .pro-jd .jd-content .left {
  width: 234px;
}
.pro .pro-box .pro-jd .jd-content .left div a img {
  transition: all 0.2s linear;
}
.pro .pro-box .por-jd .jd-content .left div {
  height: 300px;
}
.pro .pro-box .pro-jd .jd-content .left div:first-child {
  margin-bottom: 15px;
}
.pro .pro-box .pro-jd .jd-content .right {
  width: calc(100% - 234px);
  display: flex;
  flex-wrap: wrap;
}
.pro .pro-box .pro-jd .jd-content .right a {
  width: 234px;
  margin-left: 12px;
  background: #fff;
  margin-bottom: 15px;
  text-align: center;
  padding-top: 20px;
  height: 280px;
  transition: all 0.2s linear;
}
.pro .pro-box .pro-jd .jd-content .left div a img:hover,
.pro .pro-box .pro-jd .jd-content .right a:hover {
  box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
  transform: translate3d(0, -2px, 0);
}
.pro .pro-box .pro-jd .jd-content .right dl dt img {
  width: 65%;
}

.pro .pro-box .pro-jd .jd-content .right dl dd:first-child {
  font-size: 14px;
  text-align: center;
  margin: 0 10px 2px;
}
.pro .pro-box .pro-jd .jd-content .right dl dd:nth-child(3) {
  margin: 10px;
  height: 18px;
  font-size: 12px;
  color: #b0b0b0;
}
.pro .pro-box .pro-jd .jd-content .right dl dd:last-child span {
  text-align: center;
  color: #ff6700;
  width: 50px;
  height: 50px;
}
.pro .pro-box .pro-jd .jd-content .right dl dd:last-child i {
  text-decoration: line-through;
  color: #b0b0b0;
}
</style>