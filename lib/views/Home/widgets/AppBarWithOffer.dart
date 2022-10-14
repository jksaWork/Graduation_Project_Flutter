import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:real_state_mangament/core/Constrant/AppBorderRaduis.dart';
import 'package:real_state_mangament/core/Constrant/AppColors.dart';
import 'package:real_state_mangament/views/Custom/custom_app_bar.dart';
import 'package:real_state_mangament/views/Home/widgets/service_section.dart';

class AppBarWithOfferService extends StatelessWidget {
  const AppBarWithOfferService({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        margin: EdgeInsets.all(0),
        child: ClipRRect(
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * .20,
            decoration: const ShapeDecoration(
              color: AppColor.primaryColor,
              shape: SmoothRectangleBorder(
                borderRadius: SmoothBorderRadius.only(
                  bottomLeft: SmoothRadius(
                    cornerRadius: AppBorderRaduis.smallsize,
                    cornerSmoothing: .1,
                  ),
                ),
              ),
            ),
            child: Column(children: [CustomAppBar(), ServiceSection()]),
            // child: Text('Hello'),
          ),
        ));
  }
}
