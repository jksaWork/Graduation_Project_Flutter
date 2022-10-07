import 'package:get_storage/get_storage.dart';
import 'package:real_state_mangament/core/Services/api.dart';
import 'package:real_state_mangament/data/Models/User.dart';
import 'package:real_state_mangament/views/Home/Home.dart';
import 'package:real_state_mangament/views/auth/forget_password.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class LoginControllerAbs extends GetxController {
  goToFogetPassword();
}

class LoginController extends LoginControllerAbs {
  late TextEditingController email;
  late TextEditingController password;
  late RxMap user = {}.obs;

  GlobalKey<FormState> loginKey = GlobalKey<FormState>();

  goToFogetPassword() {
    Get.toNamed(ForgetPassword.routeName);
  }

  login() async {
    if (loginKey.currentState!.validate()) {
      print('it is valid');
      Map loginData = {};
      loginData['username'] = email.text;
      loginData['password'] = password.text;
      loginData['message_token'] = password.text;
      // print(loginData.toString());
      try {
        var loginResponse = await Api.Login(loginData: loginData);

        UserResponse userResponse = UserResponse.fromJson(loginResponse.data);
        user.value = userResponse.user!;
        GetStorage().write("login_token", userResponse.token);
        Get.offAndToNamed(Home.routeName);
      } catch (err) {
        print(err);
      }
    } else {
      // print('now');

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
