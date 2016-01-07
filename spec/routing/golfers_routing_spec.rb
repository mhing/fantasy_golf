require "rails_helper"

RSpec.describe GolfersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/golfers").to route_to("golfers#index")
    end

    it "routes to #new" do
      expect(:get => "/golfers/new").to route_to("golfers#new")
    end

    it "routes to #show" do
      expect(:get => "/golfers/1").to route_to("golfers#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/golfers/1/edit").to route_to("golfers#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/golfers").to route_to("golfers#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/golfers/1").to route_to("golfers#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/golfers/1").to route_to("golfers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/golfers/1").to route_to("golfers#destroy", :id => "1")
    end

  end
end
