require 'spec_helper'

describe "quota_schemas/new.html.erb" do
  before(:each) do
    assign(:quota_schema, stub_model(QuotaSchema,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new quota_schema form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => quota_schemas_path, :method => "post" do
      assert_select "input#quota_schema_name", :name => "quota_schema[name]"
    end
  end
end
