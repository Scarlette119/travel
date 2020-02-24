const express = require('express');
const pool = require('../pool');
let notesRouter = express.Router();
notesRouter.get('/getNotes', (req, res)=>{
  pool.query('select * from travel_notes', (err, result)=>{
    if(err) throw err;
    if(result.length>0) res.send(result);
  });
});
module.exports = notesRouter;