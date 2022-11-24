import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_state_mangament/controllers/Search/search_contrller.dart';
import 'package:real_state_mangament/core/Services/api.dart';
import 'package:real_state_mangament/data/Models/RealState.dart';
import 'package:real_state_mangament/data/Source/Static/real_state_static.dart';

class FavorateController extends GetxController {
// final MyRepository repository;
// MyController(this.repository);
  RxBool isLoaading = false.obs;
  RxList realStates = [...StaticRealState].obs;
  // On In Decator Tap
  onTap(int value) {
    isLoaading.value = true;
    print('isLoaading.value  ${isLoaading.value}');
    fetchOffers();
    update();
  }

  fetchOffers() async {
    // try {
    var data = await Api.fetchFavorate();
    OfferResponse offer = OfferResponse.fromJson(data.data);
    print('---------------------- offer converted ------------------');
    realStates = [...offer.offers].obs;
    print('---------------------- end offer converted ------------------');
    print(realStates.toString());
    isLoaading.value = false;
    update();
    // } catch (error) {
    //   print(
    //       '-----favorate Error ------------errro happend ------------------------');
    //   print(error);
    //   isLoaading.value = false;
    //   update();
    // }
  }

  @override
  void onInit() {
    // Jksa Altigani Osman
    fetchOffers();
    super.onInit();
  }
}
