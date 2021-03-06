require 'spec_helper'

describe "locations/edit.html.erb" do
  before(:each) do
    @location = assign(:location, stub_model(Location,
      :new_record? => false,
      :old_code => "MyString",
      :name => "MyString"
    ))
  end

  it "renders the edit location form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => location_path(@location), :method => "post" do
      assert_select "input#location_old_code", :name => "location[old_code]"
      assert_select "input#location_name", :name => "location[name]"
    end
  end
end
