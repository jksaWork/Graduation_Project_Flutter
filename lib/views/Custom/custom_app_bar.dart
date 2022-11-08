import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_state_mangament/core/Constrant/AppColors.dart';
import 'package:real_state_mangament/core/Constrant/AppSvgImg.dart';
import 'package:real_state_mangament/views/search/Search.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColor.primaryColor,
      shadowColor: AppColor.primaryColor,
      elevation: 0,
      title: Text('عقاري'),
      leading: GestureDetector(
        child: Icon(Icons.search),
        onTap: () => Get.toNamed(Search.routeName),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Icon(Icons.room_outlined),
        )
      ],
      centerTitle: true,
    );
    // return Container(
    //   width: double.infinity,
    //   // padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
    //   child: Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //     children: [
    //       Container(
    //         padding: EdgeInsets.only(right: 10),
    //         child: AppSvgImg.search,
    //       ),
    //       Container(
    //         child: Text('عقار',
    //             style: TextStyle(
    //                 color: Colors.white,
    //                 fontWeight: FontWeight.w500,
    //                 fontSize: 30)),
    //       ),
    //       Container(),
    //     ],
    //   ),
    // );
  }
}
