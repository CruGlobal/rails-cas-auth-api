require "rails_helper"
require "webmock/rspec"

WebMock.disable_net_connect!(allow_localhost: true)

RSpec.describe V1::TokensController, type: :controller do
  context "#new" do
    it "responds with an HTTP 400 when missing `st` param" do
      get :new
      expect(response).to have_http_status(400)
    end

    it "responds with an HTTP 200 and access_token for valid service ticket" do
      service_ticket = "ST-1234-abcdef0123456789"
      email = "test.user@example.com"
      guid = "3719A628-9EFC-4D62-B019-0C7B8D066F55"
      first_name = "Test"
      last_name = "User"
      pgt_iou = "PGTIOU-1234-abcdef0123456789"
      pgt = "PGT-4321-0123456789abcdef"
      redis_key = ["rails_cas_auth_client", "pgt_iou", pgt_iou].join(":")
      proxy_validate_response = %(
        <cas:serviceResponse xmlns:cas="http://www.yale.edu/tp/cas">
          <cas:authenticationSuccess>
            <cas:user>#{email}</cas:user>
            <cas:attributes>
              <firstName>#{first_name}</firstName>
              <lastName>#{last_name}</lastName>
              <theKeyGuid>#{guid}</theKeyGuid>
              <relayGuid>#{guid}</relayGuid>
              <email>#{email}</email>
              <ssoGuid>#{guid}</ssoGuid>
            </cas:attributes>
            <cas:proxyGrantingTicket>#{pgt_iou}</cas:proxyGrantingTicket>
          </cas:authenticationSuccess>
        </cas:serviceResponse>
      )

      stub_request(:any, "#{ENV["CAS_BASE_URL"]}/proxyValidate")
        .with(query: hash_including(ticket: service_ticket))
        .to_return(status: 200, body: proxy_validate_response)
      CruAuthLib.redis_client.setex(redis_key, 30, pgt)
      get :new, params: {st: service_ticket}
      expect(response).to be_successful
      expect(response).to have_http_status(200)
      expect(response.content_type).to eq("application/json; charset=utf-8")
      json = JSON.parse(response.body)
      expect(json["data"]["attributes"]["key-guid"]).to eq(guid)
      expect(json["data"]["attributes"]["email"]).to eq(email)
      expect(json["data"]["attributes"]["first-name"]).to eq(first_name)
      expect(json["data"]["attributes"]["last-name"]).to eq(last_name)
    end

    it "responds with an HTTP 400 for invalid service ticket" do
      service_ticket = "ST-1234-abcdef0123456789"
      proxy_validate_response = %(
        <cas:serviceResponse xmlns:cas='http://www.yale.edu/tp/cas'>
          <cas:authenticationFailure code='INVALID_TICKET'>
            Ticket &#039;#{service_ticket}&#039; not recognized
          </cas:authenticationFailure>
        </cas:serviceResponse>
      )
      stub_request(:any, "#{ENV["CAS_BASE_URL"]}/proxyValidate")
        .with(query: hash_including(ticket: service_ticket))
        .to_return(status: 200, body: proxy_validate_response)

      get :new, params: {st: service_ticket}
      expect(response).to have_http_status(400)
    end
  end

  context "#destroy" do
    it "responds with an HTTP 200 and destroys the access_token" do
      guid = "3719A628-9EFC-4D62-B019-0C7B8D066F55"
      access_token = CruAuthLib::AccessToken.new(key_guid: guid)
      token = access_token.attributes[:token]
      request.env["HTTP_AUTHORIZATION"] = "Bearer #{token}"
      delete :destroy
      expect(response).to be_successful
      expect(response).to have_http_status(200)
      expect(CruAuthLib::AccessToken.read(token)).to be_nil
    end
  end
end
