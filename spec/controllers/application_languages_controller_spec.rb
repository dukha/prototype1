require 'spec_helper'

describe ApplicationLanguagesController do

  def mock_application_language(stubs={})
    (@mock_application_language ||= mock_model(ApplicationLanguage).as_null_object).tap do |application_language|
      application_language.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all application_languages as @application_languages" do
      ApplicationLanguage.stub(:all) { [mock_application_language] }
      get :index
      assigns(:application_languages).should eq([mock_application_language])
    end
  end

  describe "GET show" do
    it "assigns the requested application_language as @application_language" do
      ApplicationLanguage.stub(:find).with("37") { mock_application_language }
      get :show, :id => "37"
      assigns(:application_language).should be(mock_application_language)
    end
  end

  describe "GET new" do
    it "assigns a new application_language as @application_language" do
      ApplicationLanguage.stub(:new) { mock_application_language }
      get :new
      assigns(:application_language).should be(mock_application_language)
    end
  end

  describe "GET edit" do
    it "assigns the requested application_language as @application_language" do
      ApplicationLanguage.stub(:find).with("37") { mock_application_language }
      get :edit, :id => "37"
      assigns(:application_language).should be(mock_application_language)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created application_language as @application_language" do
        ApplicationLanguage.stub(:new).with({'these' => 'params'}) { mock_application_language(:save => true) }
        post :create, :application_language => {'these' => 'params'}
        assigns(:application_language).should be(mock_application_language)
      end

      it "redirects to the created application_language" do
        ApplicationLanguage.stub(:new) { mock_application_language(:save => true) }
        post :create, :application_language => {}
        response.should redirect_to(application_language_url(mock_application_language))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved application_language as @application_language" do
        ApplicationLanguage.stub(:new).with({'these' => 'params'}) { mock_application_language(:save => false) }
        post :create, :application_language => {'these' => 'params'}
        assigns(:application_language).should be(mock_application_language)
      end

      it "re-renders the 'new' template" do
        ApplicationLanguage.stub(:new) { mock_application_language(:save => false) }
        post :create, :application_language => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested application_language" do
        ApplicationLanguage.should_receive(:find).with("37") { mock_application_language }
        mock_application_language.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :application_language => {'these' => 'params'}
      end

      it "assigns the requested application_language as @application_language" do
        ApplicationLanguage.stub(:find) { mock_application_language(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:application_language).should be(mock_application_language)
      end

      it "redirects to the application_language" do
        ApplicationLanguage.stub(:find) { mock_application_language(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(application_language_url(mock_application_language))
      end
    end

    describe "with invalid params" do
      it "assigns the application_language as @application_language" do
        ApplicationLanguage.stub(:find) { mock_application_language(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:application_language).should be(mock_application_language)
      end

      it "re-renders the 'edit' template" do
        ApplicationLanguage.stub(:find) { mock_application_language(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested application_language" do
      ApplicationLanguage.should_receive(:find).with("37") { mock_application_language }
      mock_application_language.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the application_languages list" do
      ApplicationLanguage.stub(:find) { mock_application_language }
      delete :destroy, :id => "1"
      response.should redirect_to(application_languages_url)
    end
  end

end
