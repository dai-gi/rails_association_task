require "rails_helper"

RSpec.describe ChineseFoodsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/chinese_foods").to route_to("chinese_foods#index")
    end

    it "routes to #new" do
      expect(get: "/chinese_foods/new").to route_to("chinese_foods#new")
    end

    it "routes to #show" do
      expect(get: "/chinese_foods/1").to route_to("chinese_foods#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/chinese_foods/1/edit").to route_to("chinese_foods#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/chinese_foods").to route_to("chinese_foods#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/chinese_foods/1").to route_to("chinese_foods#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/chinese_foods/1").to route_to("chinese_foods#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/chinese_foods/1").to route_to("chinese_foods#destroy", id: "1")
    end
  end
end
