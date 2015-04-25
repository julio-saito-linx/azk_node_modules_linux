// ---

var fs = require('fs');
var path = require('path');

// ---

var libs = __dirname + "/lib/";
fs.readdirSync(libs).forEach(function(file) {
	var match = file.match(/^(.+?)\.js$/);

	if (!match) {
		return;
	}

	exports[match[1]] = require(path.join(libs, file));
});
