require 'spec_helper'

describe "languages/show.html.erb" do
  before(:each) do
    @language = assign(:language, stub_model(Language,
      :iso_code => "Iso Code",
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Iso Code/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
