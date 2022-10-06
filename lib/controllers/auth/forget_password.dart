import 'package:real_state_mangament/views/auth/Opt.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordController extends GetxController {
  TextEditingController? phone;
  GoToOtp() {
    Get.toNamed(Otp.routeName);
  }
}
