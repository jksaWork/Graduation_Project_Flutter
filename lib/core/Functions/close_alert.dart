import 'dart:ffi';
import 'dart:io';

import 'package:real_state_mangament/core/Constrant/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> appColseAlert() {
  Get.defaultDialog(title: 'Do You Want Exist From App', actions: [
    TextButton(
        onPressed: () {
          exit(0);
        },
        child: Text('Yes')),
    TextButton(
        onPressed: () {
          Get.back();
        },
        child: Text(
          'No',
          style: TextStyle(color: AppColor.primaryColor),
        )),
  ]);
  return Future.value(true);
}
