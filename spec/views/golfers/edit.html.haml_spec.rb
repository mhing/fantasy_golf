require 'rails_helper'

RSpec.describe "golfers/edit", type: :view do
  before(:each) do
    @golfer = assign(:golfer, Golfer.create!(
      :first_name => "MyString",
      :last_name => "MyString"
    ))
  end

  it "renders the edit golfer form" do
    render

    assert_select "form[action=?][method=?]", golfer_path(@golfer), "post" do

      assert_select "input#golfer_first_name[name=?]", "golfer[first_name]"

      assert_select "input#golfer_last_name[name=?]", "golfer[last_name]"
    end
  end
end
