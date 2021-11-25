<template>
	<div class="login">
  <div href="#" class="header">
        <a href="#" class="logo">
			<img src="../assets/logo.png" alt="">
		</a>
        <div class="logo_text">
            <h2>小米商城</h2>
            <p>让每个人都能享受科技的乐趣</p>
        </div>

    </div>
    <div class="middle">
        <div class="user">
            <div class="user_header">
                <div class="title">
                    <a href="#">账号登录</a>
                    <span class="line"></span>
                    <a href="#">扫码登录</a>
                </div>
            </div>
            <div class="user_middle">
                <input type="text" v-model="username"  placeholder="邮箱/手机号码/小米ID">
                <input type="password" v-model="pwd"  name="mima" id="password" placeholder="密码">
                <a href="#" @click="submit()">登录</a>
                <li><a href="#">手机短信登录/注册</a></li>
                <li><a href="#">立即注册</a> <span>|</span> <a href="#">忘记密码</a></li>
            </div>
            <div class="user_footer"><img src="" alt=""></div>
        </div>
    </div>
    <!-- 中间部分 结束 -->


    <!-- 尾部部分 开始 -->
    <div class="footer">
        <ul>
            <li><a href="#">简体</a><span>|</span></li>
            <li><a href="#">繁体</a><span>|</span></li>
            <li><a href="#">English</a><span>|</span></li>
            <li><a href="#">常见问题</a><span>|</span></li>
            <li><a href="#">隐私政策</a></li>
        </ul>
    </div>
    </div>
</template>
<script>
	export default{
        name:'Login',
        data(){
            return{
                username:'',
                pwd:''
            }
        },
        methods:{
            submit(){
                this.$axios({
                    method:'POST',
                    url:'http://127.0.0.1:3000/users/login',
                    data:{
                        username:this.username,
                        pwd:this.pwd
                    }
                }).then((res)=>{
                    if(res.data[0].num>0){
                        alert('登陆成功');
                        this.$router.push({ name: 'Index'})
                    }else{
                        alert('请输入正确的密码和账号');
                        this.username='';
                        this.pwd=''
                    }
                })
            }
        }
	}
</script>
<style scoped>
*{
    margin: 0;
    padding: 0;
}
a{
    text-decoration: none;
}
li{
    list-style: none;
}
.header{
    display: block;
    width: 1130px;
    height: 98px;
    margin: 0 auto;
    text-align: center;
}
.logo{
    float: left;
    display: block;
    width: 48px;
    height: 48px;
    background-color: #FF6700;
    background-position: 50%;
	border-radius: 50%;
    margin-top: 20px;
}
.logo img{
	width: 100%;
	height: 100%
}
.logo_text{
    float: left;
    margin-left: 10px;
    margin-top: 20px;
}
.logo_text h2{
    font-weight: 400;
    letter-spacing: 5px;
}
.logo_text p{
    margin-top: 5px;
    font-size: 6px;
}
/* 中间部分开始 */
.middle{
    position: relative;
    height: 588px;
    background-image: url(../assets/banner1.jpg);
    background-repeat: no-repeat;
    background-position: 50% 0;
}
.user{
    position: absolute;
    top: 35px;
    right: 190px;
    width: 410px;
    height: 556px;
    background-color: white;
}
.user_header{
    height: 82px;
    text-align: center;
    line-height: 82px;
}
.user_header a{
    padding: 27px 0 24px;
    text-align: center;
    font-size: 24px;
    color: #666;
}
.user_header a:hover{
    color: #FF6700;
}
.line{
        width: 1px;
        height: 24px;
        margin: 0 35px 0 42px;
        border: 1px solid #e0e0e0;
        background: #e0e0e0;
}
.user_middle input{
    color: #686868;
width: 306px;
height: 25px;
border: 1px solid #e0e0e0;
padding: 13px 16px 13px 14px;
margin: 0 0 20px 35px;
}
.user_middle > a{
    display: block;
    width: 308px;
height: 25px;
background-color: #FF6700;
padding: 13px 16px 13px 14px;
margin: 0 0 15px 35px;
color: white;
font-size: 14px;
text-align: center;
line-height: 25px;
}
.user_middle li{
    width: 308px;
    padding-bottom: 35px;
    margin: 0 0 0 45px;
    font-size: 14px;
    text-align: center;
    
}

.user_middle li a{
    color: #757575;
}
.user_middle li a:hover{
    color: #FF6700;
}
.user_footer img{
    margin: 80px 0 0 80px;
}
.footer{
    display: block;
    height: 30px;
    margin: 100px 0 0 600px;
    
}
.footer li{
    float: left;
}
.footer li a ,
.footer li span {
    color: #757575;
    font-size: 14px;
}
.footer li a{
display: inline-block;
    height: 19px;
    padding: 0 10px;
    text-align: center;
}
.footer li a:hover{
    color: #FF6700;
}
</style>