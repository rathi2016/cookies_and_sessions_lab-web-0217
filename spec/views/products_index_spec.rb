require 'rails_helper'

RSpec.describe "products/index", :type => :view do
  it "shows everything in the cart" do
    assign(:cart, ['apples', 'purple', 'pears'])
    render
    
    expect(rendered).to include 'apples'
    expect(rendered).to include 'purple'
    expect(rendered).to include 'pears'
  end
end
