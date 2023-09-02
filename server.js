const bodyParser = require("body-parser");
const express = require("express");
const app = express();


//parse body
app.use(bodyParser.urlencoded({extended: true}));
app.use(bodyParser.json());

//dibuat setelah membuat routes
var routes = require('./router');
routes(app);

app.listen(3000, () => {
    console.log(`Server started on port`);
});

