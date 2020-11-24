import mapboxgl from 'mapbox-gl';

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
};

const initMapbox = () => {
  const mapElement = document.getElementById('home_map');
  const indexMapElement = document.getElementById('index_map')


  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'home_map',
      style: 'mapbox://styles/bgordon/ckhvv8opc09dp19p5zaryvv50'
    });
  }

  if (indexMapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = indexMapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'index_map',
      style: 'mapbox://styles/bgordon/ckhw3o84t01gy19qs8dqn9tak'
    });
    const markers = JSON.parse(indexMapElement.dataset.markers);
    markers.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.infoWindow);

    new mapboxgl.Marker()
      .setLngLat([ marker.lng, marker.lat ])
      .setPopup(popup)
      .addTo(map);
  });
    fitMapToMarkers(map, markers);
  }
};

export { initMapbox };
