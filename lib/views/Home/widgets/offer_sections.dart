import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:real_state_mangament/controllers/home_controller.dart';
import 'package:real_state_mangament/core/Constrant/AppBorderRaduis.dart';
import 'package:real_state_mangament/core/Constrant/AppColors.dart';

class OffersSection extends StatelessWidget {
  const OffersSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // HomeControler homeControler = Get.find();
    return GetBuilder<HomeControler>(builder: (controller) {
      return Container(
        color: AppColor.primaryColor,
        child: Container(
          // height: MediaQuery.of(context).size.height * .70,
          decoration: const ShapeDecoration(
            color: Colors.white,
            shape: SmoothRectangleBorder(
              borderRadius: SmoothBorderRadius.only(
                topRight: SmoothRadius(
                  cornerRadius: AppBorderRaduis.smallsize,
                  cornerSmoothing: .1,
                ),
              ),
            ),
          ),
          width: double.infinity,
          child: !controller.isLoaading.value
              ? Text('')
              : SpinKitSpinningLines(color: AppColor.secondColor),
        ),
      );
    });
  }
}
