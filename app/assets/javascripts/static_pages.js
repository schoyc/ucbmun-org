var ready = function() {
  var map_item = $('.sf-item');
  var map_item_html = '  <img src="assets/attractions/goldenbridge.jpg" class="map-item-image"/><div class="map-item-description" style="position: absolute;"><h3 style="display:block;"> Golden Gate Bridge </h3><p style="display:block;"> Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima </p>';

  $('.map-pin').hover(function(e) {
    //alert("HELLO");
    map_item.html(map_item_html);

    }, function(e) {
      //alert("GOING OUT");
      map_item.html('');

      });
}

$(document).ready(ready);
