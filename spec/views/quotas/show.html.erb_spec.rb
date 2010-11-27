require 'spec_helper'

describe "quotas/show.html.erb" do
  before(:each) do
    @quota = assign(:quota, stub_model(Quota,
      :name => "Name",
      :initial_quota => 1,
      :quota => 1,
      :days_from_start_init_to_real => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
