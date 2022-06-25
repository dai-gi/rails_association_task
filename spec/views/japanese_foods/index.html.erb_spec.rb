require 'rails_helper'

RSpec.describe "japanese_foods/index", type: :view do
  before(:each) do
    assign(:japanese_foods, [
      JapaneseFood.create!(),
      JapaneseFood.create!()
    ])
  end

  it "renders a list of japanese_foods" do
    render
  end
end
