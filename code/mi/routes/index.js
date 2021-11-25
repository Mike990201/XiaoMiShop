var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});
// router.get('/admin',(req,res,next)=>{
//   res.send("你已进入后台管理系统");
// })
// router.post('/login',(req,res,next)=>{
//   res.send("登录页面");
// })
// router.put('/login',(req,res,next)=>{
//   res.send("我是你");
// })
// router.delete('/login',(req,res,next)=>{
//   res.send("我是你");
// })
module.exports = router;
