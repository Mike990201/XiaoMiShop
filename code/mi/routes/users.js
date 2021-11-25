var express = require('express');
var router = express.Router();
const querySql =require('../db/db.config')
/* GET users listing. */
router.get('/', function(req, res, next) {
  res.send('respond with a resource');
});
router.post('/login', async (req, res, next) => {
   let{username,pwd}=req.body; 
  let strSql = 'select count(*) as num from login where username=? and pwd=?'
  let params =[username,pwd];
  try {
      let logindata = await querySql(strSql, params)
      // console.log(logindata);
      res.send(logindata);
    } catch (error) {
      throw error;
    }
})
module.exports = router;
