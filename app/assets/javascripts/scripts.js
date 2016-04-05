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


  $("#ex2").slider({});

  $("#search-slider").slider({});

  $("#search-slider-enabled").click(function() {
  	if(this.checked) {
  		// With JQuery
  		$("#search-slider").slider("enable");
  	}
  	else {
  		// With JQuery
  		$("#search-slider").slider("disable");

    }
  });


    function divClicked1() {
        var divHtml = $('#edit-me-1').html();
        var editableText = $("<textarea />");
        editableText.val(divHtml);
        $('#edit-me-1').replaceWith(editableText);
        editableText.focus();
        // setup the blur event for this new textarea
        editableText.blur(editableTextBlurred1);
    }

    function editableTextBlurred1() {
        var html = $(this).val();
        var viewableText = $("<div id=edit-me-1>");
        viewableText.html(html);
        $(this).replaceWith(viewableText);
        // setup the click event for this new div
        viewableText.click(divClicked1);
    }


    function divClicked2() {
        var divHtml = $('#edit-me-2').html();
        var editableText = $("<textarea />");
        editableText.val(divHtml);
        $('#edit-me-2').replaceWith(editableText);
        editableText.focus();
        // setup the blur event for this new textarea
        editableText.blur(editableTextBlurred2);
    }

    function editableTextBlurred2() {
        var html = $(this).val();
        var viewableText = $("<div id=edit-me-2>");
        viewableText.html(html);
        $(this).replaceWith(viewableText);
        // setup the click event for this new div
        viewableText.click(divClicked2);
    }


    function divClicked3() {
        var divHtml = $('#edit-me-3').html();
        var editableText = $("<textarea />");
        editableText.val(divHtml);
        $('#edit-me-3').replaceWith(editableText);
        editableText.focus();
        // setup the blur event for this new textarea
        editableText.blur(editableTextBlurred3);
    }

    function editableTextBlurred3() {
        var html = $(this).val();
        var viewableText = $("<div id=edit-me-3>");
        viewableText.html(html);
        $(this).replaceWith(viewableText);
        // setup the click event for this new div
        viewableText.click(divClicked3);
    }


    function divClicked4() {
        var divHtml = $('#edit-me-4').html();
        var editableText = $("<textarea />");
        editableText.val(divHtml);
        $('#edit-me-4').replaceWith(editableText);
        editableText.focus();
        // setup the blur event for this new textarea
        editableText.blur(editableTextBlurred4);
    }

    function editableTextBlurred4() {
        var html = $(this).val();
        var viewableText = $("<div id=edit-me-4>");
        viewableText.html(html);
        $(this).replaceWith(viewableText);
        // setup the click event for this new div
        viewableText.click(divClicked4);
    }

    $(".edit-btn1").click(divClicked1);
    $(".edit-btn2").click(divClicked2);
    $(".edit-btn3").click(divClicked3);
    $(".edit-btn4").click(divClicked4);

    $("#user-profile").change(function(){
      $('.edit_user').submit();
    });

});
