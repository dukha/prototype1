class ApplicationController < ActionController::Base
  protect_from_forgery
  
  #@languages= Language.all
  #@title=""
  before_filter :set_user_language
  # This function, together with the scope in routes.rb allows the setting of urls like http://example.com/en/products/1
  def default_url_options(options={})
    logger.debug "default_url_options is passed options: #{options.inspect}\n"
    { :locale => I18n.locale }
  end
  def set_user_language   # (id)
       #logger.info current_user
      if current_user != nil:
          I18n.locale = Language.find_by_id(current_user.language_id).iso_code
      end  
      #logger.info("App controller i18n.locale = " +I18n.locale.to_s)
      #I18n.locale= Language.find_by_id(id).iso_code
      #logger.info("App controller i18n.locale = " +I18n.locale.to_s)
      #default_url_options(options={})
      
  end
   #private  
    #def set_user_language  
     # I18n.locale = 'nl'  
    #end 
end
