require 'spec_helper'

describe "languages/index.html.erb" do
  before(:each) do
    assign(:languages, [
      stub_model(Language,
        :iso_code => "Iso Code",
        :name => "Name"
      ),
      stub_model(Language,
        :iso_code => "Iso Code",
        :name => "Name"
      )
    ])
  end

  it "renders a list of languages" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Iso Code".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
