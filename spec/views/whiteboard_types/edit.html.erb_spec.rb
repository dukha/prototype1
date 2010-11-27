require 'spec_helper'

describe "whiteboard_types/edit.html.erb" do
  before(:each) do
    @whiteboard_type = assign(:whiteboard_type, stub_model(WhiteboardType,
      :new_record? => false,
      :name => "MyString",
      :translation_code => "MyString"
    ))
  end

  it "renders the edit whiteboard_type form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => whiteboard_type_path(@whiteboard_type), :method => "post" do
      assert_select "input#whiteboard_type_name", :name => "whiteboard_type[name]"
      assert_select "input#whiteboard_type_translation_code", :name => "whiteboard_type[translation_code]"
    end
  end
end
