import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class registerController extends GetxController {
  TextEditingController? email;
  TextEditingController? name;
  TextEditingController? password;
  // TextEditingController? adress;
  TextEditingController? phone;
  // TextEditingController? ;
  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    name = TextEditingController();
    phone = TextEditingController();
    super.onInit();
  }

  registreClient() async {
    print('console.log');
  }
}
