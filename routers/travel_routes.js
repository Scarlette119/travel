const express = require('express');
const pool = require('../pool');
let routesRouter = express.Router();
routesRouter.get('/getRouteThumb', (req, res)=>{
  pool.query('select * from route_thumb', (err, result)=>{
    if(err) throw err;
    if(result.length>0) res.send(result);
  });
});
routesRouter.get('/getRouteDetail/:rid', (req, res)=>{
  let rid = req.params.rid;
  pool.query('select * from travel_routes as tr left join guide on tr.guideId = guide.gid left join routes_images as ri on tr.rid = ri.routeId where rid = ?', [rid], (err, result)=>{
    if(err) throw err;
    if(result.length>0) res.send(result);
  });
})
module.exports = routesRouter;