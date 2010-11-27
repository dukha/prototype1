class ApplicationLanguagesController < ApplicationController
  # GET /application_languages
  # GET /application_languages.xml
 
  # GET /application_languages/1/edit
  def edit
    @application_language = ApplicationLanguage.find(params[:id])
  end

  

  # PUT /application_languages/1
  # PUT /application_languages/1.xml
  def show
    #@iso_code = params[:id]
    id= params[:id]
    uri = request.request_uri
    logger.info("uri: "+ uri)
    #app_lang = params[:iso_code]
    logger.info("id: " + id)
    set_user_lang(id)
    respond_to do |format|
      format.html render  root_path # show.html.erb
      format.xml  #{ render :xml => @course_type }
    end
    
    #@application_language = Language.find(params[:id])

    #respond_to do |format|
    #  if @application_language.update_attributes(params[:application_language])
    #    format.html { redirect_to(@application_language, :notice => 'Application language was successfully updated.') }
    #    format.xml  { head :ok }
   #   else
   #     format.html { render :action => "edit" }
   #     format.xml  { render :xml => @application_language.errors, :status => :unprocessable_entity }
   #   end
   # end
  end

 
end
