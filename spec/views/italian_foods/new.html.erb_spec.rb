require 'rails_helper'

RSpec.describe "italian_foods/new", type: :view do
  before(:each) do
    assign(:italian_food, ItalianFood.new())
  end

  it "renders new italian_food form" do
    render

    assert_select "form[action=?][method=?]", italian_foods_path, "post" do
    end
  end
end
