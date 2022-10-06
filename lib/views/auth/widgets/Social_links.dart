import 'package:real_state_mangament/core/Constrant/AppColors.dart';
import 'package:real_state_mangament/core/Constrant/AppSvgImg.dart';
import 'package:real_state_mangament/views/auth/register/register.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SocialLinks extends StatelessWidget {
  const SocialLinks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return socialLinks();
  }

  Container socialLinks() {
    List svgIcons = [AppSvgImg.facebook, AppSvgImg.google, AppSvgImg.tweiter];
    return Container(
      color: Colors.red,
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ...svgIcons.map((e) => Container(
                      height: 30,
                      width: 30,
                      padding: EdgeInsets.all(5),
                      child: e,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColor.grey.withOpacity(.2)),
                    ))
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('If You Have Not Account '),
              TextButton(
                  onPressed: () {
                    Get.toNamed(Register.routeName);
                  },
                  child: Text(
                    'Sing Up',
                    style: TextStyle(
                        color: AppColor.primaryColor,
                        decoration: TextDecoration.underline),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
