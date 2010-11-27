require 'spec_helper'

describe "whiteboards/new.html.erb" do
  before(:each) do
    assign(:whiteboard, stub_model(Whiteboard,
      :info => "MyText"
    ).as_new_record)
  end

  it "renders new whiteboard form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => whiteboards_path, :method => "post" do
      assert_select "textarea#whiteboard_info", :name => "whiteboard[info]"
    end
  end
end
