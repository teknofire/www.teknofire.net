# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

scrollHeader = ->
  hide_header = $('body').hasClass('hide_header');
  pos = $(window).scrollTop();
  
  if hide_header || pos > 40 
    if !$('body').hasClass('scrolled')
      $('body').addClass('scrolled'); 
      # // $('#main-menu').animate({ left: (pwidth-width) }, 'slow');
      $('#small-title').fadeIn();        
    #end
  else
    if $('body').hasClass('scrolled')
      $('body').removeClass('scrolled');
      # // $('#main-menu').animate({ left: 0 }, 'slow');
      $('#small-title').fadeOut();
    #end
  #end

$(document).on 'ready', =>
  $(window).scroll(scrollHeader);
  scrollHeader();
  
  $(document).on 'click', '[data-scroll]', (evt) ->
    evt.preventDefault()
    target = $(evt.currentTarget).attr('href')
    
    parent = $('html,body')
    cur_scroll = parent.scrollTop()
    parent.animate({
      scrollTop: $(target).offset().top
    })