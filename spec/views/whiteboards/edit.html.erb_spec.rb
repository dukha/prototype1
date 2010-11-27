require 'spec_helper'

describe "whiteboards/edit.html.erb" do
  before(:each) do
    @whiteboard = assign(:whiteboard, stub_model(Whiteboard,
      :new_record? => false,
      :info => "MyText"
    ))
  end

  it "renders the edit whiteboard form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => whiteboard_path(@whiteboard), :method => "post" do
      assert_select "textarea#whiteboard_info", :name => "whiteboard[info]"
    end
  end
end
