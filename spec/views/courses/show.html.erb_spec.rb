require 'spec_helper'

describe "courses/show.html.erb" do
  before(:each) do
    @course = assign(:course, stub_model(Course,
      :course_type_id => 1,
      :location_id => 1,
      :old_students_only => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/false/)
  end
end
