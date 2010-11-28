require 'spec_helper'

describe "quota_schemas/index.html.erb" do
  before(:each) do
    assign(:quota_schemas, [
      stub_model(QuotaSchema,
        :name => "Name"
      ),
      stub_model(QuotaSchema,
        :name => "Name"
      )
    ])
  end

  it "renders a list of quota_schemas" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
