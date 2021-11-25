<template>
    <div>
      <div class="pro">
          <div class="pro-box" v-for="(item,index) in jdlist" :key="index">
            <div class="pro-jd">
              <div class="pro-banner"><a href="#"><img :src="item.src"></a></div>
              <h2>{{item.title}}</h2>
              <div class="jd-content">
                  <div class="left">
                    <div><a href="#"><img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/116fc43816b87192be4e67cf762e8da5.jpeg?thumb=1&w=234&h=300&f=webp&q=90" alt=""></a></div>
                    <div><a href="#"><img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/dfbdabe36b2d630d57a015e6fb5eb3ea.jpg?thumb=1&w=234&h=300&f=webp&q=90" alt=""></a></div>
                  </div>
                  <div class="right">
                    <a href="#" v-for="(item,i) in jdcontent[index]" :key="i" >
                      <dl>
                        <dt><img :src="item.rsrc"></dt>
                        <dd>{{item.rname}}</dd>
                        <dd>{{item.rdesc}}</dd>
                        <dd><span>{{item.fprice}}</span><del>{{item.rprice}}</del></dd>
                      </dl>
                    </a>
                  </div>
              </div>
            </div>
          </div>
      </div>
    </div>
</template>
<script>
export default {
  name:'ProList',
  data() {
    return {
      jdlist:[],// 横幅图片地址，标题
      jdcontent:[[],[],[],[],[],[]],// 所有产品信息 二维数组
    }
  },
  mounted() {
    this.$axios.get('http://localhost:3000/list/jdlist').then((res)=>{
        this.jdlist = res.data;
    })
    this.$axios.get('http://localhost:3000/list/jdcontent').then((res)=>{
        res.data.forEach((item,index)=>{
          switch(item.type){
            case 1:// 家电
              this.jdcontent[0].push(item)
              break;
            case 2:// 智能
              this.jdcontent[1].push(item)
              break;
            case 3:// 搭配
              this.jdcontent[2].push(item)
              break;
            case 4:// 配件
              this.jdcontent[3].push(item)
              break;
            case 5:// 周边
              this.jdcontent[4].push(item)
              break;
            case 6:// 视频
              this.jdcontent[5].push(item)
              break;
          }
        })
    })
  },
}


</script>
<style>
/* por-S */
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
/* pro-E */
</style>