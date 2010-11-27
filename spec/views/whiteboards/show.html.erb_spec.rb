require 'spec_helper'

describe "whiteboards/show.html.erb" do
  before(:each) do
    @whiteboard = assign(:whiteboard, stub_model(Whiteboard,
      :info => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
