require 'spec_helper'

describe "votes/new" do
  before(:each) do
    assign(:vote, stub_model(Vote,
      :value => 1,
      :teacher_id => 1,
      :user_id => 1
    ).as_new_record)
  end

  it "renders new vote form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => votes_path, :method => "post" do
      assert_select "input#vote_value", :name => "vote[value]"
      assert_select "input#vote_teacher_id", :name => "vote[teacher_id]"
      assert_select "input#vote_user_id", :name => "vote[user_id]"
    end
  end
end
