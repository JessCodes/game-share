$(document).on('turbolinks:load', function () {
  $('.comments-partial').hide();


  $(".dropdown, .btn-group").hover(function () {
      $(this).addClass("open");
  }, function () {
      $(this).removeClass("open");
  });

  $('#add-comment').on('click', function(event) {
    $('.comments-partial').slideDown('5000');
  })


});
