import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatefulWidget {
  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  Set<Marker> _markers = HashSet<Marker>();
  GoogleMapController? mapController;

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;

    setState(() {
      _markers.add(Marker(
          markerId: MarkerId("0"),
          position: const LatLng(38.702326, -9.240135),
          infoWindow: InfoWindow(
              title: "Incident",
              snippet: "")));

      _markers.add(Marker(
          markerId: MarkerId("3"),
          position: const LatLng(38.7052871788, -9.25650397398),
          infoWindow: InfoWindow(
              title: "Incident",
              snippet: "")));

      _markers.add(Marker(
          markerId: MarkerId("1"),
          position: const LatLng(40.702326, -8.240135),
          infoWindow: InfoWindow(
              title: "Our House",
              snippet: "The place where me and Sara live!")));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        iconTheme: Theme.of(context).iconTheme,
        title: Text('Mapa de Incidentes', style: TextStyle(color: Colors.black)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.list),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.my_location),
          ),
        ],
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: const LatLng(38.702326, -9.240135),
          zoom: 15.0,
        ),
        markers: _markers,
      ),
    );
  }
}
