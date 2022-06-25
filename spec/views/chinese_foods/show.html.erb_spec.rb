require 'rails_helper'

RSpec.describe "chinese_foods/show", type: :view do
  before(:each) do
    @chinese_food = assign(:chinese_food, ChineseFood.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
