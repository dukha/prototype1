require 'spec_helper'

describe "course_types/show.html.erb" do
  before(:each) do
    @course_type = assign(:course_type, stub_model(CourseType,
      :oldcode => "Oldcode",
      :translation_code => "Translation Code",
      :name => "Name",
      :description => "Description",
      :last_day => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Oldcode/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Translation Code/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Description/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
