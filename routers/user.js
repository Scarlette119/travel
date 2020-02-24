const express = require('express');
const pool = require('../pool');
let userRouter = express.Router();
userRouter.post('/signUp', (req, res)=>{
  let obj = req.body;
  console.log(obj);
  pool.query('insert into users set ?', [obj], (err, result)=>{
    if(err) throw err;
    if(result.affectedRows>0) res.send('suc');
  });
});
module.exports = userRouter;