require "rails_helper"

RSpec.describe ItalianFoodsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/italian_foods").to route_to("italian_foods#index")
    end

    it "routes to #new" do
      expect(get: "/italian_foods/new").to route_to("italian_foods#new")
    end

    it "routes to #show" do
      expect(get: "/italian_foods/1").to route_to("italian_foods#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/italian_foods/1/edit").to route_to("italian_foods#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/italian_foods").to route_to("italian_foods#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/italian_foods/1").to route_to("italian_foods#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/italian_foods/1").to route_to("italian_foods#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/italian_foods/1").to route_to("italian_foods#destroy", id: "1")
    end
  end
end
