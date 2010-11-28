require 'spec_helper'

describe QuotaSchemasController do

  def mock_quota_schema(stubs={})
    (@mock_quota_schema ||= mock_model(QuotaSchema).as_null_object).tap do |quota_schema|
      quota_schema.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all quota_schemas as @quota_schemas" do
      QuotaSchema.stub(:all) { [mock_quota_schema] }
      get :index
      assigns(:quota_schemas).should eq([mock_quota_schema])
    end
  end

  describe "GET show" do
    it "assigns the requested quota_schema as @quota_schema" do
      QuotaSchema.stub(:find).with("37") { mock_quota_schema }
      get :show, :id => "37"
      assigns(:quota_schema).should be(mock_quota_schema)
    end
  end

  describe "GET new" do
    it "assigns a new quota_schema as @quota_schema" do
      QuotaSchema.stub(:new) { mock_quota_schema }
      get :new
      assigns(:quota_schema).should be(mock_quota_schema)
    end
  end

  describe "GET edit" do
    it "assigns the requested quota_schema as @quota_schema" do
      QuotaSchema.stub(:find).with("37") { mock_quota_schema }
      get :edit, :id => "37"
      assigns(:quota_schema).should be(mock_quota_schema)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created quota_schema as @quota_schema" do
        QuotaSchema.stub(:new).with({'these' => 'params'}) { mock_quota_schema(:save => true) }
        post :create, :quota_schema => {'these' => 'params'}
        assigns(:quota_schema).should be(mock_quota_schema)
      end

      it "redirects to the created quota_schema" do
        QuotaSchema.stub(:new) { mock_quota_schema(:save => true) }
        post :create, :quota_schema => {}
        response.should redirect_to(quota_schema_url(mock_quota_schema))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved quota_schema as @quota_schema" do
        QuotaSchema.stub(:new).with({'these' => 'params'}) { mock_quota_schema(:save => false) }
        post :create, :quota_schema => {'these' => 'params'}
        assigns(:quota_schema).should be(mock_quota_schema)
      end

      it "re-renders the 'new' template" do
        QuotaSchema.stub(:new) { mock_quota_schema(:save => false) }
        post :create, :quota_schema => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested quota_schema" do
        QuotaSchema.should_receive(:find).with("37") { mock_quota_schema }
        mock_quota_schema.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :quota_schema => {'these' => 'params'}
      end

      it "assigns the requested quota_schema as @quota_schema" do
        QuotaSchema.stub(:find) { mock_quota_schema(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:quota_schema).should be(mock_quota_schema)
      end

      it "redirects to the quota_schema" do
        QuotaSchema.stub(:find) { mock_quota_schema(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(quota_schema_url(mock_quota_schema))
      end
    end

    describe "with invalid params" do
      it "assigns the quota_schema as @quota_schema" do
        QuotaSchema.stub(:find) { mock_quota_schema(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:quota_schema).should be(mock_quota_schema)
      end

      it "re-renders the 'edit' template" do
        QuotaSchema.stub(:find) { mock_quota_schema(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested quota_schema" do
      QuotaSchema.should_receive(:find).with("37") { mock_quota_schema }
      mock_quota_schema.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the quota_schemas list" do
      QuotaSchema.stub(:find) { mock_quota_schema }
      delete :destroy, :id => "1"
      response.should redirect_to(quota_schemas_url)
    end
  end

end
