require "spec_helper"

describe MonitorshipsController do
  describe "routing" do

    it "routes to #index" do
      get("/monitorships").should route_to("monitorships#index")
    end

    it "routes to #new" do
      get("/monitorships/new").should route_to("monitorships#new")
    end

    it "routes to #show" do
      get("/monitorships/1").should route_to("monitorships#show", :id => "1")
    end

    it "routes to #edit" do
      get("/monitorships/1/edit").should route_to("monitorships#edit", :id => "1")
    end

    it "routes to #create" do
      post("/monitorships").should route_to("monitorships#create")
    end

    it "routes to #update" do
      put("/monitorships/1").should route_to("monitorships#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/monitorships/1").should route_to("monitorships#destroy", :id => "1")
    end

  end
end
