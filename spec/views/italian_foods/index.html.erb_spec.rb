require 'rails_helper'

RSpec.describe "italian_foods/index", type: :view do
  before(:each) do
    assign(:italian_foods, [
      ItalianFood.create!(),
      ItalianFood.create!()
    ])
  end

  it "renders a list of italian_foods" do
    render
  end
end
