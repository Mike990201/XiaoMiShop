var express = require('express');
var router = express.Router();
const querySql =require('../db/db.config')
router.get('/jd', function(req, res, next) {
  res.send('这是家电商品列表');
});
router.get('/nav', async (req, res, next) => {
    let strSql = 'select * from nav'
    try {
      let navdata = await querySql(strSql, [])
      res.send(navdata)
    } catch (error) {
      throw error;
    }
})
router.get('/hnav', async (req, res, next) => {
    let strSql = 'select * from hnav'
    try {
      let hnavdata = await querySql(strSql, [])
      res.send(hnavdata)
    } catch (error) {
      throw error;
    }
})
router.get('/bannerlist', async (req, res, next) => {
    let strSql = 'select * from bannerlist'
    try {
      let bnldata = await querySql(strSql, [])
      res.send(bnldata)
    } catch (error) {
      throw error;
    }
})
router.get('/jdlist', async (req, res, next) => {
    let strSql = 'select * from jdlist'
    try {
      let jdlistdata = await querySql(strSql, [])
      res.send(jdlistdata);
    } catch (error) {
      throw error;
    }
})
router.get('/jdcontent', async (req, res, next) => {
    let strSql = 'select * from jdcontent'
    try {
      let jddata = await querySql(strSql, [])
      res.send(jddata);
    } catch (error) {
      throw error;
    }
})
router.get('/swiper', async (req, res, next) => {
    let strSql = 'select * from swiper'
    try {
      let swiperdata = await querySql(strSql, [])
      res.send(swiperdata);
    } catch (error) {
      throw error;
    }
})
module.exports = router;
