require 'rails_helper'

RSpec.describe "picks/new", type: :view do
  before(:each) do
    assign(:pick, Pick.new(
      :golfer => nil,
      :tournament => nil,
      :winnings => "9.99"
    ))
  end

  it "renders new pick form" do
    render

    assert_select "form[action=?][method=?]", picks_path, "post" do

      assert_select "input#pick_golfer_id[name=?]", "pick[golfer_id]"

      assert_select "input#pick_tournament_id[name=?]", "pick[tournament_id]"

      assert_select "input#pick_winnings[name=?]", "pick[winnings]"
    end
  end
end
