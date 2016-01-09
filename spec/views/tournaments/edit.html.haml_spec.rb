require 'rails_helper'

RSpec.describe "tournaments/edit", type: :view do
  before(:each) do
    @tournament = assign(:tournament, Tournament.create!(
      :name => "MyString",
      :major => false,
      :fedex_playoff => false
    ))
  end

  it "renders the edit tournament form" do
    render

    assert_select "form[action=?][method=?]", tournament_path(@tournament), "post" do

      assert_select "input#tournament_name[name=?]", "tournament[name]"

      assert_select "input#tournament_major[name=?]", "tournament[major]"

      assert_select "input#tournament_fedex_playoff[name=?]", "tournament[fedex_playoff]"
    end
  end
end
