import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:real_state_mangament/views/search/widgets/app_bar.dart';
import '../core/Constrant/AppColors.dart';
import '../views/Home/widgets/offer_sections.dart';
import '../views/search/widgets/Gmap-app-bar.dart';

Set<Marker> mymark = {
  Marker(
      //draggable
      draggable: true,
      markerId: MarkerId("1"),
      onTap: () {
        print("tabb");
      },
      //marker icon
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
      infoWindow: InfoWindow(title: "Home", onTap: () {}),
      position: LatLng(17.073590, 29.705242)),
};
final LatLng mylat = LatLng(17.073590, 29.705242);

class Map extends StatefulWidget {
  static var routeName;
  //marker image
  marker() async {
    //                  icon:  BitmapDescriptor.fromAssetImage(ImageConfiguration.empty, "/images/fedex-express.png"),
    mymark.add(
      Marker(
          markerId: MarkerId("2"),
          icon: await BitmapDescriptor.fromAssetImage(
              ImageConfiguration.empty, "images/fedex-express.png"),
          infoWindow: InfoWindow(title: "mama", onTap: () {}),
          position: LatLng(12.073590, 29.705242)),
    );
  }

  const Map({Key? key}) : super(key: key);

  @override
  State<Map> createState() => _MapState();
}

class _MapState extends State<Map> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GmapAppbar(),
      body: Column(children: [
        Container(
          height: 550,
          width: 400,
          child: GoogleMap(
            //marker
            markers: mymark,
            initialCameraPosition: CameraPosition(
              target: mylat,
              // zoom: 12.4746,
            ),
          ),
        ),
        Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(shape: BoxShape.rectangle),
            child: BottomNavigationBar(
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    size: 30,
                    color: Colors.white,
                  ),
                  label: 'الرايسية',
                ),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.settings,
                      size: 30,
                      color: Colors.white,
                    ),
                    label: 'الاعدادات'),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                    size: 30,
                    color: Colors.white,
                  ),
                  label: 'بروفايل',
                )
              ],
              backgroundColor: AppColor.primaryColor,
            )),
      ]),
    );
  }
}
