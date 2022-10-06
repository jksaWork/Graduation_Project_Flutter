import 'package:real_state_mangament/core/Services/my_services.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class localelizationController extends GetxController {
  Locale? language;
  MyServices service = Get.find();
  changeLocale(String _code) {
    Locale locale = Locale(_code);
    service.sharedPreferences.setString('lang', _code);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? lang = service.sharedPreferences.getString('lang');
    if (lang == 'ar') {
      language = Locale('ar');
    } else if (lang == 'en') {
      language = Locale('en');
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}
