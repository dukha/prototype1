require 'spec_helper'

describe "courses/edit.html.erb" do
  before(:each) do
    @course = assign(:course, stub_model(Course,
      :new_record? => false,
      :course_type_id => 1,
      :location_id => 1,
      :old_students_only => false
    ))
  end

  it "renders the edit course form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => course_path(@course), :method => "post" do
      assert_select "input#course_course_type_id", :name => "course[course_type_id]"
      assert_select "input#course_location_id", :name => "course[location_id]"
      assert_select "input#course_old_students_only", :name => "course[old_students_only]"
    end
  end
end
