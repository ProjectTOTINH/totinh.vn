express = require 'express'
app = require './express-server'
path = require 'path'
env = require './environment'
config = require './common'

app.configure ->
  app.set 'views', config.WEB_VIEWS_TEMPLATE_FOLDER_PATH
  app.set 'view engine', 'jade'
  app.use express.bodyParser()
  app.use express.methodOverride()
  app.use express.static(config.WEB_PUBLIC_FOLDER_PATH, { maxAge: config.STATIC_FILE_CACHE_DURATION })
  app.use app.router

app.configure 'development', ->
  app.use(express.errorHandler({ dumpExceptions: true, showStack: true }))

