parse = require './parse'
command = require './command'

###
	* Get version.
	*
	* @param {function(?err, result)} callback
###
exports.get = (callback) ->
	command.exec '--version', '', (err, code, output) ->
		return callback err if err
		return callback new Error "cannot get version" if code > 0
		return callback null, parse.version_info(output) if callback
