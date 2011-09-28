// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

//Modal Forms (use id="dialog")
$(document).ready(function(){
   $("#dialog").dialog({modal: true, draggable: false, resizable: false , title: $("div#dialog h2").html() });
  $("div#dialog h2").remove();
});