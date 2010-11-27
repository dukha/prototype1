require 'spec_helper'

describe "languages/edit.html.erb" do
  before(:each) do
    @language = assign(:language, stub_model(Language,
      :new_record? => false,
      :iso_code => "MyString",
      :name => "MyString"
    ))
  end

  it "renders the edit language form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => language_path(@language), :method => "post" do
      assert_select "input#language_iso_code", :name => "language[iso_code]"
      assert_select "input#language_name", :name => "language[name]"
    end
  end
end
