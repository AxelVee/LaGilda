require 'spec_helper'

describe "conversations/edit" do
  before(:each) do
    @conversation = assign(:conversation, stub_model(Conversation,
      :id => 1,
      :title => "MyString",
      :board_id => 1
    ))
  end

  it "renders the edit conversation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => conversations_path(@conversation), :method => "post" do
      assert_select "input#conversation_id", :name => "conversation[id]"
      assert_select "input#conversation_title", :name => "conversation[title]"
      assert_select "input#conversation_board_id", :name => "conversation[board_id]"
    end
  end
end
