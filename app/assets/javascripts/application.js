// ...
//= require_tree .


//Modal Forms (use id="dialog")
$(document).ready(function(){
   $("#dialog").dialog({
	   modal: true, 
	   draggable: false, 
	   resizable: false, 
	   title: $("div#dialog h2").html()
   });
   $("div#dialog h2").remove();
});

//Bestsellers slides (use id="bestseller_slides")
$(document).ready(function(){
    $('#bestsellers_slides').bxSlider({
       randomStart: true,
       minSlides: 1,
       maxSlides: 10,
       moveSlides: 1,
       slideWidth: 100,
       slideMargin: 10,
       pager: false,
       controls: false,
       auto: true
    });    
  });