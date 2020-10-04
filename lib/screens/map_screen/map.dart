// Based on https://codelabs.developers.google.com/codelabs/google-maps-in-flutter/#3

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  GoogleMapController mapController;
  final LatLng _center = const LatLng(45.521563, -122.677433);
  List<Marker> allMarkers = [
    Marker(
      markerId: MarkerId("Seattle"),
      draggable: false,
      position: LatLng(47.6, -122.32),
      infoWindow: InfoWindow(title: "Seattle Avg: 60"),
    ),
    Marker(
      markerId: MarkerId("Portland"),
      draggable: false,
      position: LatLng(45.521563, -122.677433),
      infoWindow: InfoWindow(title: "Portland Avg: 65"),
    ),
    Marker(
      markerId: MarkerId("Vancouver"),
      draggable: false,
      position: LatLng(49.25, -123.1),
      infoWindow: InfoWindow(title: "Vancouver Avg: 22"),
    )
  ];

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 7.0,
          ),
          markers: allMarkers.toSet(),
        ),
      ),
    );
  }
}
