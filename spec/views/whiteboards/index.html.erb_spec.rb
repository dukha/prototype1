require 'spec_helper'

describe "whiteboards/index.html.erb" do
  before(:each) do
    assign(:whiteboards, [
      stub_model(Whiteboard,
        :info => "MyText"
      ),
      stub_model(Whiteboard,
        :info => "MyText"
      )
    ])
  end

  it "renders a list of whiteboards" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
