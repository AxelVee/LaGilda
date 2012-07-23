require 'spec_helper'

describe "comments/new" do
  before(:each) do
    assign(:comment, stub_model(Comment,
      :id => 1,
      :user_id => 1,
      :conversation_id => 1,
      :body => "MyText"
    ).as_new_record)
  end

  it "renders new comment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => comments_path, :method => "post" do
      assert_select "input#comment_id", :name => "comment[id]"
      assert_select "input#comment_user_id", :name => "comment[user_id]"
      assert_select "input#comment_conversation_id", :name => "comment[conversation_id]"
      assert_select "textarea#comment_body", :name => "comment[body]"
    end
  end
end
