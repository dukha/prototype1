require 'spec_helper'

describe "application_languages/new.html.erb" do
  before(:each) do
    assign(:application_language, stub_model(ApplicationLanguage,
      :iso_code => "MyString"
    ).as_new_record)
  end

  it "renders new application_language form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => application_languages_path, :method => "post" do
      assert_select "input#application_language_iso_code", :name => "application_language[iso_code]"
    end
  end
end
