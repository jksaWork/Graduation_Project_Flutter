import 'package:real_state_mangament/core/Services/my_services.dart';
import 'package:real_state_mangament/views/Home/Home.dart';
import 'package:real_state_mangament/views/auth/login/login.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class AuthUntecatedMiddleware extends GetMiddleware {
  @override
  // TODO: implement priorz
  int? get priority => 1;
  MyServices services = Get.find();

  @override
  RouteSettings? redirect(String? route) {
    // print('in Side Middle Ware');
    print(services.sharedPreferences.getString('client'));
    if (services.sharedPreferences.getString('token') != null) {
      return RouteSettings(name: Home.routeName);
    }
  }
}
