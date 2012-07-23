require 'spec_helper'

describe "teachers/index" do
  before(:each) do
    assign(:teachers, [
      stub_model(Teacher,
        :name => "Name",
        :cv => "MyText",
        :subject => "Subject",
        :price => 1.5
      ),
      stub_model(Teacher,
        :name => "Name",
        :cv => "MyText",
        :subject => "Subject",
        :price => 1.5
      )
    ])
  end

  it "renders a list of teachers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Subject".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
