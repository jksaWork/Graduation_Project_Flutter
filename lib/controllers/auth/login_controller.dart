import 'package:real_state_mangament/views/auth/forget_password.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class LoginControllerAbs extends GetxController {
  goToFogetPassword();
}

class LoginController extends LoginControllerAbs {
  late TextEditingController email;
  late TextEditingController password;
  GlobalKey<FormState> loginKey = GlobalKey<FormState>();

  goToFogetPassword() {
    Get.toNamed(ForgetPassword.routeName);
  }

  login() {
    if (loginKey.currentState!.validate()) {
      print('it is valid');
    } else {
      print('now');
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }
}
