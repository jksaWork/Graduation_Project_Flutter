import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_state_mangament/core/Services/api.dart';

class HomeControler extends GetxController {
// final MyRepository repository;
// MyController(this.repository);
  RxBool isLoaading = false.obs;

  // On In Decator Tap
  onTap(int value) {
    isLoaading.value = true;
    print('isLoaading.value  ${isLoaading.value}');
    fetchOffers(value + 1);
    update();
  }

  fetchOffers(int value) async {
    // print('service_id$value');
    try {
      var OffertResponse = await Api.FetchOffer();
      print(OffertResponse.toString());
      print('has feched ---------------------------');
      isLoaading.value = false;
      update();
    } catch (error) {
      print(error);
    }
    // Map response = OffertResponse.fromJson(OffertResponse.data);
  }
}
