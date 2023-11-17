require "rails_helper"

RSpec.describe ChangeColumnNamesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/change_column_names").to route_to("change_column_names#index")
    end

    it "routes to #new" do
      expect(get: "/change_column_names/new").to route_to("change_column_names#new")
    end

    it "routes to #show" do
      expect(get: "/change_column_names/1").to route_to("change_column_names#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/change_column_names/1/edit").to route_to("change_column_names#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/change_column_names").to route_to("change_column_names#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/change_column_names/1").to route_to("change_column_names#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/change_column_names/1").to route_to("change_column_names#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/change_column_names/1").to route_to("change_column_names#destroy", id: "1")
    end
  end
end
