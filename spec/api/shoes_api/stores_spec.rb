require 'spec_helper'

describe ShoesApi::Stores do

  describe "GET /api/v1/services/stores" do
    it "returns an empty array of stores" do
      get '/api/v1/services/stores', nil,
          'HTTP_AUTHORIZATION' => ActionController::HttpAuthentication::Basic.encode_credentials('my_user', 'my_password')

      expect(response.status).to eq 200
      expect(JSON.parse(response.body)["total_elements"]).to eq 0
      # expect(response.body).to eq "{\"stores\":[],\"success\":\"true\",\"total_elements\":0}"
    end
  end

  describe "GET /api/v1/services/stores" do
    it "returns an array of stores" do
      store = FactoryGirl.create(:store)

      get '/api/v1/services/stores', nil,
          'HTTP_AUTHORIZATION' => ActionController::HttpAuthentication::Basic.encode_credentials('my_user', 'my_password')

      expect(response.status).to eq 200
      expect(JSON.parse(response.body)["total_elements"]).to eq 1
    end
  end

end