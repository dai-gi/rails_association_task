require 'rails_helper'

RSpec.describe "chinese_foods/new", type: :view do
  before(:each) do
    assign(:chinese_food, ChineseFood.new())
  end

  it "renders new chinese_food form" do
    render

    assert_select "form[action=?][method=?]", chinese_foods_path, "post" do
    end
  end
end
