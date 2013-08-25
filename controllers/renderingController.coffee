Base = require './baseController'

class Controller extends Base
  index: (req, res) ->
    @doRendering res, 'index'
    
  index_en: (req, res) ->
    @doRendering res, 'index', 'en'
  
module.exports = new Controller