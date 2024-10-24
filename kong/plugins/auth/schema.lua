local typedefs = require "kong.db.schema.typedefs"

return {
  name = "auth",
  fields = {
    { consumer = typedefs.no_consumer },
    { protocols = typedefs.protocols_http },
    { config = {
        type = "record",
        fields = {
          { auth_service_url = { type = "string", required = true, default = "http://authservice:3001/auth/v1/ping"} }
        }
    } }
  }
}
