require 'spec_helper'

describe "conversations/new" do
  before(:each) do
    assign(:conversation, stub_model(Conversation,
      :id => 1,
      :title => "MyString",
      :board_id => 1
    ).as_new_record)
  end

  it "renders new conversation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => conversations_path, :method => "post" do
      assert_select "input#conversation_id", :name => "conversation[id]"
      assert_select "input#conversation_title", :name => "conversation[title]"
      assert_select "input#conversation_board_id", :name => "conversation[board_id]"
    end
  end
end
