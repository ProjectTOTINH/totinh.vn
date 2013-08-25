logger = require './logger'
env = require './environment'
config = require './common'

env.configure_on 'development', ->
  config.WEBSOCKET_PORT = 8000
  config.WEB_PORT = 7000

process.on 'uncaughtException', (err) ->
  logger.logRuntimeError 'Opp, there is an unhandled exception happended somewhere in system', err