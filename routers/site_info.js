const express = require('express');
const pool = require('../pool');
let infoRouter = express.Router();
infoRouter.get('/getData', (req, res)=>{
  pool.query('select * from site_carousel', (err, result)=>{
    if(err) throw err;
    if(result.length>0) res.send(result);
  });
});
module.exports = infoRouter;