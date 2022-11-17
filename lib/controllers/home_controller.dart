import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_state_mangament/controllers/Search/search_contrller.dart';
import 'package:real_state_mangament/core/Services/api.dart';
import 'package:real_state_mangament/data/Source/Static/real_state_static.dart';

class HomeControler extends GetxController {
// final MyRepository repository;
// MyController(this.repository);
  RxBool isLoaading = false.obs;
  int serviceid = 1;
  RxList realStates = [...StaticRealState].obs;
  // On In Decator Tap
  onTap(int value) {
    isLoaading.value = true;
    print('isLoaading.value  ${isLoaading.value}');
    fetchOffers(value + 1);
    update();
  }

  fetchOffers(int value) async {
    print('service_id$value');
    try {
      var OffertResponse = await Api.FetchOffer(service: value);
      print(OffertResponse.toString());
      print('has feched ---------------------------');
      isLoaading.value = false;
      update();
    } catch (error) {
      print(error);
      isLoaading.value = false;
      update();
    }
    // Map response = OffertResponse.fromJson(OffertResponse.data);
  }

  @override
  void onInit() async {
    print('inint the Controller -----------------------');
    await fetchOffers(1);
    Get.put(SearchController());
    super.onInit();
  }
}
