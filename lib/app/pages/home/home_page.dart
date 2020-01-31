import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocation/geolocation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:snowmanlabs/app/pages/home/widgets/my_bottom_navigation_bar.dart';
import 'package:snowmanlabs/app/pages/home/widgets/search_bar.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Completer<GoogleMapController> _controller = Completer();

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
  void initState() {
    super.initState();
    _getLocation();
  }

  _getLocation() async {
    // final GeolocationResult isOperationalResult = await Geolocation.isLocationOperational();
    // if (isOperationalResult.isSuccessful) {
    //   print("ok");
    //   print(isOperationalResult.dataToString());
    // } else {
    //   print(isOperationalResult.error);
    //   final GeolocationResult requestResult =
    //       await Geolocation.requestLocationPermission(const LocationPermission(
    //     android: LocationPermissionAndroid.fine,
    //     ios: LocationPermissionIOS.always,
    //   ));
    //   print(requestResult.dataToString());
    //   print(requestResult.error);
    // }

    await Geolocation.requestLocationPermission(const LocationPermission(
      android: LocationPermissionAndroid.fine,
      ios: LocationPermissionIOS.always,
    ));

    Geolocation.currentLocation(accuracy: LocationAccuracy.best)
        .listen((result) async {
      if (result.isSuccessful) {
        final CameraPosition _currentPosition = CameraPosition(
          target: LatLng(result.location.latitude, result.location.longitude),
          zoom: 15,
        );

        final GoogleMapController controller = await _controller.future;
        controller
            .animateCamera(CameraUpdate.newCameraPosition(_currentPosition));
      } else {
        print(result.error);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          GoogleMap(
            mapType: MapType.normal,
            initialCameraPosition: _kGooglePlex,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
          ),
          SearchBar(),
        ],
      ),
      bottomNavigationBar: MyBottomNavigationBar(),
    );
  }
}
