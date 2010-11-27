require 'spec_helper'

describe "quotas/index.html.erb" do
  before(:each) do
    assign(:quotas, [
      stub_model(Quota,
        :name => "Name",
        :initial_quota => 1,
        :quota => 1,
        :days_from_start_init_to_real => 1
      ),
      stub_model(Quota,
        :name => "Name",
        :initial_quota => 1,
        :quota => 1,
        :days_from_start_init_to_real => 1
      )
    ])
  end

  it "renders a list of quotas" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
