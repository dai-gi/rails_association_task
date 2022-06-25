require 'rails_helper'

RSpec.describe "italian_foods/show", type: :view do
  before(:each) do
    @italian_food = assign(:italian_food, ItalianFood.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
