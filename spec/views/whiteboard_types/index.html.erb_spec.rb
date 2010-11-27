require 'spec_helper'

describe "whiteboard_types/index.html.erb" do
  before(:each) do
    assign(:whiteboard_types, [
      stub_model(WhiteboardType,
        :name => "Name",
        :translation_code => "Translation Code"
      ),
      stub_model(WhiteboardType,
        :name => "Name",
        :translation_code => "Translation Code"
      )
    ])
  end

  it "renders a list of whiteboard_types" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Translation Code".to_s, :count => 2
  end
end
