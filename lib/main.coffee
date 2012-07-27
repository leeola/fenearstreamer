#
# lib/main.coffee
#
# The main entry point
#
# Copyright (c) 2012 Lee Olayvar <leeolayvar@gmail.com>
# MIT Licensed
#
config = require './config'

streamer = require './streamer'
web = require './web'



# (options) -> undefined
#
# Desc:
#   Start the Streamer process.
start = (options) ->
  console.log 'WARNING: main options are ignored.'
  
  # Start our processes.
  web.start()



exports.start = start