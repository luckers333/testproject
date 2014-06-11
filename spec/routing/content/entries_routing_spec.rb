require "spec_helper"

describe Content::EntriesController do
  describe "routing" do

    it "routes to #index" do
      get("/content/entries").should route_to("content/entries#index")
    end

    it "routes to #new" do
      get("/content/entries/new").should route_to("content/entries#new")
    end

    it "routes to #show" do
      get("/content/entries/1").should route_to("content/entries#show", :id => "1")
    end

    it "routes to #edit" do
      get("/content/entries/1/edit").should route_to("content/entries#edit", :id => "1")
    end

    it "routes to #create" do
      post("/content/entries").should route_to("content/entries#create")
    end

    it "routes to #update" do
      put("/content/entries/1").should route_to("content/entries#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/content/entries/1").should route_to("content/entries#destroy", :id => "1")
    end

  end
end
