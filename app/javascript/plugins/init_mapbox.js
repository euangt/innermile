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
      style: 'mapbox://styles/bgordon/ckhxmcs9x0uoz19o03wjjdlhc'
    });
  }

  if (indexMapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = indexMapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'index_map',
      style: 'mapbox://styles/bgordon/ckhzzm3wt20m419mv7cs8k3lb',
      minZoom: 14,

    });
    const businessMarkers = JSON.parse(indexMapElement.dataset.markers);
    businessMarkers.forEach((marker) => {
      const popup = new mapboxgl.Popup({
        closeButton: false,
        closeOnClick: false
        }
        ).setHTML(marker.infoWindow);

      new mapboxgl.Marker()
        .setLngLat([ marker.lng, marker.lat ])
        .setPopup(popup)
        .addTo(map);
    });

    const homeMarker = JSON.parse(indexMapElement.dataset.homeMarker);

    if (homeMarker) {
      const element = document.createElement('div');
      element.className = 'marker';
      element.style.backgroundImage = `url('${homeMarker.image_url}')`;
      element.style.backgroundSize = 'contain';
      element.style.width = '30px';
      element.style.height = '43px';

      new mapboxgl.Marker(element)
          .setLngLat([ homeMarker.lng, homeMarker.lat ])
          .addTo(map);
    }

    fitMapToMarkers(map, businessMarkers);
  }
};

export { initMapbox };
