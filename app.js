const express = require('express');
const bodyParser = require('body-parser');
const infoRouter = require('./routers/site_info');
const userRouter = require('./routers/user');
const aboutRouter = require('./routers/about');
const routesRouter = require('./routers/travel_routes');
const notesRouter = require('./routers/travel_notes');
let app = express();
app.listen(8080);
app.use(express.static('public'));
app.use(bodyParser.urlencoded({
  extended:false
}));
app.use('/info', infoRouter);
app.use('/user', userRouter);
app.use('/about', aboutRouter);
app.use('/route', routesRouter);
app.use('/note', notesRouter);