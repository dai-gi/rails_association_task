require 'rails_helper'

RSpec.describe "chinese_foods/edit", type: :view do
  before(:each) do
    @chinese_food = assign(:chinese_food, ChineseFood.create!())
  end

  it "renders the edit chinese_food form" do
    render

    assert_select "form[action=?][method=?]", chinese_food_path(@chinese_food), "post" do
    end
  end
end
