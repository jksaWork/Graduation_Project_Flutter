import 'package:flutter/material.dart';
import 'package:get/get.dart';

// const BarWithNowBackArrow({Key? key}) : super(key: key);

@override
AppBar BarWithNowBackArrow(context, String title) {
  return AppBar(
      centerTitle: true,
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge,
      ),
      backgroundColor: Colors.white,
      elevation: 0);
}

AppBar BarWithArrow(context, String title) {
  return AppBar(
      centerTitle: true,
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge,
      ),
      leading: IconButton(
          onPressed: () {
            print('helo Jksa');
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          )
          // IconThemeData(color: Colors.black, size: 20),
          ),
      backgroundColor: Colors.white,
      elevation: 0);
}
