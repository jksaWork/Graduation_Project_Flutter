import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_state_mangament/core/Services/api.dart';
import 'package:real_state_mangament/data/Models/Area.dart';
import 'package:real_state_mangament/data/Source/Static/areas_static.dart';
import 'package:real_state_mangament/data/Source/Static/real_state_static.dart';

class SearchController extends GetxController {
  late TextEditingController searchcontroller;
  // RxList areas = [].obs;
  // List staticAres = areas;
  List<Area> serverArea = [];
  List searchOffers = []; // StaticRealState;
  List<Area> get staticAres => serverArea.length > 0 ? serverArea : areas;
  void getArea() async {
    try {
      var response = await Api.fetchAreas();
      AreasResponse areasResponse = AreasResponse.fromJson(response.data);
      serverArea = areasResponse.areas;
      // update();
    } catch (err) {
      print(err);
    }
  }

  @override
  void onInit() async {
    searchcontroller = TextEditingController();
    getArea();
    super.onInit();
  }
}
