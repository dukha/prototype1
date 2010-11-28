require 'spec_helper'

describe "quota_schemas/show.html.erb" do
  before(:each) do
    @quota_schema = assign(:quota_schema, stub_model(QuotaSchema,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
