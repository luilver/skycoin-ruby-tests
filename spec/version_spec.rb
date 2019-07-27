require 'sky_api'

api_instance = SkyApi::DefaultApi.new
api_instance.api_client.config.host = 'http://localhost:6420'

describe 'version' do
  result = api_instance.version
  
  it 'check branch' do
    expect(result.branch).to eq 'v0.26.0' 
  end
  
  it 'check version' do
    expect(result.commit).to eq 'ff754084df0912bc0d151529e2893ca86618fb3f' 
  end

  it 'check commit' do
    expect(result.version).to eq '0.26.0' 
  end
end
