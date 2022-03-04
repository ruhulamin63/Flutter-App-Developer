import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';

class Google_Map extends StatefulWidget {
  const Google_Map({Key? key}) : super(key: key);

  @override
  State<Google_Map> createState() => _Google_MapState();
}

class _Google_MapState extends State<Google_Map> {

  //late GoogleMapController mapController;
  //late String searchAdd;

  Set<Polyline> _polyline = Set<Polyline>();
  List<LatLng> polylinecoordinates = [];
  late PolylinePoints polylinePoints;

  final Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Google Map'),
          centerTitle: true,
        ),
        body: Stack(
          children: [
            GoogleMap(
              //mapType: MapType.hybrid,
              polylines: _polyline,
              initialCameraPosition: _kGooglePlex,
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
               // _setPolylines();
              },
            ),
          ],
        ),
        // floatingActionButton: FloatingActionButton.extended(
        //   onPressed: _goToTheLake,
        //   label: Text('To the lake!'),
        //   icon: Icon(Icons.directions_boat),
        // ),
      ),
    );
  }

  // Future<void> _goToTheLake() async {
  //   final GoogleMapController controller = await _controller.future;
  //   controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  // }

  // Future<void> _setPolylines() async {
  //   PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
  //     "API KEY",
  //     PointLatLng(
  //
  //     )
  //   );
  // }

  // void onMapCreated(controller){
  //   setState(() {
  //     mapController = controller;
  //   });
  // }
}
