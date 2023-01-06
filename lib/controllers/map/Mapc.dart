import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class CustomGoogleMapController extends GetxController {
  BitmapDescriptor? customImage;
  @override
  void onInit() {
    // getCustomMarker();
  }

  // getCustomMarker() async {
  //   customImage = await BitmapDescriptor.fromAssetImage(
  //       ImageConfiguration.empty, 'assets/images/logo.png');
  // }

  CameraPosition kGooglePlex = CameraPosition(
    target: LatLng(15.602010544438908, 32.51952169828596),
    zoom: 20,
  );

  Set<Marker> markers = Set();

  void oncreated() {
    print('on created -------------------------- ');
    List<Marker> list = <Marker>[
      const Marker(
          position: LatLng(15.602010544438908, 32.51952169828596),
          markerId: MarkerId('31')),
      const Marker(
          position: LatLng(15.602010594438908, 32.51953169828596),
          markerId: MarkerId('30'))
    ];

    markers.addAll(list);
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
