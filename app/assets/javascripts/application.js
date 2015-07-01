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
    }, 150);

    $('body').animate({
      left: "285px"
    }, 150);


    $('body').append('<div id="mask"></div>');
    $('#mask').fadeIn(150);
  });

  /* Then push them back */
$(document).on('click', '#mask, .icon-close', function() {
    $('#mask').remove();
    $('.menu').animate({
      left: "-285px"
    }, 150);

    $('body').animate({
      left: "0px"
    }, 150);
  });
};

$(document).ready(function() {
    $('#logout-menu').click(function() {
      $('.onclick-menu-content').toggleClass('visible');
      $('body').append('<div id="invisible-mask"></div>');
      $('#invisible-mask').fadeIn(50);

    });
  });

$(document).ready(function() {
    $(document).on('click', '#invisible-mask', function() {
      $('#invisible-mask').remove();
      $('.onclick-menu-content').removeClass('visible');
    });
  });

$(document).ready(main);