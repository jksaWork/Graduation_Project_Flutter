import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:real_state_mangament/core/Constrant/AppColors.dart';

class GmapAppBar extends StatelessWidget {
  const GmapAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

AppBar GmapAppbar({String? title = null}) {
  return AppBar(
    backgroundColor: AppColor.primaryColor,
    // shape: StadiumBorder(),
    title: Text(
      title == null ? "موقعي" : title,
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
        onPressed: () {},
        icon: Icon(
          Icons.filter_list,
        ),
      ),
    ],
  );
}
