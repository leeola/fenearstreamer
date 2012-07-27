#
# lib/web/main.coffee
#
# Copyright (c) 2012 Lee Olayvar <leeolayvar@gmail.com>
# MIT Licensed
#
config = (require '../config').web



# (port) -> undefined
#
# Params:
#   port: The port the web server is going to listen on.
#
# Desc:
#   Start the web server.
start = (port=config.port) ->
  console.log "If the web server existed, it would be starting on port:#{port}"



if require.module is module
  start()



exports.start = start