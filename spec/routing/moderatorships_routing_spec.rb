require "spec_helper"

describe ModeratorshipsController do
  describe "routing" do

    it "routes to #index" do
      get("/moderatorships").should route_to("moderatorships#index")
    end

    it "routes to #new" do
      get("/moderatorships/new").should route_to("moderatorships#new")
    end

    it "routes to #show" do
      get("/moderatorships/1").should route_to("moderatorships#show", :id => "1")
    end

    it "routes to #edit" do
      get("/moderatorships/1/edit").should route_to("moderatorships#edit", :id => "1")
    end

    it "routes to #create" do
      post("/moderatorships").should route_to("moderatorships#create")
    end

    it "routes to #update" do
      put("/moderatorships/1").should route_to("moderatorships#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/moderatorships/1").should route_to("moderatorships#destroy", :id => "1")
    end

  end
end
