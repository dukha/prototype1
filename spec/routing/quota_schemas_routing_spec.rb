require "spec_helper"

describe QuotaSchemasController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/quota_schemas" }.should route_to(:controller => "quota_schemas", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/quota_schemas/new" }.should route_to(:controller => "quota_schemas", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/quota_schemas/1" }.should route_to(:controller => "quota_schemas", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/quota_schemas/1/edit" }.should route_to(:controller => "quota_schemas", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/quota_schemas" }.should route_to(:controller => "quota_schemas", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/quota_schemas/1" }.should route_to(:controller => "quota_schemas", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/quota_schemas/1" }.should route_to(:controller => "quota_schemas", :action => "destroy", :id => "1")
    end

  end
end
