require 'spec_helper'

describe "whiteboard_types/show.html.erb" do
  before(:each) do
    @whiteboard_type = assign(:whiteboard_type, stub_model(WhiteboardType,
      :name => "Name",
      :translation_code => "Translation Code"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Translation Code/)
  end
end
