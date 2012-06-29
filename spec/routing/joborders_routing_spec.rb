require "spec_helper"

describe JobordersController do
  describe "routing" do

    it "routes to #index" do
      get("/joborders").should route_to("joborders#index")
    end

    it "routes to #new" do
      get("/joborders/new").should route_to("joborders#new")
    end

    it "routes to #show" do
      get("/joborders/1").should route_to("joborders#show", :id => "1")
    end

    it "routes to #edit" do
      get("/joborders/1/edit").should route_to("joborders#edit", :id => "1")
    end

    it "routes to #create" do
      post("/joborders").should route_to("joborders#create")
    end

    it "routes to #update" do
      put("/joborders/1").should route_to("joborders#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/joborders/1").should route_to("joborders#destroy", :id => "1")
    end

  end
end
