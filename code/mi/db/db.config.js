var mysql = require('mysql');

var pool  = mysql.createPool({
  connectionLimit : 10,
  host            : 'localhost',
  user            : 'root',
  password        : '123456',
  port            : '3306',
  database        : 'mi'
}); 

//使用 Promise 异步处理
//导出来的 ，使用 query 方法 第一个参数 是sql 语句
// 第二个参数 是mysql 里面的参数

function query(strSql,params){
    //返回的是一个promise 对象
    return new Promise((resolve,reject) => {
        //创建链接池的链接对象
        pool.getConnection((err,conn)=>{
            if(err){
                reject(err)
                return
            }
            conn.query(strSql,params,(err,result)=>{
                conn.release()
                if(err){
                    reject(err)
                    return
                }
                resolve(result)
            })
        })
    })
}

module.exports = query

// var strsql = 'select * from user'
// pool.query(strsql,(err,result)=>{
//     if(err)throw err;
//     console.log(result);
// })
