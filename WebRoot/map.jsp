<%@ page language="java" pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
  <head>
  
  <html:base />
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
    <meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <title>Tunis BTS Locolazier</title>
    <style>
      html, body, #map-canvas {
        height: 100%;
        margin: 0px;
        padding: 0px
      }
      #panel {
        position: absolute;
        top: 5px;
        left: 50%;
        margin-left: -180px;
        z-index: 5;
        background-color: #fff;
        padding: 5px;
        border: 1px solid #999;
      }
    </style>

    <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
    <style type="text/css">
      html { height: 100% }
      body { height: 100%; margin: 0; padding: 0 }
      #map_canvas { height: 100% }
    </style>
    <script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyD3pP1w5b7fMYoZJaC1Ds7lxvW1jU4prLw&sensor=true"></script>
    <script>
var geocoder;
var map;
var myLatlng = new google.maps.LatLng(36.822074,10.178778);
var markers = [];
var InfoWindows = [];
InfoWindows = new google.maps.InfoWindow();
var markersnum;
/**
 * The HomeControl adds a control to the map that simply
 * returns the user to Chicago. This constructor takes
 * the control DIV as an argument.
 * @constructor
 */
function HomeControl(controlDiv, map) {

  // Set CSS styles for the DIV containing the control
  // Setting padding to 5 px will offset the control
  // from the edge of the map
  controlDiv.style.padding = '5px';

  // Set CSS for the control border
  var controlUI = document.createElement('div');
  controlUI.style.backgroundColor = 'white';
  controlUI.style.borderStyle = 'solid';
  controlUI.style.borderWidth = '2px';
  controlUI.style.cursor = 'pointer';
  controlUI.style.textAlign = 'center';
  controlUI.title = 'Click to set the map to Home';
  controlDiv.appendChild(controlUI);

  // Set CSS for the control interior
  var controlText = document.createElement('div');
  controlText.style.fontFamily = 'Arial,sans-serif';
  controlText.style.fontSize = '12px';
  controlText.style.paddingLeft = '4px';
  controlText.style.paddingRight = '4px';
  controlText.innerHTML = '<b>Home</b>';
  controlUI.appendChild(controlText);

  // Setup the click event listeners: simply set the map to home
  google.maps.event.addDomListener(controlUI, 'click', function() {
    map.setCenter(myLatlng);
	map.setZoom(12);
	
  });
  

}

var btsCircle;
google.maps.visualRefresh = true;

function initialize() {
	geocoder = new google.maps.Geocoder();
  	var mapDiv = document.getElementById('map-canvas');
  	var mapOptions = 
	{
    	zoom: 12,
    	center: myLatlng,
		mapTypeId: google.maps.MapTypeId.TERRAIN
		
	};
	
	
	
  map = new google.maps.Map(mapDiv, mapOptions);
  google.maps.event.addListener(map, 'click', function(event) {
    addMarker(event.latLng);
	
  });
  
  
  
  var homeControlDiv = document.createElement('div');
  var homeControl = new HomeControl(homeControlDiv, map);
  homeControlDiv.index = 1;
  map.controls[google.maps.ControlPosition.TOP_RIGHT].push(homeControlDiv);
  
   
  var marker = new google.maps.Marker({
    position: new google.maps.LatLng(36.849595,10.188614),
    map: map,
    draggable:false,
    visible: true,
    title: 'Cite des Sciences',
	animation: google.maps.Animation.DROP,
	icon: "https://google-maps-icons.googlecode.com/files/mobilephonetower.png"
});

google.maps.event.addListener(marker, 'click', function() {
		
	   	if (marker.getAnimation() != null) {
    			marker.setAnimation(null);
  		} else {
   			 marker.setAnimation(google.maps.Animation.BOUNCE);
  		}
		
  		map.setZoom(15);
    	map.setCenter(marker.getPosition());
		infowindow.open(map,marker);
        });
		
		var contentString ='<div id="content">'+
      '<div id="siteNotice">'+
      '</div>'+
      '<h1 id="firstHeading" class="firstHeading">Tunis Science City</h1>'+
      '<div id="bodyContent">'+
	   '<p>Where the magic happen. In fact it where you confort zone stops</p>'+
	   '</div>'+
	   '</div>';
		
		var infowindow = new google.maps.InfoWindow({
      		content: contentString
  		});
		
		
    var populationOptions = {
      strokeColor: '#0055ff',
      strokeOpacity: 0.8,
      strokeWeight: 2,
      fillColor: '#0055ff',
      fillOpacity: 0.35,
      map: map,
      center: marker.getPosition(),
      radius: 2000
    };
     
    btsCircle = new google.maps.Circle(populationOptions);
  		
		
		for (var i = 0; i < markersnum.length; i++) {
			setTimeout(function() {
      			addMarker();
    		}, i * 200);
  		
		}
		
}


//function codeLatLng(latlng) {
  //var input = location;
  //var latlngStr = input.split(',', 2);
  //var lat = parseFloat(latlngStr[0]);
  //var lng = parseFloat(latlngStr[1]);
  //var latlng = geomarker.getPosition();
  //geocoder.geocode({'latLng': latlng}, function(results, status) {
    //if (status == google.maps.GeocoderStatus.OK) {
      //if (results[1]) {
        //map.setZoom(15);
//		marker = new google.maps.Marker({
  //         position: latlng,
    //       map: map,
		//   visible: false
			
//        });
  //      InfoWindows.setContent(results[1].formatted_address);
   //     InfoWindows.open(map, marker);
    //  } else {
     //   alert('No results found');
//      }
  //  } else {
    //  alert('Geocoder failed due to: ' + status);
   // }
  //});
//}



// get location of a named place
function codeAddress() {
  var address = document.getElementById('address').value;
  geocoder.geocode( { 'address': address}, function(results, status) {
    if (status == google.maps.GeocoderStatus.OK) {
      map.setCenter(results[0].geometry.location);
	  
      var geomarker = new google.maps.Marker({
          map: map,
          position: results[0].geometry.location,
		  title: address,
		  animation: google.maps.Animation.DROP	  
      });
	  
	  geocoder.geocode({'latLng': results[0].geometry.location}, function(results, status) {
	  if (status == google.maps.GeocoderStatus.OK) {
      if (results[1]) {
        	
        InfoWindows.setContent(results[1].formatted_address);
        //InfoWindows.open(map, geomarker);
      } else {
        alert('No results found');
      }
    } else {
      alert('Geocoder failed due to: ' + status);
    }
  });
	  
	  google.maps.event.addListener(geomarker, 'click', function(){

	   	//map.setZoom(15);
    	map.setCenter(geomarker.getPosition());
		InfoWindows.open(map,geomarker);
 
  		if (geomarker.getAnimation() != null) {
    			geomarker.setAnimation(null);
  		} else {
   			 geomarker.setAnimation(google.maps.Animation.BOUNCE);
  		}
});
    } else {
      alert('Geocode was not successful for the following reason: ' + status);
    }
  });

}


// Add a marker to the map and push to the array.
function addMarker(location) {
  var marker = new google.maps.Marker({
    position: location,
    map: map,
	draggable:false,
    visible: true,
	animation: google.maps.Animation.DROP,
    title: "titre",
	icon: "https://google-maps-icons.googlecode.com/files/mobilephonetower.png"
  });
  
  var infodata ='<h1>titre</h1>'+
      '<div>'+
	  '<p>info</p>'+
	  '</div>';
   
	markers.push(marker);
  google.maps.event.addListener(marker, 'click', function() {
	  
	  //if (info == null)
	  //{
	  geocoder.geocode({'latLng': marker.getPosition()}, function(results, status) {
	  if (status == google.maps.GeocoderStatus.OK) {
      if (results[1]) {
              InfoWindows.setContent(results[1].formatted_address);
        } else {
        alert('No results found');
      }
    } else {
      alert('Geocoder failed due to: ' + status);
    }
  });
  //}
  //else
  //{
   
  //InfoWindows.setContent(infodata);
  //}
		
	   	if (marker.getAnimation() != null) {
    			marker.setAnimation(null);
  		} else {
   			 marker.setAnimation(google.maps.Animation.BOUNCE);
  		}
  		//map.setZoom(15);
    	map.setCenter(marker.getPosition());
		InfoWindows.open(map,marker);
  });
  
  
  var populationOptions = {
      strokeColor: '#0055ff',
      strokeOpacity: 0.8,
      strokeWeight: 2,
      fillColor: '#0055ff',
      fillOpacity: 0.35,
      map: map,
      center: marker.getPosition(),
      radius: 2000
    };
     
    btsCircle = new google.maps.Circle(populationOptions);
  
  
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
function showMarkers() {
  setAllMap(map);
  
}

//function getMarkers(btslist) {

		
   //for (var i = 0; i < btslist.length; i++)
  // {
   		//getMarker(titre, location, puissance, info);
   
   //} 
   
   

//}
function getMarkers() {

	//var titre = document.getElementById('nombts').value;
      var location = document.getElementById('location').value;
    //var puissance = document.getElementById('puis').value;
    //var info = document.getElementById('info').value;
	
	var input = location;
    var latlngStr = input.split(',', 2);
    var lat = parseFloat(latlngStr[0]);
    var lng = parseFloat(latlngStr[1]);
    var latlng = new google.maps.LatLng(lat, lng);
    
    addMarker(latlng);

}
// Deletes all markers in the array by removing references to them.
//function deleteMarkers() {
  //clearMarkers();
 // markers = [];
//}




google.maps.event.addDomListener(window, 'load', initialize);


    </script>
  </head>
  <body onLoad="initialize()">
  
  
  <div id="panel">
  <html:form action="getbts" method="post">
 	  <input onClick="location.href='index.jsp';" type=button value="Accueil">
      <input id="address" type="text" value="Tunis, Tunisia">
      <input type="button" value="Geocode" onclick="codeAddress()">
      <input type="submit" id="chargebts" value="Charge BTS">
      
      
      <input id="nombts" type="hidden" value=<bean:write name="nombts" ignore="true" />>
      <input id="location" type="hidden" value=<bean:write name="location" ignore="true"/>>
      
      
      <input onClick="getMarkers();" type=button value="Get BTS">
      <input onClick="clearMarkers();" type=button value="Hide BTS">
      <input onClick="showMarkers();" type=button value="Show BTS">
   </html:form>
    </div>
    <div id="map-canvas"></div>
  </body>
</html:html>

