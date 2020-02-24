const express = require('express');
const pool = require('../pool');
let aboutRouter = express.Router();
aboutRouter.get('/getInfo', (req,res)=>{
  pool.query('select * from guide', (err,result)=>{
    if(err) throw err;
    if(result.length>0) res.send(result);
  });
});
module.exports = aboutRouter;