import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:real_state_mangament/core/Services/api.dart';
import 'package:real_state_mangament/core/Services/my_services.dart';
import 'package:real_state_mangament/data/Models/Client.dart';
import 'package:real_state_mangament/data/Models/User.dart';
import 'package:real_state_mangament/views/Home/Home.dart';
import 'package:real_state_mangament/views/auth/forget_password.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart' as GET;

abstract class LoginControllerAbs extends GetxController {
  goToFogetPassword();
  login();
}

class LoginController extends LoginControllerAbs {
  late TextEditingController email;
  late TextEditingController password;
  late Client user;
  final box = GetStorage();
  late SharedPreferences sharedPreferences;
  GlobalKey<FormState> loginKey = GlobalKey<FormState>();

  goToFogetPassword() {
    Get.toNamed(ForgetPassword.routeName);
  }

  login() async {
    if (loginKey.currentState!.validate()) {
      Map loginData = {};
      loginData['email'] = email.text;
      loginData['password'] = password.text;
      loginData['message_token'] = password.text;
      try {
        var loginResponse = await Api.Login(loginData: loginData);
        ClientResponse clientResponse =
            ClientResponse.fromJson(loginResponse.data);
        // print(loginResponse.data);
        user = clientResponse.client;
        sharedPreferences.setString(
            'client', clientToJson(clientResponse.client));
        sharedPreferences.setString('token', clientResponse.token);
        print(clientResponse);
        Get.offAndToNamed(Home.routeName);
      } catch (err) {
        print(err);
      }
    } else {
      // print('now');
      GET.Get.snackbar(
        "خطا ",
        'يرجي التحقق من المدخلات',
        snackPosition: GET.SnackPosition.BOTTOM,
        backgroundColor: Colors.black26,
        colorText: Colors.white,
      );
    }
  }

  @override
  void onInit() async {
    // TODO: implement onInit
    sharedPreferences = await SharedPreferences.getInstance();
    // print(sharedPreferences.getInt('hello'));
    print('------------');

    print(box.read("login_token"));
    email = TextEditingController();
    password = TextEditingController();
    email.text = 'jksa@altigani.com1';
    password.text = '123456';
    super.onInit();
  }
}
