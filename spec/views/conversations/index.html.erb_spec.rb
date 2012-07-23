require 'spec_helper'

describe "conversations/index" do
  before(:each) do
    assign(:conversations, [
      stub_model(Conversation,
        :id => 1,
        :title => "Title",
        :board_id => 2
      ),
      stub_model(Conversation,
        :id => 1,
        :title => "Title",
        :board_id => 2
      )
    ])
  end

  it "renders a list of conversations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
