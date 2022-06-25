require 'rails_helper'

RSpec.describe "japanese_foods/new", type: :view do
  before(:each) do
    assign(:japanese_food, JapaneseFood.new())
  end

  it "renders new japanese_food form" do
    render

    assert_select "form[action=?][method=?]", japanese_foods_path, "post" do
    end
  end
end
