require "rails_helper"

RSpec.describe JapaneseFoodsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/japanese_foods").to route_to("japanese_foods#index")
    end

    it "routes to #new" do
      expect(get: "/japanese_foods/new").to route_to("japanese_foods#new")
    end

    it "routes to #show" do
      expect(get: "/japanese_foods/1").to route_to("japanese_foods#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/japanese_foods/1/edit").to route_to("japanese_foods#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/japanese_foods").to route_to("japanese_foods#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/japanese_foods/1").to route_to("japanese_foods#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/japanese_foods/1").to route_to("japanese_foods#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/japanese_foods/1").to route_to("japanese_foods#destroy", id: "1")
    end
  end
end
