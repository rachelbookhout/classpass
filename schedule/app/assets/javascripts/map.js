var map = L.mapbox.map('map', 'rbookhout.jnj6mdfp', {
  accessToken: 'pk.eyJ1IjoicmJvb2tob3V0IiwiYSI6InplX2F1N2cifQ.OS0b9-WgU_ID7X99bui17g'
});

map.setView([42.366, -71.109], 13);
$.ajax({
  dataType: 'json',
  url: '/studios.json',
  success: function(geoJSON) {
    map.featureLayer.setGeoJSON(geoJSON);
  }
});
map.featureLayer.on('layeradd', function(e) {
  var marker, popupContent, properties;
  marker = e.layer;
  properties = marker.feature.properties;
  popupContent = '<div class="popup">' + '<h3>' + '<a href ="studios/' + properties.num + '">'
  + properties.name + '</a>' +'</h3>';
  return marker.bindPopup(popupContent, {
    closeButton: false,
    minWidth: 320
  });
});
