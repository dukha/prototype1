require 'spec_helper'

describe "languages/new.html.erb" do
  before(:each) do
    assign(:language, stub_model(Language,
      :iso_code => "MyString",
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new language form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => languages_path, :method => "post" do
      assert_select "input#language_iso_code", :name => "language[iso_code]"
      assert_select "input#language_name", :name => "language[name]"
    end
  end
end
