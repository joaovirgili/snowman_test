import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocation/geolocation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:snowmanlabs/app/pages/home/home_module.dart';
import 'package:snowmanlabs/app/pages/home/widgets/my_bottom_navigation_bar.dart';
import 'package:snowmanlabs/app/pages/home/widgets/search_bar/search_bar.dart';
import 'package:snowmanlabs/app/pages/home/widgets/search_bar/search_bar_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var searchBarController = HomeModule.to.bloc<SearchBarController>();

  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  @override
  void initState() {
    super.initState();
    _getLocation();
  }

  _getLocation() async {
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
          Positioned(
            bottom: 100,
            child: Row(
              children: <Widget>[
                Text("Recents"),
                RaisedButton(
                  onPressed: searchBarController.addRecent,
                  child: Icon(Icons.add),
                ),
                RaisedButton(
                  onPressed: searchBarController.removeRecent,
                  child: Icon(Icons.remove),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 50,
            child: Row(
              children: <Widget>[
                Text("Favorits"),
                RaisedButton(
                  onPressed: searchBarController.addFavorit,
                  child: Icon(Icons.add),
                ),
                RaisedButton(
                  onPressed: searchBarController.removeFavorit,
                  child: Icon(Icons.remove),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: MyBottomNavigationBar(),
    );
  }
}
