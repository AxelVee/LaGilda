require 'spec_helper'

describe "lessons/edit" do
  before(:each) do
    @lesson = assign(:lesson, stub_model(Lesson,
      :hour => "MyText",
      :teacher_id => 1
    ))
  end

  it "renders the edit lesson form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => lessons_path(@lesson), :method => "post" do
      assert_select "textarea#lesson_hour", :name => "lesson[hour]"
      assert_select "input#lesson_teacher_id", :name => "lesson[teacher_id]"
    end
  end
end
