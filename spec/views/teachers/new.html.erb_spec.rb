require 'spec_helper'

describe "teachers/new" do
  before(:each) do
    assign(:teacher, stub_model(Teacher,
      :name => "MyString",
      :cv => "MyText",
      :subject => "MyString",
      :price => 1.5
    ).as_new_record)
  end

  it "renders new teacher form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => teachers_path, :method => "post" do
      assert_select "input#teacher_name", :name => "teacher[name]"
      assert_select "textarea#teacher_cv", :name => "teacher[cv]"
      assert_select "input#teacher_subject", :name => "teacher[subject]"
      assert_select "input#teacher_price", :name => "teacher[price]"
    end
  end
end
