require 'rails_helper'

RSpec.describe "beers/index", type: :view do
  before(:each) do
    assign(:beers, [
      Beer.create!(
        :brand => "Brand",
        :style => "Style",
        :country => "Country",
        :quantity => 2
      ),
      Beer.create!(
        :brand => "Brand",
        :style => "Style",
        :country => "Country",
        :quantity => 2
      )
    ])
  end

  xit "renders a list of beers" do
    render
    assert_select "tr>td", :text => "Brand".to_s, :count => 2
    assert_select "tr>td", :text => "Style".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
