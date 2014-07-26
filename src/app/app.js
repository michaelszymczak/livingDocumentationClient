var config = require('./config'),
    scenariosResponse = require('./models/scenariosResponseStub')
    express = require('express'),
    app = express();

app.get('/', function (request, response) {
   response.send('Hello');
});

app.get('/scenarios/:title', function (request, response) {
    response.send(scenariosResponse.get(request.params.title));
});

var server = app.listen(config.port, function () {
    console.log('Listening on port %d', server.address().port);
});