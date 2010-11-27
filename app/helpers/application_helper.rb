module ApplicationHelper
  # Return a title on a per-page basis.
  # This module is actually available to the application because rails makes it part of a mixin
  # the @title iv will come from the other half of the mixin (ie PagesController).??
  #The funciton title is then used in the view (actually the application layout)
  
  
  # constants used in translation as prefix
  $F="formtastic."
  $FL= $F+"labels."
  $FH=$F+"hints."
  $L="links."
  $AR="activerecord."
  $LU="lookups."
  $MU="menus."
  
  $application_name = "Calm Lohitaka"
  $application_version ="0.0.0"
  def titler
    
    if @title.nil?
      $application_name
    else
      "#{$application_name} : #{@title}"
    end
  end
  
  def logo
    #image_tag("http://www.rasmi.dhamma.org/newsletter_images/bodhi.jpg", :alt => "Bodhi leaf not found", :height=>"50px")
    image_tag( "bodhi.gif", :alt => "Bodhi leaf not found", :height=>"50px")
  end
  
  
end
