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

$(document).ready(function() {
  $('article').find('.new_mark').slideUp()
  $('aside').on('click', '.create_mark h3', function() {
    $('.create_mark').parents("section").find('.new_mark').fadeToggle([2000]);
    // $('article').prepend(marking);
  });
  // $(this).on('mouseleave', '.mark', function() {
  //   $(this).removeClass('mark_highlight')
  // });
  $('aside').on('click', '.highlight_mark h3', function() {
    $('.highlight_mark').parents("section").find('.mark').first().toggleClass( 'highlight' );
    // $('article').prepend(marking);
  });
});
