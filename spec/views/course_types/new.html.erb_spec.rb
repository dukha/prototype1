require 'spec_helper'

describe "course_types/new.html.erb" do
  before(:each) do
    assign(:course_type, stub_model(CourseType,
      :oldcode => "MyString",
      :translation_code => "MyString",
      :name => "MyString",
      :description => "MyString",
      :last_day => 1
    ).as_new_record)
  end

  it "renders new course_type form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => course_types_path, :method => "post" do
      assert_select "input#course_type_oldcode", :name => "course_type[oldcode]"
      assert_select "input#course_type_translation_code", :name => "course_type[translation_code]"
      assert_select "input#course_type_name", :name => "course_type[name]"
      assert_select "input#course_type_description", :name => "course_type[description]"
      assert_select "input#course_type_last_day", :name => "course_type[last_day]"
    end
  end
end
