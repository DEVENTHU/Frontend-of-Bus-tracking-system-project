import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatelessWidget {
  final String busNumber;

  MapScreen({required this.busNumber});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Google Map'),
      ),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(37.422, -122.084),
          zoom: 15,
        ),
        markers: {
          Marker(
            markerId: MarkerId('busMarker'),
            position: LatLng(37.422, -122.084),
            infoWindow: InfoWindow(
              title: 'Bus $busNumber',
              snippet: 'Current location of bus $busNumber',
            ),
          ),
        },
      ),
    );
  }
}
