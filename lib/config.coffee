#
# lib/config.coffee
#
# A simple config reader/writer
#
# Copyright (c) 2012 Lee Olayvar <leeolayvar@gmail.com>
# MIT Licensed
#
pork = require 'pork'

exports.read = (file, callback) ->
  pork.read file, (err, data) ->
    if err
      throw err
    callback JSON.parse data

exports.write = (file, json, callback) ->
  pork.write file, JSON.stringify(json, undefined, 2), (err) ->
    if err
      throw err
    callback()
