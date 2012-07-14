#
# lib/command.coffee
#
# Copyright (c) 2012 Lee Olayvar <leeolayvar@gmail.com>
# MIT Licensed
#
nomnom = require 'nomnom'


nomnom.script 'fenearstreamer'
nomnom.help 'Start and initialize the Streamer process.'
nomnom.options
  config:
    # This will be replaced with proper os compatability when we use Pork.
    default: '~/.fenearstreamer/config.json'
    abbr: 'c'
    metavar: 'FILE'
    help: 'The config file to use when starting the streamer.'
  
  'http-port':
    default: 80
    abbr: 'p'
    metavar: 'PORT'
    help: 'The HTTP port to use when connecting to the local web interface.'
  
  import:
    list: true
    metavar: 'DIRECTORY'
    help: 'Locations to import music from. Note that the Streamer will not '+
      'import the files found in the given directory if the --read-only flag '+
      'is given. If this is the case, consider setting the intended import '+
      'directory as a library directory, so the Streamer can play music from '+
      'the given directory.'
  
  library:
    # This will be replaced with proper os compatability when we use Pork.
    default: '~/music'
    position: 0
    list: true
    metavar: 'DIRECTORY'
    help: 'Locations of music on disk to stream.'
  
  'local-only':
    default: true
    flag: true
    help: 'Access to the web interface is available to local connections only.'
  
  'read-only':
    default: true
    flag: true
    abbr: 'r'
    help: 'If set, the streamer will not make any changes to any library '+
      'files. This includes any moving of files, editing tags, etc. '+
      'Note that the streamer will still create and save any configuration '+
      'data that is needed.'

nomnom.parse()

console.log 'Hello Fenear User!'
