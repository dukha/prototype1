require 'spec_helper'

describe CourseTypesController do

  def mock_course_type(stubs={})
    (@mock_course_type ||= mock_model(CourseType).as_null_object).tap do |course_type|
      course_type.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all course_types as @course_types" do
      CourseType.stub(:all) { [mock_course_type] }
      get :index
      assigns(:course_types).should eq([mock_course_type])
    end
  end

  describe "GET show" do
    it "assigns the requested course_type as @course_type" do
      CourseType.stub(:find).with("37") { mock_course_type }
      get :show, :id => "37"
      assigns(:course_type).should be(mock_course_type)
    end
  end

  describe "GET new" do
    it "assigns a new course_type as @course_type" do
      CourseType.stub(:new) { mock_course_type }
      get :new
      assigns(:course_type).should be(mock_course_type)
    end
  end

  describe "GET edit" do
    it "assigns the requested course_type as @course_type" do
      CourseType.stub(:find).with("37") { mock_course_type }
      get :edit, :id => "37"
      assigns(:course_type).should be(mock_course_type)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created course_type as @course_type" do
        CourseType.stub(:new).with({'these' => 'params'}) { mock_course_type(:save => true) }
        post :create, :course_type => {'these' => 'params'}
        assigns(:course_type).should be(mock_course_type)
      end

      it "redirects to the created course_type" do
        CourseType.stub(:new) { mock_course_type(:save => true) }
        post :create, :course_type => {}
        response.should redirect_to(course_type_url(mock_course_type))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved course_type as @course_type" do
        CourseType.stub(:new).with({'these' => 'params'}) { mock_course_type(:save => false) }
        post :create, :course_type => {'these' => 'params'}
        assigns(:course_type).should be(mock_course_type)
      end

      it "re-renders the 'new' template" do
        CourseType.stub(:new) { mock_course_type(:save => false) }
        post :create, :course_type => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested course_type" do
        CourseType.should_receive(:find).with("37") { mock_course_type }
        mock_course_type.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :course_type => {'these' => 'params'}
      end

      it "assigns the requested course_type as @course_type" do
        CourseType.stub(:find) { mock_course_type(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:course_type).should be(mock_course_type)
      end

      it "redirects to the course_type" do
        CourseType.stub(:find) { mock_course_type(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(course_type_url(mock_course_type))
      end
    end

    describe "with invalid params" do
      it "assigns the course_type as @course_type" do
        CourseType.stub(:find) { mock_course_type(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:course_type).should be(mock_course_type)
      end

      it "re-renders the 'edit' template" do
        CourseType.stub(:find) { mock_course_type(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested course_type" do
      CourseType.should_receive(:find).with("37") { mock_course_type }
      mock_course_type.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the course_types list" do
      CourseType.stub(:find) { mock_course_type }
      delete :destroy, :id => "1"
      response.should redirect_to(course_types_url)
    end
  end

end
