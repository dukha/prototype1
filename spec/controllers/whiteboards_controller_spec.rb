require 'spec_helper'

describe WhiteboardsController do

  def mock_whiteboard(stubs={})
    (@mock_whiteboard ||= mock_model(Whiteboard).as_null_object).tap do |whiteboard|
      whiteboard.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all whiteboards as @whiteboards" do
      Whiteboard.stub(:all) { [mock_whiteboard] }
      get :index
      assigns(:whiteboards).should eq([mock_whiteboard])
    end
  end

  describe "GET show" do
    it "assigns the requested whiteboard as @whiteboard" do
      Whiteboard.stub(:find).with("37") { mock_whiteboard }
      get :show, :id => "37"
      assigns(:whiteboard).should be(mock_whiteboard)
    end
  end

  describe "GET new" do
    it "assigns a new whiteboard as @whiteboard" do
      Whiteboard.stub(:new) { mock_whiteboard }
      get :new
      assigns(:whiteboard).should be(mock_whiteboard)
    end
  end

  describe "GET edit" do
    it "assigns the requested whiteboard as @whiteboard" do
      Whiteboard.stub(:find).with("37") { mock_whiteboard }
      get :edit, :id => "37"
      assigns(:whiteboard).should be(mock_whiteboard)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created whiteboard as @whiteboard" do
        Whiteboard.stub(:new).with({'these' => 'params'}) { mock_whiteboard(:save => true) }
        post :create, :whiteboard => {'these' => 'params'}
        assigns(:whiteboard).should be(mock_whiteboard)
      end

      it "redirects to the created whiteboard" do
        Whiteboard.stub(:new) { mock_whiteboard(:save => true) }
        post :create, :whiteboard => {}
        response.should redirect_to(whiteboard_url(mock_whiteboard))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved whiteboard as @whiteboard" do
        Whiteboard.stub(:new).with({'these' => 'params'}) { mock_whiteboard(:save => false) }
        post :create, :whiteboard => {'these' => 'params'}
        assigns(:whiteboard).should be(mock_whiteboard)
      end

      it "re-renders the 'new' template" do
        Whiteboard.stub(:new) { mock_whiteboard(:save => false) }
        post :create, :whiteboard => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested whiteboard" do
        Whiteboard.should_receive(:find).with("37") { mock_whiteboard }
        mock_whiteboard.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :whiteboard => {'these' => 'params'}
      end

      it "assigns the requested whiteboard as @whiteboard" do
        Whiteboard.stub(:find) { mock_whiteboard(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:whiteboard).should be(mock_whiteboard)
      end

      it "redirects to the whiteboard" do
        Whiteboard.stub(:find) { mock_whiteboard(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(whiteboard_url(mock_whiteboard))
      end
    end

    describe "with invalid params" do
      it "assigns the whiteboard as @whiteboard" do
        Whiteboard.stub(:find) { mock_whiteboard(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:whiteboard).should be(mock_whiteboard)
      end

      it "re-renders the 'edit' template" do
        Whiteboard.stub(:find) { mock_whiteboard(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested whiteboard" do
      Whiteboard.should_receive(:find).with("37") { mock_whiteboard }
      mock_whiteboard.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the whiteboards list" do
      Whiteboard.stub(:find) { mock_whiteboard }
      delete :destroy, :id => "1"
      response.should redirect_to(whiteboards_url)
    end
  end

end
