jQuery ->
  # Init the map
  mapOptions = {
    center: new google.maps.LatLng(49.25,-123.1),
    zoom: 8,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  }

  window.map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions)
  infowindow = new google.maps.InfoWindow
  markers = []
  
  ## Helper functions

  addMarker = (lat, lng, content) ->
    marker = new google.maps.Marker
      position: new google.maps.LatLng(lat, lng)
    marker.setMap(window.map)

    google.maps.event.addListener marker, 'click', () ->
      infowindow.close()
      infowindow.setContent content
      infowindow.open map, marker

    markers.push marker

  clearMarkers = (markers) ->
    $.each markers, (i, marker) ->
      marker.setMap null
    markers.length = 0

  centerOnMarkers = (markers) ->
    latlngbounds = new google.maps.LatLngBounds
    $.each markers, (i, marker) ->
      latlngbounds.extend marker.getPosition()
    map.fitBounds(latlngbounds)
