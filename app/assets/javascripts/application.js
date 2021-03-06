// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

var main = function() {

  /* Push the body and the nav over by 285px over */
  $('#icon-menu').click(function() {
    $('.menu').animate({
      left: "0px"
    }, 300);

    $('body').animate({
      left: "285px"
    }, 300);


    $('body').append('<div id="masks"></div>');
    $('#masks').fadeIn(100);
  });

  /*Auto scroll document for brands page. */
  $('a[href^="#"]').on('click', function(event) {
    var target = $( $(this).attr('href') );
    if( target.length ) {
        event.preventDefault();
        $('html, body').animate({
            scrollTop: target.offset().top - 107
        }, 500);
    }
});

  /* Then push them back */
  $(document).on('click', '#masks, .icon-close', function() {
      $('#masks').remove();
      $('.menu').animate({
        left: "-285px"
      }, 300);

      $('body').animate({
        left: "0px"
      }, 300);
    });

  /* Logout menu appears when clicked */
  $( ".logout" ).click(function() {
    $( ".logout_menu" ).toggle();
    $('body').append('<div id="masks"></div>');
    $('#masks').fadeIn(100);
  });

  /* Logout menu dissapears when mask is clicked */
  $(document).on('click', '#masks', function() {
    $('#masks').remove();
    $( ".logout_menu" ).fadeOut(100);
  });  


  /* Submit form by pressing enter key. */
  $("input#hire_type_board_name").keypress(function(event) { 
    var value = $("#hire_type_board_name").val(); 
    if (value != "") {
      if (event.which == 13) { 
        event.preventDefault(); 
        $("form").submit(); 
      }
    } 
  }); 

  /* Submit form by pressing enter key. */
  $("input#message_description").keypress(function(event) { 
    var value = $("#message_description").val(); 
    if (value != "") {
      if (event.which == 13) { 
        event.preventDefault(); 
        $("form").submit(); 
      }
    } 
  }); 

    /* Submit form by pressing enter key. */
  $("input#comment").keypress(function(event) { 
    var value = $("#comment").val(); 
    if (value != "") {
      if (event.which == 13) { 
        event.preventDefault(); 
        $("form").submit(); 
      }
    } 
  }); 

};

$(document).ready(main);