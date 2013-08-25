config = require '../config/common'

class Controller
  getTimestamp: ->
    ''
  
  doRendering: (res, name, lang, templateData) ->
    ts = @getTimestamp()
    tsString = if ts then '.' + ts else ''
    templateData ?= {}
    appData = 
      apiServerName: process.env.API_SERVER_NAME or ''
      apiServerPort: parseInt(process.env.API_SERVER_PORT) or null
      socketPort: config.WEBSOCKET_PORT
    templateData.environment = config.ENVIRONMENT
    templateData.app_data = JSON.stringify appData
    if lang
      if lang == 'vi'
        templateData.lang = 'vn'
      else
        templateData.lang = lang
    else
      templateData.lang = 'vn'
    templateData.timestamp = tsString
    res.contentType 'text/html'
    res.render 'application/' + name, templateData
      
module.exports = Controller