#
# lib/main.coffee
#
# The main entry point
#
# Copyright (c) 2012 Lee Olayvar <leeolayvar@gmail.com>
# MIT Licensed
#
winston = require 'winston'

config = require './config'

streamer = require './streamer'
web = require './web'




# (options) -> undefined
#
# Desc:
#   Start the Streamer process.
start = (options) ->
  winston.log 'warning', 'main options are ignored.'
  
  # Start our processes.
  web.start()



exports.start = start