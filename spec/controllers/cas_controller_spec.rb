require 'rails_helper'

RSpec.describe CasController, type: :controller do
  describe 'GET #proxy_callback' do
    it 'responds successfully with an HTTP 200 OK when missing pgtIou' do
      get :proxy_callback
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it 'responds successfully with an HTTP 200 OK and stores pgt' do
      pgt_iou = 'abc123'
      pgt_id = 'PGT-123-abcdef'
      redis_key = ['rails_cas_auth_client', 'pgt_iou', pgt_iou].join(':')

      get :proxy_callback, pgtIou: pgt_iou, pgtId: pgt_id
      expect(response).to be_success
      expect(response).to have_http_status(200)
      expect(CruAuthLib.redis_client.get(redis_key)).to eq(pgt_id)
    end
  end

  describe 'POST #logout' do
    it 'responds with HTTP 400 when missing `logoutRequest` param' do
      post :logout, path: 'logout'
      expect(response).to have_http_status(400)
    end

    it 'responds successfully with an HTTP 200' do
      logout_request = '<samlp:LogoutRequest xmlns:samlp="urn:oasis:names:tc:SAML:2.0:protocol"
            xmlns:saml="urn:oasis:names:tc:SAML:2.0:assertion"
            ID="1" Version="2.0" IssueInstant="2015-09-17T15:12:20Z">
          <saml:NameID>@NOT_USED@</saml:NameID>
          <samlp:SessionIndex>1</samlp:SessionIndex>
        </samlp:LogoutRequest>'
      post :logout, path: 'logout', logoutRequest: logout_request
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end
  end
end
