// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

var map;
var markers = [];
var mapClickListener;
var mapDragListener;

function initialize() {
	var ubicacionPersona = new google.maps.LatLng(-34.64104659419889, -58.56584072113037);

	ubicacionPersona = new google.maps.LatLng(lat.value, lng.value);

	var mapOptions = {
		zoom : 12,
		center : ubicacionPersona,
		mapTypeId : google.maps.MapTypeId.TERRAIN
	};

	map = new google.maps.Map(document.getElementById('mapa'), mapOptions);
	
	alert("ready");

	// Adds a marker at the center of the map.
	addMarker(ubicacionPersona);
}

function AddMapHandlers() {
	mapClickListener = google.maps.event.addListener(map, 'click', function(event) {
		addMarker(event.latLng);
		RemoveMapHandlers();
		AddMapHandlers();
	});
	mapDragkListener = google.maps.event.addListener(markers[0], 'dragend', function(event) {
		//   alert("drag end");
		addMarker(event.latLng);
		RemoveMapHandlers();
		AddMapHandlers();
	});
	markers[0].setDraggable(true);
}

function RemoveMapHandlers() {
	mapClickListener.remove();
	mapDragkListener.remove();
	markers[0].setDraggable(false);
}

// Add a marker to the map and push to the array.
function addMarker(location) {
	var marker = new google.maps.Marker({
		position : location,
		map : map
	});

	deleteMarkers();
	markers.push(marker);
	setLocation(location);
}

function setLocation(location) {
	var inputLat = document.getElementsByName('Latitud')[0];
	inputLat.value = location.lat();
	var inputLng = document.getElementsByName('Longitud')[0];
	inputLng.value = location.lng();
}

// Sets the map on all markers in the array.
function setAllMap(map) {
	for (var i = 0; i < markers.length; i++) {
		markers[i].setMap(map);
	}
}

// Removes the markers from the map, but keeps them in the array.
function clearMarkers() {
	setAllMap(null);
}

// Shows any markers currently in the array.
//function showMarkers() {
//  setAllMap(map);
//}

// Deletes all markers in the array by removing references to them.
function deleteMarkers() {
	clearMarkers();
	markers = [];
}

google.maps.event.addDomListener(window, 'load', initialize); 