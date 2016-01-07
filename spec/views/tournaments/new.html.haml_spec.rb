require 'rails_helper'

RSpec.describe "tournaments/new", type: :view do
  before(:each) do
    assign(:tournament, Tournament.new(
      :name => "MyString",
      :major => false,
      :fedex_playoff => false
    ))
  end

  it "renders new tournament form" do
    render

    assert_select "form[action=?][method=?]", tournaments_path, "post" do

      assert_select "input#tournament_name[name=?]", "tournament[name]"

      assert_select "input#tournament_major[name=?]", "tournament[major]"

      assert_select "input#tournament_fedex_playoff[name=?]", "tournament[fedex_playoff]"
    end
  end
end
