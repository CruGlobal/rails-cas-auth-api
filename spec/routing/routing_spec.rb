require 'rails_helper'

describe 'routes for CasAuthenticatedApi' do
  describe V1 do
    it 'routes GET /v1/service to the V1::ServicesController #show action' do
      expect(get('/v1/service')).to route_to(controller: 'v1/services', action: 'show')
    end

    it 'routes GET /v1/token/new to the V1::TokensController #new action' do
      expect(get('/v1/token/new')).to route_to(controller: 'v1/tokens', action: 'new')
    end

    it 'routes DELETE /v1/token to the V1::TokensController #destroy action' do
      expect(delete('/v1/token')).to route_to(controller: 'v1/tokens', action: 'destroy')
    end
  end

  it 'routes GET /monitors/lb to the MonitorsController #lb action' do
    expect(get('/monitors/lb')).to route_to(controller: 'monitors', action: 'lb')
  end

  it 'routes GET /proxy_callback to the CasController #proxy_callback action' do
    expect(get('/proxy_callback')).to route_to(controller: 'cas', action: 'proxy_callback')
  end

  it 'routes POST /*path requests to the CasController #logout action' do
    expect(post('/proxy_callback')).to route_to(controller: 'cas', action: 'logout', path: 'proxy_callback')
    expect(post('/v1/token/new')).to route_to(controller: 'cas', action: 'logout', path: 'v1/token/new')
    expect(post('/logout')).to route_to(controller: 'cas', action: 'logout', path: 'logout')
  end
end
