local access = require "kong.plugins.request-modifier.access"


local RequestModifierHandler = {
  VERSION  = "0.0.1",
  PRIORITY = 905,
}


function RequestModifierHandler:access(conf)
  access.execute(conf)
end


return RequestModifierHandler
