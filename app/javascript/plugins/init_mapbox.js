import mapboxgl from 'mapbox-gl';

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([marker.lng, marker.lat]));
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

    getRoute([13.4004488, 52.5314138]);
    // create a function to make a directions request
    function getRoute(end) {
      // make a directions request using cycling profile
      // an arbitrary start will always be the same
      // only the end or destination will change
      var start = [homeMarker.lng, homeMarker.lat]; // Had to move this outside of the getRoute function in order to make the getRoute(start) work on line 146
      var url = 'https://api.mapbox.com/directions/v5/mapbox/walking/' + start[0] + ',' + start[1] + ';' + end[0] + ',' + end[1] + '?steps=true&geometries=geojson&access_token=' + mapboxgl.accessToken;

      // make an XHR request https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest
      var req = new XMLHttpRequest();
      req.open('GET', url, true);
      req.onload = function() {
        var json = JSON.parse(req.response);
        console.log(json);
        var data = json.routes[0];
        var route = data.geometry.coordinates;
        var geojson = {
          type: 'Feature',
          properties: {},
          geometry: {
            type: 'LineString',
            coordinates: route
          }
        };
        // if the route already exists on the map, reset it using setData
        if (map.getSource('route')) {
          map.getSource('route').setData(geojson);
        } else { // otherwise, make a new request
          map.addLayer({
            id: 'route',
            type: 'line',
            source: {
              type: 'geojson',
              data: {
                type: 'Feature',
                properties: {},
                geometry: {
                  type: 'LineString',
                  coordinates: geojson
                }
              }
            },
            layout: {
              'line-join': 'round',
              'line-cap': 'round'
            },
            paint: {
              'line-color': '#3887be',
              'line-width': 5,
              'line-opacity': 0.75
            }
          });
        }
        // add turn instructions here at the end
      };
      req.send();
      console.log("get route is running")
    }

    map.on('load', function() {
      // make an initial directions request that
      // starts and ends at the same location
      var end = [13.4004488, 52.5314138];  // When I add this it "works", which means that the code below is not in the same scope as the code about with 'start' defined
      getRoute(end);

      // Add starting point to the map
      map.addLayer({
        id: 'point',
        type: 'circle',
        source: {
          type: 'geojson',
          data: {
            type: 'FeatureCollection',
            features: [{
              type: 'Feature',
              properties: {},
              geometry: {
                type: 'Point',
                coordinates: end
              }
            }
            ]
          }
        },
        paint: {
          'circle-radius': 10,
          'circle-color': '#266778'
        }
      });
      // this is where the code from the next step will go
    });

  }
};

export { initMapbox };
