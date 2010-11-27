require 'spec_helper'

describe "course_types/index.html.erb" do
  before(:each) do
    assign(:course_types, [
      stub_model(CourseType,
        :oldcode => "Oldcode",
        :translation_code => "Translation Code",
        :name => "Name",
        :description => "Description",
        :last_day => 1
      ),
      stub_model(CourseType,
        :oldcode => "Oldcode",
        :translation_code => "Translation Code",
        :name => "Name",
        :description => "Description",
        :last_day => 1
      )
    ])
  end

  it "renders a list of course_types" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Oldcode".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Translation Code".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
