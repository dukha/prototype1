require 'spec_helper'

describe "whiteboard_types/new.html.erb" do
  before(:each) do
    assign(:whiteboard_type, stub_model(WhiteboardType,
      :name => "MyString",
      :translation_code => "MyString"
    ).as_new_record)
  end

  it "renders new whiteboard_type form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => whiteboard_types_path, :method => "post" do
      assert_select "input#whiteboard_type_name", :name => "whiteboard_type[name]"
      assert_select "input#whiteboard_type_translation_code", :name => "whiteboard_type[translation_code]"
    end
  end
end
