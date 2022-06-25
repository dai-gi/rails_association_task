require 'rails_helper'

RSpec.describe "italian_foods/edit", type: :view do
  before(:each) do
    @italian_food = assign(:italian_food, ItalianFood.create!())
  end

  it "renders the edit italian_food form" do
    render

    assert_select "form[action=?][method=?]", italian_food_path(@italian_food), "post" do
    end
  end
end
