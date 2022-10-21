import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchController extends GetxController {
  late TextEditingController searchcontroller;

  @override
  void onInit() {
    searchcontroller = TextEditingController();
    // TODO: implement onInit
    super.onInit();
  }
}
