import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:real_state_mangament/core/Services/api.dart';
import 'package:get/get.dart' as GET;
import 'package:real_state_mangament/data/Models/Client.dart';
import 'package:real_state_mangament/data/Models/User.dart';
import 'package:real_state_mangament/views/Home/Home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class registerController extends GetxController {
  TextEditingController? email;
  TextEditingController? name;
  TextEditingController? password;
  // TextEditingController? adress;
  TextEditingController? phone;
  late SharedPreferences sharedPreferences;

  GlobalKey<FormState> loginKey = GlobalKey<FormState>();

  // TextEditingController? ;
  @override
  void onInit() async {
    email = TextEditingController();
    password = TextEditingController();
    name = TextEditingController();
    phone = TextEditingController();
    sharedPreferences = await SharedPreferences.getInstance();
    name?.text = 'mama';
    email?.text = 'jksa@altigani.com1';
    password?.text = '123456';
    phone?.text = '1234567890';
    super.onInit();
  }

  registreClient() async {
    if (loginKey.currentState!.validate()) {
      Map data = {
        'name': name!.text,
        'email': email!.text,
        'password': password!.text,
        'phone': phone!.text,
      };
      print(data);

      // String body != json.encode(data);
      // var url = '';
      Client user;
      var response = await Api.Register(loginData: data);

      print(response.statusCode);
      if (response.statusCode == 200) {
        // print('success');
        ClientResponse clientResponse = ClientResponse.fromJson(response.data);
        // print(loginResponse.data);
        user = clientResponse.client;
        sharedPreferences.setString(
            'client', clientToJson(clientResponse.client));
        sharedPreferences.setString('token', clientResponse.token);
        print(clientResponse);
        Get.offAndToNamed(Home.routeName);
      } else {
        print('error');
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
}
