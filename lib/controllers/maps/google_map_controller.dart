import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:real_state_mangament/core/Services/api.dart';
import 'package:real_state_mangament/data/Models/Marker.dart';
import 'package:real_state_mangament/data/Models/RealState.dart';
import 'package:real_state_mangament/data/Source/Static/real_state_static.dart';
import 'package:real_state_mangament/views/details/offer_details.dart';

class CustomGoogleMapController extends GetxController {
  BitmapDescriptor? customImage;
  @override
  void onInit() {
    getCustomMarker();
    oncreated();
  }

  getCustomMarker() async {
    customImage = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration.empty, 'assets/images/logo.png');
  }

  CameraPosition kGooglePlex = CameraPosition(
    target: LatLng(15.602010544438908, 32.51952169828596),
    zoom: 18,
  );

  Set<Marker> markers = Set();

  void oncreated() async {
    print('on created -------------------------- ');
    var response = await Api.fetchMarkers();
    MarkerResponse markerResponse = MarkerResponse.fromJson(response.data);
    // print('hello');
    List apiMarkers = markerResponse.markers;
    apiMarkers.forEach((element) {
      markers.add(Marker(
          position:
              LatLng(double.parse(element.lat), double.parse(element.long)),
          markerId: MarkerId(gMarkerToJson(element)),
          infoWindow: InfoWindow(
              title: element.location,
              onTap: () {
                Get.toNamed(OfferDetials.routeName,
                    parameters: {'offer': realStateToJson(element.realstate)});
              })));
    });
    update();
  }

  append(LatLng lat) {
    // print();
    print(markers.length);
    markers.add(Marker(
      position: lat,
      markerId: MarkerId('${markers.length}'),
      icon: customImage!,
    ));
    update();
  }
  // Markers()

}
