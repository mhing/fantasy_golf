require 'rails_helper'

RSpec.describe "Picks", type: :request do
  describe "GET /picks" do
    it "works! (now write some real specs)" do
      get picks_path
      expect(response).to have_http_status(200)
    end
  end
end
