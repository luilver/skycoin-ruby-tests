
require 'sky_api'

api_instance = SkyApi::DefaultApi.new
# Set prefered host
api_instance.api_client.config.host = 'http://localhost:6420'

begin
   #Returns the total number of unique address that have coins.
  result = api_instance.version
  p result
rescue SkyApi::ApiError => e
  puts "Exception when calling DefaultApi->version: #{e}"
end
