$( document ).ready( function() {

  // $('.skill_level').hide(); // hides

  $( ".n_image" ).click(function() {
    $(this).next().toggleClass("active_sport");
  });

  $( ".sport-icon" ).click(function() {
    was_active = $(this).siblings(".n_check").hasClass("active_sport")
    $(this).siblings(".n_check").toggleClass("active_sport");
    $(this).siblings(".skill_level").slideToggle();
    sport_index = $(this).siblings(".skill_level").data('index');

    if (!was_active) {
      $('#sport-'+sport_index).attr("name", "sport_ids["+sport_index+"]");
    } else {
      $('#sport-'+sport_index).removeAttr("name");
    }
  });

  // With JQuery
  $('#ex1').slider({
    formatter: function(value) {
      return value;
    }
  });

  $('.sportslider').each(function() {
    value = Number($(this).val()) || 5;
    $("#"+ this.id).slider({ min: 0, max: 10, value: value, focus: true });
  });

});