require 'rails_helper'

RSpec.describe "japanese_foods/edit", type: :view do
  before(:each) do
    @japanese_food = assign(:japanese_food, JapaneseFood.create!())
  end

  it "renders the edit japanese_food form" do
    render

    assert_select "form[action=?][method=?]", japanese_food_path(@japanese_food), "post" do
    end
  end
end
