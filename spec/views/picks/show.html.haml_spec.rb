require 'rails_helper'

RSpec.describe "picks/show", type: :view do
  before(:each) do
    @pick = assign(:pick, Pick.create!(
      :golfer => nil,
      :tournament => nil,
      :winnings => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/9.99/)
  end
end
