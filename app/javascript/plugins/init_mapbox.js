import mapboxgl from '!mapbox-gl';
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';
import 'mapbox-gl/dist/mapbox-gl.css';


const initMapbox = () => {
    const fitMapToMarkers = (map, markers) => {
      const bounds = new mapboxgl.LngLatBounds();
      markers.forEach(marker => bounds.extend([marker.lng, marker.lat]));
      map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
    };

    const addMarkersToMap = (map, markers) => {
      markers.forEach((marker) => {
        const popup = new mapboxgl.Popup().setHTML(marker.info_window);

        new mapboxgl.Marker({ "color": "#5f4bb6"})
          .setLngLat([marker.lng, marker.lat])
          .setPopup(popup)
          .addTo(map);
      });

    };

    const addUserMarkerToMap = (map, userMarker) => {
      const element = document.createElement('div');
      element.className = 'marker';
      element.style.backgroundImage = `url('${userMarker.image_url}')`;
      element.style.backgroundSize = 'contain';
      element.style.width = '30px';
      element.style.height = '30px';

      new mapboxgl.Marker(element)
        .setLngLat([userMarker.lng, userMarker.lat])
        .addTo(map);
    };

    const mapElement = document.getElementById('map');

    if (mapElement) {
      mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
      const map = new mapboxgl.Map({
        container: 'map',
        style: 'mapbox://styles/mapbox/streets-v10'
      });

      const markers = JSON.parse(mapElement.dataset.markers);
      const userMarker = JSON.parse(mapElement.dataset.userMarker);

      addMarkersToMap(map, markers);

      if (userMarker) {
        addUserMarkerToMap(map, userMarker);
      }

      fitMapToMarkers(map, markers);

      map.addControl(new MapboxGeocoder({
        accessToken: mapboxgl.accessToken,
        mapboxgl: mapboxgl
      }));

      // markers.forEach((marker) => {
      //   new mapboxgl.Marker()
      //     .setLngLat([marker.lng, marker.lat])
      //     .addTo(map);
      // });
    }

  };

  export { initMapbox };
