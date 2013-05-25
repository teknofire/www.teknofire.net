// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require_tree .

$(document).on('ready', function() {
  $(window).scroll(function() {
    var pos = $(window).scrollTop();
    if(pos > 40) { 
      if(!$('.header').hasClass('small')) {
        $('.header').addClass('small'); 
        // $('#main-menu').animate({ left: (pwidth-width) }, 'slow');
        $('#small-title').fadeIn();        
      }
    } else {
      if($('.header').hasClass('small')) {
        $('.header').removeClass('small');
        // $('#main-menu').animate({ left: 0 }, 'slow');
        $('#small-title').fadeOut();
      }
    }
  })
});
