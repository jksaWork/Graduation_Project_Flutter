import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_state_mangament/core/Services/api.dart';
import 'package:real_state_mangament/data/Models/Area.dart';
import 'package:real_state_mangament/data/Models/RealState.dart';
import 'package:real_state_mangament/data/Source/Static/areas_static.dart';
import 'package:real_state_mangament/data/Source/Static/real_state_static.dart';

class SearchController extends GetxController {
  late TextEditingController searchcontroller;
  // RxList areas = [].obs;
  // List staticAres = areas;
  RxBool isloding = false.obs;
  List<Area> serverArea = [];
  String search = '';
  RxList searchOffers = [].obs; // StaticRealState;
  List<Area> get staticAres => serverArea.length > 0 ? serverArea : areas;
  var currentIndex;
  void getArea() async {
    try {
      var response = await Api.fetchAreas();
      AreasResponse areasResponse = AreasResponse.fromJson(response.data);
      serverArea = areasResponse.areas;
    } catch (err) {
      print(err);
    }
  }

  void getoffer({required String value, int? id}) async {
    try {
      isloding.value = false;
      search = value;
      var response = await Api.SearchOffer(value: value, areaId: id);
      OfferResponse offerResponse = OfferResponse.fromJson(response.data);
      var offers = offerResponse.offers;
      searchOffers.value = [...offers];
      isloding.value = true;
      update();
    } catch (err) {
      print(err);
    }
  }

  updateIndex(Area index) {
    currentIndex = index;
    // print('${index.id}');
    getoffer(value: search, id: index.id);
    var id = 1;
    update();
  }

  @override
  void onInit() async {
    searchcontroller = TextEditingController();
    getArea();
    super.onInit();
  }
}
