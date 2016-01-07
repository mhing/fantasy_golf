require 'rails_helper'

RSpec.describe "picks/index", type: :view do
  before(:each) do
    assign(:picks, [
      Pick.create!(
        :golfer => nil,
        :tournament => nil,
        :winnings => "9.99"
      ),
      Pick.create!(
        :golfer => nil,
        :tournament => nil,
        :winnings => "9.99"
      )
    ])
  end

  it "renders a list of picks" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
