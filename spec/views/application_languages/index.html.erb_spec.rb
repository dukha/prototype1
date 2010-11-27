require 'spec_helper'

describe "application_languages/index.html.erb" do
  before(:each) do
    assign(:application_languages, [
      stub_model(ApplicationLanguage,
        :iso_code => "Iso Code"
      ),
      stub_model(ApplicationLanguage,
        :iso_code => "Iso Code"
      )
    ])
  end

  it "renders a list of application_languages" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Iso Code".to_s, :count => 2
  end
end
