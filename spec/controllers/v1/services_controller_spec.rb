require "rails_helper"

RSpec.describe V1::ServicesController, type: :controller do
  describe "GET #show" do
    it "responds successfully with an HTTP 200 and service url" do
      get :show
      expect(response).to be_successful
      expect(response).to have_http_status(200)
      expect(response.content_type).to eq("application/json")
      json = JSON.parse(response.body)
      expect(json["data"]["id"]).to eq(new_v1_token_url)
    end
  end
end
