require 'spec_helper'

describe "courses/index.html.erb" do
  before(:each) do
    assign(:courses, [
      stub_model(Course,
        :course_type_id => 1,
        :location_id => 1,
        :active_status_id => 1,
        :old_students_only => false,
        :course_type_id => 1,
        :start_time => "Start Time",
        :end_time => "End Time",
        :assistant_teacher_id => 1,
        :assistant_teacher_special_cases_id => 1,
        :assistant_teacher_email => "Assistant Teacher Email",
        :male_quota_status_id => 1,
        :female_quota_status_id => 1,
        :reconfirmation_days => 1,
        :quota_from_initial_to_actual_days => 1,
        :registrar_email => "Registrar Email",
        :welcome_letter_sent => false,
        :exported_to_os_database => false,
        :quota_schema => 1
      ),
      stub_model(Course,
        :course_type_id => 1,
        :location_id => 1,
        :active_status_id => 1,
        :old_students_only => false,
        :course_type_id => 1,
        :start_time => "Start Time",
        :end_time => "End Time",
        :assistant_teacher_id => 1,
        :assistant_teacher_special_cases_id => 1,
        :assistant_teacher_email => "Assistant Teacher Email",
        :male_quota_status_id => 1,
        :female_quota_status_id => 1,
        :reconfirmation_days => 1,
        :quota_from_initial_to_actual_days => 1,
        :registrar_email => "Registrar Email",
        :welcome_letter_sent => false,
        :exported_to_os_database => false,
        :quota_schema => 1
      )
    ])
  end

  it "renders a list of courses" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Start Time".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "End Time".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Assistant Teacher Email".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Registrar Email".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
