logger       = Logger.new(STDOUT)
logger.level = Logger::WARN

Mongoid.logger = Moped.logger = logger

Mongoid.identity_map_enabled = true
