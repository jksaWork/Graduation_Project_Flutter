import 'package:real_state_mangament/core/Services/my_services.dart';
import 'package:real_state_mangament/data/Source/Static/on_board_list.dart';
import 'package:real_state_mangament/views/Home/Home.dart';
import 'package:real_state_mangament/views/auth/login/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';

abstract class onBoardingAbs extends GetxController {
  next();
  onPageChanched(int index);
}

class onBoardingController extends onBoardingAbs {
  int currentIndex = 0;
  int OnBoardingLength = onBoardingList.length;
  late PageController pageController;
  late PageController textPageController;

  MyServices service = Get.find();

  @override
  next() {
    // print('go to next Fun');
    if (currentIndex + 1 == OnBoardingLength) {
      service.sharedPreferences.setBool('first_time', true);
      Get.to(Login());
    }
    currentIndex++;
    pageController.animateToPage(currentIndex,
        duration: Duration(milliseconds: 500), curve: Curves.easeInOut);

    textPageController.animateToPage(currentIndex,
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);

    // print('page View');
  }

  @override
  onPageChanched(int index) {
    currentIndex = index;
    textPageController.animateToPage(currentIndex,
        duration: const Duration(milliseconds: 1), curve: Curves.easeInOut);
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    textPageController = PageController();
    super.onInit();
  }
}
