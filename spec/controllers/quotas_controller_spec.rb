require 'spec_helper'

describe QuotasController do

  def mock_quota(stubs={})
    (@mock_quota ||= mock_model(Quota).as_null_object).tap do |quota|
      quota.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all quotas as @quotas" do
      Quota.stub(:all) { [mock_quota] }
      get :index
      assigns(:quotas).should eq([mock_quota])
    end
  end

  describe "GET show" do
    it "assigns the requested quota as @quota" do
      Quota.stub(:find).with("37") { mock_quota }
      get :show, :id => "37"
      assigns(:quota).should be(mock_quota)
    end
  end

  describe "GET new" do
    it "assigns a new quota as @quota" do
      Quota.stub(:new) { mock_quota }
      get :new
      assigns(:quota).should be(mock_quota)
    end
  end

  describe "GET edit" do
    it "assigns the requested quota as @quota" do
      Quota.stub(:find).with("37") { mock_quota }
      get :edit, :id => "37"
      assigns(:quota).should be(mock_quota)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created quota as @quota" do
        Quota.stub(:new).with({'these' => 'params'}) { mock_quota(:save => true) }
        post :create, :quota => {'these' => 'params'}
        assigns(:quota).should be(mock_quota)
      end

      it "redirects to the created quota" do
        Quota.stub(:new) { mock_quota(:save => true) }
        post :create, :quota => {}
        response.should redirect_to(quota_url(mock_quota))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved quota as @quota" do
        Quota.stub(:new).with({'these' => 'params'}) { mock_quota(:save => false) }
        post :create, :quota => {'these' => 'params'}
        assigns(:quota).should be(mock_quota)
      end

      it "re-renders the 'new' template" do
        Quota.stub(:new) { mock_quota(:save => false) }
        post :create, :quota => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested quota" do
        Quota.should_receive(:find).with("37") { mock_quota }
        mock_quota.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :quota => {'these' => 'params'}
      end

      it "assigns the requested quota as @quota" do
        Quota.stub(:find) { mock_quota(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:quota).should be(mock_quota)
      end

      it "redirects to the quota" do
        Quota.stub(:find) { mock_quota(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(quota_url(mock_quota))
      end
    end

    describe "with invalid params" do
      it "assigns the quota as @quota" do
        Quota.stub(:find) { mock_quota(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:quota).should be(mock_quota)
      end

      it "re-renders the 'edit' template" do
        Quota.stub(:find) { mock_quota(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested quota" do
      Quota.should_receive(:find).with("37") { mock_quota }
      mock_quota.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the quotas list" do
      Quota.stub(:find) { mock_quota }
      delete :destroy, :id => "1"
      response.should redirect_to(quotas_url)
    end
  end

end
