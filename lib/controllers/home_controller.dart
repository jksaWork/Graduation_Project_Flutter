import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_state_mangament/controllers/Search/search_contrller.dart';
import 'package:real_state_mangament/core/Services/api.dart';
import 'package:real_state_mangament/data/Models/RealState.dart';
import 'package:real_state_mangament/data/Source/Static/real_state_static.dart';

class HomeControler extends GetxController {
// final MyRepository repository;
  RxBool isLoaading = true.obs;
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
    // print('service_id $value');
    try {
      var data = await Api.FetchOffer(service: value);
      OfferResponse offer = OfferResponse.fromJson(data.data);
      print('---------------------- offer converted ------------------');
      realStates = [...offer.offers].obs;
      print('---------------------- end offer converted ------------------');

      print(realStates.toString());
      isLoaading.value = false;
      update();
    } catch (error) {
      print('errro happend ------------------------');
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
