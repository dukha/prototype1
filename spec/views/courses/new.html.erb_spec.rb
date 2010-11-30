require 'spec_helper'

describe "courses/new.html.erb" do
  before(:each) do
    assign(:course, stub_model(Course,
      :course_type_id => 1,
      :location_id => 1,
      :old_students_only => false
    ).as_new_record)
  end

  it "renders new course form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => courses_path, :method => "post" do
      assert_select "input#course_course_type_id", :name => "course[course_type_id]"
      assert_select "input#course_location_id", :name => "course[location_id]"
      assert_select "input#course_old_students_only", :name => "course[old_students_only]"
    end
  end
end
