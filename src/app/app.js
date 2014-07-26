var config = require('./config'),
    express = require('express'),
    app = express();

console.log(config.currentEnv);

app.get('/', function (request, response) {
   response.send('Hello');
});

var server = app.listen(config.port, function () {
    console.log('Listening on port %d', server.address().port);
});