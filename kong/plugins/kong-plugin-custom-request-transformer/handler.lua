local access = require "kong.plugins.kong-plugin-custom-request-transformer.access"


local RequestModifierHandler = {
  VERSION  = "1.0.0",
  PRIORITY = 905,
}


function RequestModifierHandler:access(conf)
  access.execute(conf)
end


return RequestModifierHandler
