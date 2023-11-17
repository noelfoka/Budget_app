require "rails_helper"

RSpec.describe DetailsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/details").to route_to("details#index")
    end

    it "routes to #new" do
      expect(get: "/details/new").to route_to("details#new")
    end

    it "routes to #show" do
      expect(get: "/details/1").to route_to("details#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/details/1/edit").to route_to("details#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/details").to route_to("details#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/details/1").to route_to("details#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/details/1").to route_to("details#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/details/1").to route_to("details#destroy", id: "1")
    end
  end
end
