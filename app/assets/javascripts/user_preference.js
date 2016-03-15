$( document ).ready( function() {

  $('.skill_level').hide(); // hides

  $( ".n_image" ).click(function() {
    $(this).next().toggleClass("active_sport");
  });

  $( ".sport-icon" ).click(function() {
    $(this).siblings(".n_check").toggleClass("active_sport");
    $(this).siblings(".skill_level").slideToggle();
  });

  // With JQuery
  $('#ex1').slider({
    formatter: function(value) {
      return value;
    }
  });

  $("#bootstrap-slider1").slider({ min: 0, max: 10, value: 5, focus: true });
  $("#bootstrap-slider2").slider({ min: 0, max: 10, value: 5, focus: true });
  $("#bootstrap-slider3").slider({ min: 0, max: 10, value: 5, focus: true });
  $("#bootstrap-slider4").slider({ min: 0, max: 10, value: 5, focus: true });
  $("#bootstrap-slider5").slider({ min: 0, max: 10, value: 5, focus: true });
  $("#bootstrap-slider6").slider({ min: 0, max: 10, value: 5, focus: true });
  $("#bootstrap-slider7").slider({ min: 0, max: 10, value: 5, focus: true });
  $("#bootstrap-slider8").slider({ min: 0, max: 10, value: 5, focus: true });
  $("#bootstrap-slider9").slider({ min: 0, max: 10, value: 5, focus: true });


});