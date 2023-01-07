import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:real_state_mangament/core/Constrant/AppColors.dart';
import 'package:real_state_mangament/views/Favorate/favaorate_page.dart';

class SerachAppBar extends StatelessWidget {
  const SerachAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

AppBar SearchAppBarONe({String? title = null}) {
  return AppBar(
    backgroundColor: AppColor.primaryColor,
    // shape: StadiumBorder(),
    title: Text(
      title == null ? "عقاري" : title,
      style: TextStyle(color: Colors.white, fontSize: 22),
    ),
    centerTitle: true,
    elevation: 0,
    leading: IconButton(
      iconSize: 20,
      color: Colors.white,
      onPressed: () {
        Get.back();
      },
      icon: Icon(
        Icons.arrow_back_ios,
      ),
    ),
    actions: [
      IconButton(
        iconSize: 20,
        color: Colors.white,
        onPressed: () => Get.toNamed(FavoratePage.routeName),
        icon: Icon(
          Icons.favorite,
        ),
      ),
    ],
  );
}
