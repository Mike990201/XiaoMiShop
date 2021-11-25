<template>
  <div class="header">
    <div class="top-nav">
      <div class="box">
        <div class="left">
          <a href="#" v-for="(item,i) in navData" :key="i">{{item.navname}}</a>
        </div>
        <div class="right">
            <a href="/Login">登陆</a>
            <a href="#">注册</a>
            <a href="#">消息通知</a> 
            <img src="" alt="">
            <a href="#"><span class="iconfont" >&#xe65c;</span>购物车</a>
        </div>
      </div>
    </div>
    <div class="bottom-nav">
        <div class="logo">
            <a href="/Index"><img src="../assets/logo.png" ></a>
        </div>
        <ul class="nav">
          <li v-for="(item,i) in hnavData" :key="i">
            <a href="#" >
                {{item.hnavname}}
            </a>
            </li>
        </ul>
        <div>
          <input type="text">
          <button>搜索</button> 
        </div>
        
    </div>
  </div>
</template>       
<script>
export default {
  name: "Header",
  data() {
    return {
      navData:[],
      hnavData:[],
    }
  },
  mounted() {
    this.$axios.get('http://127.0.0.1:3000/list/nav').then((res)=>{
        // console.log(res);
        if(res.status==200){
         this.navData =res.data;
        }else{
          console.log('请求失败，请稍后重试');
        }
    })
    this.$axios.get('http://127.0.0.1:3000/list/hnav').then((res)=>{
        // console.log(res);
        if(res.status==200){
         this.hnavData =res.data;
        }else{
          console.log('请求失败，请稍后重试');
        }
    })
  },
};
</script>
<style>
.top-nav {
  background-color: #333;
}
.top-nav .box {
  width: 1226px;
  margin: 0 auto;
  display: flex;
  justify-content: space-between;
  height: 40px;
}
.top-nav .box  .left{
    line-height: 40px;
}
.top-nav .box  a{
    font-size: 12px;
    color: #b0b0b0;
    border-right: 1px solid #b0b0b0;
    padding: 0 10px;
}
.top-nav .box  .left a{
    line-height: 40px;
}

.top-nav .box .right a:hover,.top-nav .box  .left a:hover{
  color: #fff;
}
.top-nav .box  a:last-child{
    border: 0;
}
.right   a  span{
    display: inline-block;
    width: 20px;
    height: 20px;
}
.top-nav .box .right a:nth-child(3){
    border: 0;
} 
.top-nav .box .right a{
    float: left;
    margin:11px 0;

}
.top-nav .box .right a:last-child{
    display: inline-block;
    height: 40px;
    width: 100px;
    background-color: #424242;
    float: right;
    margin: 0;
    text-align: center;
    line-height: 40px;
} 
.top-nav .box .right a:last-child:hover{
    background-color: #fff;
    color: #ff6a00;
    
}
.bottom-nav{
    width: 1226px;
    height: 100px;
    margin: 0 auto;
    display: flex;
    justify-content: space-between;
  align-items: center;
}
.bottom-nav .logo {
  height: 56px;
  width: 56px;
}
.bottom-nav .logo img{
  width: 100%;
  height: 100%;
}
.bottom-nav .nav{
  display: flex;
  
}
.bottom-nav .nav a{
  font-size: 17px;
}
.bottom-nav .nav a:hover{
  color: #ff6700;
}
.bottom-nav .nav li {
  padding:10px;

}
.bottom-nav div:last-child{
    width: 294px;
    height: 48px;
    border: 1px solid #e0e0e0;
}
.bottom-nav div:last-child input{
    border: 0;
    outline: 0;
    height: 46px;
    width: 243px;
    float: left;
}
.bottom-nav div:last-child button{
  border: 0;
  outline: 0;
  background-color: #fff;
  width: 46px;
  height: 48px;
  float: right;
  border-left: 1px solid #e0e0e0;
}
.bottom-nav div:last-child:hover{
  border-color: #333;
}
.bottom-nav div:last-child button:hover{
  cursor: pointer;
  background-color: #ff6a00;
  border-left-color: #333;
}
</style>