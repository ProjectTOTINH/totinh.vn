path = require 'path'
# Global constants
getEnvironmentOrDefault = ->
  return process.env.NODE_ENV or 'development'

baseAppPath = path.dirname __dirname

config =
  APP_FOLDER_PATH: baseAppPath
  WEBSOCKET_PORT: 443
  WEB_PORT: 80
  ENVIRONMENT: getEnvironmentOrDefault()
  APP_VERSION: '1.0'
  WEB_PUBLIC_FOLDER_PATH: path.join(baseAppPath, 'public')
  WEB_VIEWS_TEMPLATE_FOLDER_PATH: path.join(baseAppPath, 'views')
  
module.exports = config