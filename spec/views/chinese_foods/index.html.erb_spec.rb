require 'rails_helper'

RSpec.describe "chinese_foods/index", type: :view do
  before(:each) do
    assign(:chinese_foods, [
      ChineseFood.create!(),
      ChineseFood.create!()
    ])
  end

  it "renders a list of chinese_foods" do
    render
  end
end
