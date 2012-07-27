#
# lib/config.coffee
#
# Copyright (c) 2012 Lee Olayvar <leeolayvar@gmail.com>
# MIT Licensed
#
path = require 'path'
pork = require 'pork'



# Default CLI specific options.
cli =
  daemon: false

# Default general config.
config =
  settings_directory: path.join pork.home(), '.fenearstreamer'
  libraries: [path.join pork.home(), 'music']
  read_only: true

# Default streamer config
streamer = {}

# Default web config
web =
  port: 50080
  local_only: true



exports.config = config
exports.streamer = streamer
exports.web = web