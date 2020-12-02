import mapboxgl from 'mapbox-gl';

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([marker.lng, marker.lat]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
};

const initMapbox = () => {
  const mapElement = document.getElementById('home_map');
  const indexMapElement = document.getElementById('index_map');
  const showMapElement = document.getElementById('show_map');


  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'home_map',
      style: 'mapbox://styles/bgordon/ckhxmcs9x0uoz19o03wjjdlhc'
    });
  }



  if (showMapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = showMapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'show_map',
      style: 'mapbox://styles/bgordon/cki76vhy60dfc19pbadllpuqz'
    });

    const businessMarkers = JSON.parse(showMapElement.dataset.markers);
    businessMarkers.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.infoWindow);

      const mapboxMarker = new mapboxgl.Marker()
        .setLngLat([marker.lng, marker.lat])
        .setPopup(popup)
        .addTo(map);
      })

  }


  if (indexMapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = indexMapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'index_map',
      style: 'mapbox://styles/bgordon/cki76vhy60dfc19pbadllpuqz',
      minZoom: 14,
      pitch: 50,

    });
    const businessMarkers = JSON.parse(indexMapElement.dataset.markers);

    businessMarkers.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.infoWindow);

      const mapboxMarker = new mapboxgl.Marker()
        .setLngLat([marker.lng, marker.lat])
        .setPopup(popup)
        .addTo(map);
      // add an ID to the mapbox marker
      // this as taken from: https://docs.mapbox.com/mapbox-gl-js/api/markers/#marker#getelement
      mapboxMarker.getElement().id = `marker-${marker.id}`
      // select the business card div by the dataset it has (we should refactor to use an ID)
      const businessCards = document.querySelectorAll(`[data-business="${marker.id}"]`)
      console.log(marker.id)
      businessCards.forEach((businessCard)=> {
        if (businessCard) {
          businessCard.addEventListener('mouseenter', (event) => {
            const id = event.currentTarget.dataset.business
            const markerDiv = document.getElementById(`marker-${id}`);
            markerDiv.click()

            // this was taken from: https://docs.mapbox.com/mapbox-gl-js/example/flyto/
            map.flyTo({
              center: [
                marker.lng,
                marker.lat
              ],
              speed: 0.3,
              offset: [165, 0],
              essential: true
            });
          })
        }
      })
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
        .setLngLat([homeMarker.lng, homeMarker.lat])
        .addTo(map);
    }

    fitMapToMarkers(map, businessMarkers);

  }
};

export { initMapbox };
