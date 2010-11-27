require "spec_helper"

describe WhiteboardTypesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/whiteboard_types" }.should route_to(:controller => "whiteboard_types", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/whiteboard_types/new" }.should route_to(:controller => "whiteboard_types", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/whiteboard_types/1" }.should route_to(:controller => "whiteboard_types", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/whiteboard_types/1/edit" }.should route_to(:controller => "whiteboard_types", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/whiteboard_types" }.should route_to(:controller => "whiteboard_types", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/whiteboard_types/1" }.should route_to(:controller => "whiteboard_types", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/whiteboard_types/1" }.should route_to(:controller => "whiteboard_types", :action => "destroy", :id => "1")
    end

  end
end
