require 'rails_helper'

RSpec.describe "golfers/new", type: :view do
  before(:each) do
    assign(:golfer, Golfer.new(
      :first_name => "MyString",
      :last_name => "MyString"
    ))
  end

  it "renders new golfer form" do
    render

    assert_select "form[action=?][method=?]", golfers_path, "post" do

      assert_select "input#golfer_first_name[name=?]", "golfer[first_name]"

      assert_select "input#golfer_last_name[name=?]", "golfer[last_name]"
    end
  end
end
