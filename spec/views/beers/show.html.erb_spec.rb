require 'rails_helper'

RSpec.describe "beers/show", type: :view do
  before(:each) do
    @beer = assign(:beer, Beer.create!(
      :brand => "Brand",
      :style => "Style",
      :country => "Country",
      :quantity => 2
    ))
  end

  xit "renders attributes in <p>" do
    render
    expect(rendered).to match(/Brand/)
    expect(rendered).to match(/Style/)
    expect(rendered).to match(/Country/)
    expect(rendered).to match(/2/)
  end
end
