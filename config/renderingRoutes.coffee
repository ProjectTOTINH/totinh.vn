app = require './express-server'
url = require 'url'
renderingController = require '../controllers/renderingController'

app.get '/', (req, res) ->
  renderingController.index req, res

render404 = (res) ->
  res.contentType 'text/html'
  res.status 404
  res.render 'error404'


app.get '/en', (req, res) ->
  renderingController.index_en req, res

# "File not found" page
app.all '/*', (req, res) ->
  render404 res

