require 'rails_helper'

RSpec.describe "golfers/index", type: :view do
  before(:each) do
    assign(:golfers, [
      Golfer.create!(
        :first_name => "First Name",
        :last_name => "Last Name"
      ),
      Golfer.create!(
        :first_name => "First Name",
        :last_name => "Last Name"
      )
    ])
  end

  it "renders a list of golfers" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
  end
end
