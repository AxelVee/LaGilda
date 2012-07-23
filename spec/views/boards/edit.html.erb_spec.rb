require 'spec_helper'

describe "boards/edit" do
  before(:each) do
    @board = assign(:board, stub_model(Board,
      :id => 1,
      :title => "MyString"
    ))
  end

  it "renders the edit board form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => boards_path(@board), :method => "post" do
      assert_select "input#board_id", :name => "board[id]"
      assert_select "input#board_title", :name => "board[title]"
    end
  end
end
