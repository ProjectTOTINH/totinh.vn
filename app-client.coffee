require './config/initial'
logger = require './config/logger'

require './config/application'
require './config/renderingRoutes'

app = require './config/express-server'
config = require './config/common'
srv = app.listen process.env.DEV_WEB_PORT or config.WEB_PORT
logger.info "Express server listening on port " + srv.address().port
