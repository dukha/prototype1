class ApplicationLanguage #< ActiveRecord::Base a non database wallah
  include ActiveModel::Validations 
  
  attr_accessor :iso_code
end
