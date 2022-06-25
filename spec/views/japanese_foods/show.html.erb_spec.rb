require 'rails_helper'

RSpec.describe "japanese_foods/show", type: :view do
  before(:each) do
    @japanese_food = assign(:japanese_food, JapaneseFood.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
