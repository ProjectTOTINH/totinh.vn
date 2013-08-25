config = require './common'

module.exports = 
  name : config.ENVIRONMENT
  configure_on : (env_name, fn) -> fn() if env_name == @name