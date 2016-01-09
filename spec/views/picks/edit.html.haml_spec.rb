require 'rails_helper'

RSpec.describe "picks/edit", type: :view do
  before(:each) do
    @pick = assign(:pick, Pick.create!(
      :golfer => nil,
      :tournament => nil,
      :winnings => "9.99"
    ))
  end

  it "renders the edit pick form" do
    render

    assert_select "form[action=?][method=?]", pick_path(@pick), "post" do

      assert_select "input#pick_golfer_id[name=?]", "pick[golfer_id]"

      assert_select "input#pick_tournament_id[name=?]", "pick[tournament_id]"

      assert_select "input#pick_winnings[name=?]", "pick[winnings]"
    end
  end
end
