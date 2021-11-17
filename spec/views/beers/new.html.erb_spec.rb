require 'rails_helper'

RSpec.describe "beers/new", type: :view do
  before(:each) do
    assign(:beer, Beer.new(
      :brand => "MyString",
      :style => "MyString",
      :country => "MyString",
      :quantity => 1
    ))
  end

  xit "renders new beer form" do
    render

    assert_select "form[action=?][method=?]", beers_path, "post" do

      assert_select "input#beer_brand[name=?]", "beer[brand]"

      assert_select "input#beer_style[name=?]", "beer[style]"

      assert_select "input#beer_country[name=?]", "beer[country]"

      assert_select "input#beer_quantity[name=?]", "beer[quantity]"
    end
  end
end
