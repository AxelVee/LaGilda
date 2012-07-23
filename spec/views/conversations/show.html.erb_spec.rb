require 'spec_helper'

describe "conversations/show" do
  before(:each) do
    @conversation = assign(:conversation, stub_model(Conversation,
      :id => 1,
      :title => "Title",
      :board_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Title/)
    rendered.should match(/2/)
  end
end
