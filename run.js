var http = require('http');
var static = require('node-static');
var url = require('url');
var fs = require('fs');
var bfrequire = require('node-brainfuckex').require;

var config = JSON.parse(fs.readFileSync(process.cwd() + '/config.json'));

var file = new static.Server('./public');

require('http').createServer(function (request, response) {
	var parts = url.parse(request.url, true);
	var query = '';
	for (var key in parts.query) {
		if (query.length > 0) {
			query += String.fromCharCode(1);
		}
		query += key + String.fromCharCode(2) + parts.query[key]
	}

	var outputStr = '';

	var output = function(str) {
		outputStr += str;
	};
	
	var cwd = process.cwd();
	process.chdir('./src');
	try {	
		var data = bfrequire('router.bf')([parts.pathname, request.method, query], output);
	} catch (e) {
		if (process.argv[2] === 'debug') {
			throw e;
		}
		outputStr = 'Oops. An internal server error occurred -.-';
		data = ['500'];
	}
	
	process.chdir(cwd);

	var returnCode;
	try {
		returnCode = parseInt(data[0], 10);
	} catch (e) {
		if (process.argv[2] === 'debug') {
			throw e;
		}
		outputStr = 'Oops. An internal server error occurred -.-<br />' + e.message;
		returnCode = ['500'];
	}

	if (returnCode === 404) {
		request.addListener('end', function () {
			file.serve(request, response, function (e, res) {
				if (e && (e.status === 404)) { // If the file wasn't found
					file.serveFile('404.html', 404, {}, request, response);
			 	}
			});
		}).resume();
	} else {
		response.writeHead(returnCode, {'Content-Type': 'text/html'});
		response.end(outputStr);
	}

}).listen(config.port);
