import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class RideNowScreen extends StatefulWidget {
  @override
  _RideNowScreenState createState() => _RideNowScreenState();
}

class _RideNowScreenState extends State<RideNowScreen> {
  GoogleMapController? _mapController;

  // Initial position for the map
  final CameraPosition _initialPosition = CameraPosition(
    target: LatLng(37.7749, -122.4194), // Coordinates of San Francisco
    zoom: 12,
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          // Google Maps Widget
          GoogleMap(
            initialCameraPosition: _initialPosition,
            onMapCreated: (controller) {
              _mapController = controller;
            },
            myLocationEnabled: true, // Show the user's current location
            myLocationButtonEnabled: false, // Hide the default location button
            mapType: MapType.normal, // Set the map type
          ),
          // Header with map background and title
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 50, // Set the height
                width: double.infinity, // Set the width to maximum
                decoration: BoxDecoration(
                  color: Colors.white, // Background color
                  borderRadius: BorderRadius.circular(25), // Rounded edges
                ),
                alignment: Alignment.center, // Center the text within the container
                child: Text(
                  'Schedule A Ride',
                  style: TextStyle(color: Colors.black87, fontSize: 20, fontWeight: FontWeight.w600), // Text color
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}