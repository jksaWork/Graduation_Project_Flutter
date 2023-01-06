import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:real_state_mangament/core/Constrant/AppSvgImg.dart';
// import 'package:movies_app/controllers/maps/google_map_controller.dart';
import '../controllers/maps/google_map_controller.dart';

class MapsScreen extends StatelessWidget {
  static String routeName = '/MapsScreen';
  const MapsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(CustomGoogleMapController());
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            GetBuilder<CustomGoogleMapController>(builder: (controller) {
              return GoogleMap(
                initialCameraPosition: controller.kGooglePlex,
                markers: controller.markers,
                // onTap: (LatLng lat) {
                //   controller.append(lat);
                // },
                onMapCreated: (GoogleMapController googleMapController) {
                  controller.oncreated();
                },
              );
            }),
            Positioned(
                top: 30,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          margin: EdgeInsets.all(10),
                          padding: const EdgeInsets.only(
                              left: 15, right: 10, top: 10, bottom: 10),
                          decoration: const BoxDecoration(
                            // borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: GestureDetector(
                            onTap: () => Navigator.of(context).pop(),
                            child: Center(
                              child: const Icon(
                                Icons.arrow_back_ios,
                                size: 23,
                              ),
                            ),
                          )),
                      Expanded(
                        flex: 2,
                        child: Center(
                          child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 8),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white),
                              child: Text('المواقع علي الخريطه')),
                        ),
                      ),
                      // Text(''),
                      Container(
                        width: MediaQuery.of(context).size.width * .2,
                      )
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
