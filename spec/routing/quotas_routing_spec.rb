require "spec_helper"

describe QuotasController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/quotas" }.should route_to(:controller => "quotas", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/quotas/new" }.should route_to(:controller => "quotas", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/quotas/1" }.should route_to(:controller => "quotas", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/quotas/1/edit" }.should route_to(:controller => "quotas", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/quotas" }.should route_to(:controller => "quotas", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/quotas/1" }.should route_to(:controller => "quotas", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/quotas/1" }.should route_to(:controller => "quotas", :action => "destroy", :id => "1")
    end

  end
end
