require 'spec_helper'

describe "application_languages/show.html.erb" do
  before(:each) do
    @application_language = assign(:application_language, stub_model(ApplicationLanguage,
      :iso_code => "Iso Code"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Iso Code/)
  end
end
