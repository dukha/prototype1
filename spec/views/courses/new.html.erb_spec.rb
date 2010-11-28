require 'spec_helper'

describe "courses/new.html.erb" do
  before(:each) do
    assign(:course, stub_model(Course,
      :course_type_id => 1,
      :location_id => 1,
      :active_status_id => 1,
      :old_students_only => false,
      :course_type_id => 1,
      :start_time => "MyString",
      :end_time => "MyString",
      :assistant_teacher_id => 1,
      :assistant_teacher_special_cases_id => 1,
      :assistant_teacher_email => "",
      :male_quota_status_id => 1,
      :female_quota_status_id => 1,
      :reconfirmation_days => 1,
      :quota_from_initial_to_actual_days => 1,
      :registrar_email => "",
      :welcome_letter_sent => false,
      :exported_to_os_database => false,
      :quota_schema => 1
    ).as_new_record)
  end

  it "renders new course form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => courses_path, :method => "post" do
      assert_select "input#course_course_type_id", :name => "course[course_type_id]"
      assert_select "input#course_location_id", :name => "course[location_id]"
      assert_select "input#course_active_status_id", :name => "course[active_status_id]"
      assert_select "input#course_old_students_only", :name => "course[old_students_only]"
      assert_select "input#course_course_type_id", :name => "course[course_type_id]"
      assert_select "input#course_start_time", :name => "course[start_time]"
      assert_select "input#course_end_time", :name => "course[end_time]"
      assert_select "input#course_assistant_teacher_id", :name => "course[assistant_teacher_id]"
      assert_select "input#course_assistant_teacher_special_cases_id", :name => "course[assistant_teacher_special_cases_id]"
      assert_select "input#course_assistant_teacher_email", :name => "course[assistant_teacher_email]"
      assert_select "input#course_male_quota_status_id", :name => "course[male_quota_status_id]"
      assert_select "input#course_female_quota_status_id", :name => "course[female_quota_status_id]"
      assert_select "input#course_reconfirmation_days", :name => "course[reconfirmation_days]"
      assert_select "input#course_quota_from_initial_to_actual_days", :name => "course[quota_from_initial_to_actual_days]"
      assert_select "input#course_registrar_email", :name => "course[registrar_email]"
      assert_select "input#course_welcome_letter_sent", :name => "course[welcome_letter_sent]"
      assert_select "input#course_exported_to_os_database", :name => "course[exported_to_os_database]"
      assert_select "input#course_quota_schema", :name => "course[quota_schema]"
    end
  end
end
