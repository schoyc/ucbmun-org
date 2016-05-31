var ready = function() {
  var map_item = $('.sf-item');

  $('.map-pin').mouseenter(function(e) {
    var id = $(this).data('mapid');
    // $(this).animate({
    //   width: 5em
    // }, 500);
    $(this).addClass("pin-selected", 5000);
    $.get("attractions/" + id, function(data) {
      map_item.html(data);
    }, "html");
    map_item.fadeIn("slow");
  });

  $('.map-pin').mouseleave(function(e) {
    $(this).removeClass("pin-selected", 5000);
    // $(this).animate({
    //   width: 3em
    // }, 500);
  });
}

$(document).ready(ready);
