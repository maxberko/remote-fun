require 'rails_helper'

RSpec.describe "games/edit", type: :view do
  before(:each) do
    @game = assign(:game, Game.create!(
      :title => "MyString",
      :description => "MyText",
      :url => "MyString",
      :price => 1,
      :paying => false,
      :score => 1
    ))
  end

  it "renders the edit game form" do
    render

    assert_select "form[action=?][method=?]", game_path(@game), "post" do

      assert_select "input[name=?]", "game[title]"

      assert_select "textarea[name=?]", "game[description]"

      assert_select "input[name=?]", "game[url]"

      assert_select "input[name=?]", "game[price]"

      assert_select "input[name=?]", "game[paying]"

      assert_select "input[name=?]", "game[score]"
    end
  end
end
