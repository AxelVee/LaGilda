require 'spec_helper'

describe "boards/new" do
  before(:each) do
    assign(:board, stub_model(Board,
      :id => 1,
      :title => "MyString"
    ).as_new_record)
  end

  it "renders new board form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => boards_path, :method => "post" do
      assert_select "input#board_id", :name => "board[id]"
      assert_select "input#board_title", :name => "board[title]"
    end
  end
end
