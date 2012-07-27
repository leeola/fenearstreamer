#
# lib/web/index.coffee
#
# The web interface for Fenear Streamer.
#
# Copyright (c) 2012 Lee Olayvar <leeolayvar@gmail.com>
# MIT Licensed
#
main = require './main'



exports.app = require './app'
exports.main = main
exports.start = main.start