require 'spec_helper'

describe WhiteboardTypesController do

  def mock_whiteboard_type(stubs={})
    (@mock_whiteboard_type ||= mock_model(WhiteboardType).as_null_object).tap do |whiteboard_type|
      whiteboard_type.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all whiteboard_types as @whiteboard_types" do
      WhiteboardType.stub(:all) { [mock_whiteboard_type] }
      get :index
      assigns(:whiteboard_types).should eq([mock_whiteboard_type])
    end
  end

  describe "GET show" do
    it "assigns the requested whiteboard_type as @whiteboard_type" do
      WhiteboardType.stub(:find).with("37") { mock_whiteboard_type }
      get :show, :id => "37"
      assigns(:whiteboard_type).should be(mock_whiteboard_type)
    end
  end

  describe "GET new" do
    it "assigns a new whiteboard_type as @whiteboard_type" do
      WhiteboardType.stub(:new) { mock_whiteboard_type }
      get :new
      assigns(:whiteboard_type).should be(mock_whiteboard_type)
    end
  end

  describe "GET edit" do
    it "assigns the requested whiteboard_type as @whiteboard_type" do
      WhiteboardType.stub(:find).with("37") { mock_whiteboard_type }
      get :edit, :id => "37"
      assigns(:whiteboard_type).should be(mock_whiteboard_type)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created whiteboard_type as @whiteboard_type" do
        WhiteboardType.stub(:new).with({'these' => 'params'}) { mock_whiteboard_type(:save => true) }
        post :create, :whiteboard_type => {'these' => 'params'}
        assigns(:whiteboard_type).should be(mock_whiteboard_type)
      end

      it "redirects to the created whiteboard_type" do
        WhiteboardType.stub(:new) { mock_whiteboard_type(:save => true) }
        post :create, :whiteboard_type => {}
        response.should redirect_to(whiteboard_type_url(mock_whiteboard_type))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved whiteboard_type as @whiteboard_type" do
        WhiteboardType.stub(:new).with({'these' => 'params'}) { mock_whiteboard_type(:save => false) }
        post :create, :whiteboard_type => {'these' => 'params'}
        assigns(:whiteboard_type).should be(mock_whiteboard_type)
      end

      it "re-renders the 'new' template" do
        WhiteboardType.stub(:new) { mock_whiteboard_type(:save => false) }
        post :create, :whiteboard_type => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested whiteboard_type" do
        WhiteboardType.should_receive(:find).with("37") { mock_whiteboard_type }
        mock_whiteboard_type.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :whiteboard_type => {'these' => 'params'}
      end

      it "assigns the requested whiteboard_type as @whiteboard_type" do
        WhiteboardType.stub(:find) { mock_whiteboard_type(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:whiteboard_type).should be(mock_whiteboard_type)
      end

      it "redirects to the whiteboard_type" do
        WhiteboardType.stub(:find) { mock_whiteboard_type(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(whiteboard_type_url(mock_whiteboard_type))
      end
    end

    describe "with invalid params" do
      it "assigns the whiteboard_type as @whiteboard_type" do
        WhiteboardType.stub(:find) { mock_whiteboard_type(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:whiteboard_type).should be(mock_whiteboard_type)
      end

      it "re-renders the 'edit' template" do
        WhiteboardType.stub(:find) { mock_whiteboard_type(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested whiteboard_type" do
      WhiteboardType.should_receive(:find).with("37") { mock_whiteboard_type }
      mock_whiteboard_type.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the whiteboard_types list" do
      WhiteboardType.stub(:find) { mock_whiteboard_type }
      delete :destroy, :id => "1"
      response.should redirect_to(whiteboard_types_url)
    end
  end

end
