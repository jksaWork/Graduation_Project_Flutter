import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_state_mangament/core/Constrant/AppColors.dart';

// const BarWithNowBackArrow({Key? key}) : super(key: key);

@override
AppBar BarWithNowBackArrow(context, String title) {
  return AppBar(
      centerTitle: true,
      title: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .titleLarge!
            .copyWith(color: Colors.white),
      ),
      backgroundColor: AppColor.primaryColor,
      elevation: 0);
}

AppBar BarWithArrow(context, String title) {
  return AppBar(
      centerTitle: true,
      title: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .titleLarge!
            .copyWith(color: Colors.white),
      ),
      backgroundColor: AppColor.primaryColor,
      leading: IconButton(
          onPressed: () {
            print('helo Jksa');
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          )
          // IconThemeData(color: Colors.black, size: 20),
          ),
      elevation: 0);
}
