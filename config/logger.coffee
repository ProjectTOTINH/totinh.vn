winston = require 'winston'
path = require 'path'
env = require './environment' 
config = require './common'
fs = require 'fs'

logger = new winston.Logger { exitOnError: false }

logger.logRuntimeError = (message, err) ->
  errString = ''
  if err
    errString += ' .Detail: Message = ' + err.message if err.message? and err.message != ''
    errString += '. Error class = ' + err.name if err.name?
    errString += '. Stack = ' + err.stack if err.stack? 
  @error 'Runtime error: ' + message + errString


env.configure_on 'development', ->
 logger.add winston.transports.Console,
   timestamp: true
   colorize: true

module.exports = logger