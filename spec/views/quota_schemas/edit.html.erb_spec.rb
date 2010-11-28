require 'spec_helper'

describe "quota_schemas/edit.html.erb" do
  before(:each) do
    @quota_schema = assign(:quota_schema, stub_model(QuotaSchema,
      :new_record? => false,
      :name => "MyString"
    ))
  end

  it "renders the edit quota_schema form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => quota_schema_path(@quota_schema), :method => "post" do
      assert_select "input#quota_schema_name", :name => "quota_schema[name]"
    end
  end
end
