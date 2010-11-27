require 'spec_helper'

describe "quotas/new.html.erb" do
  before(:each) do
    assign(:quota, stub_model(Quota,
      :name => "MyString",
      :initial_quota => 1,
      :quota => 1,
      :days_from_start_init_to_real => 1
    ).as_new_record)
  end

  it "renders new quota form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => quotas_path, :method => "post" do
      assert_select "input#quota_name", :name => "quota[name]"
      assert_select "input#quota_initial_quota", :name => "quota[initial_quota]"
      assert_select "input#quota_quota", :name => "quota[quota]"
      assert_select "input#quota_days_from_start_init_to_real", :name => "quota[days_from_start_init_to_real]"
    end
  end
end
