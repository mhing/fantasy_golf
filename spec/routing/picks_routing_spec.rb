require "rails_helper"

RSpec.describe PicksController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/picks").to route_to("picks#index")
    end

    it "routes to #new" do
      expect(:get => "/picks/new").to route_to("picks#new")
    end

    it "routes to #show" do
      expect(:get => "/picks/1").to route_to("picks#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/picks/1/edit").to route_to("picks#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/picks").to route_to("picks#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/picks/1").to route_to("picks#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/picks/1").to route_to("picks#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/picks/1").to route_to("picks#destroy", :id => "1")
    end

  end
end
