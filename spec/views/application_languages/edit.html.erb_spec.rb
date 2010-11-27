require 'spec_helper'

describe "application_languages/edit.html.erb" do
  before(:each) do
    @application_language = assign(:application_language, stub_model(ApplicationLanguage,
      :new_record? => false,
      :iso_code => "MyString"
    ))
  end

  it "renders the edit application_language form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => application_language_path(@application_language), :method => "post" do
      assert_select "input#application_language_iso_code", :name => "application_language[iso_code]"
    end
  end
end
