import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_state_mangament/core/Services/api.dart';
import 'package:real_state_mangament/data/Source/Static/areas_static.dart';
import 'package:real_state_mangament/data/Source/Static/real_state_static.dart';

class SearchController extends GetxController {
  late TextEditingController searchcontroller;
  // RxList areas = [].obs;
  List staticAres = areas;
  List searchOffers = []; // StaticRealState;

  void getArea() async {
    var response = await Api.FetchAreas();
  }

  @override
  void onInit() {
    searchcontroller = TextEditingController();
    // TODO: implement onInit
    super.onInit();
  }
}
