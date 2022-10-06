import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class registerController extends GetxController {
  TextEditingController? email;
  TextEditingController? firstNmae;
  TextEditingController? lastNmae;
  TextEditingController? password;
  TextEditingController? adress;
  TextEditingController? phone;
  // TextEditingController? ;
  @override
  void onInit() {
    // TODO: implement onInit
    email = TextEditingController();
    password = TextEditingController();
    firstNmae = TextEditingController();
    lastNmae = TextEditingController();
    adress = TextEditingController();
    phone = TextEditingController();
    super.onInit();
  }
}
