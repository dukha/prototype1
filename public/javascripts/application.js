// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
/*
 * This functioon facilitaes the menu
 */
$(function(){

        // Accordion
        $("#accordion").accordion({ header: "h3" });
      }); 

/*
 * Function to change the application language
 */
$(document).ready(function(){
	$("#language_iso_code").change (function(){
		/*$("#firelanguagechange").trigger("click"); 
	});//end change*/
	window.location="/"});
});//end ready

/*
 * Funciton to sort table #large (does not exist now. Striping is added by zebra)
 */
/*$(document).ready(function() {
   $("#large").tablesorter({
     // striping looking
     widgets: ['zebra'] 
   });
 });*/
