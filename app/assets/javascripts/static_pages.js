var ready = function() {
  var map_item = $('.sf-item');

  $('.map-pin').mouseenter(function(e) {
    var id = $(this).data('mapid');
    $.get("attractions/" + id, function(data) {
      map_item.html(data);
    }, "html");
    map_item.fadeIn("slow");
  });
}

$(document).ready(ready);
