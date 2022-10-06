import 'package:real_state_mangament/controllers/on_boarding_controller.dart';
import 'package:real_state_mangament/core/Constrant/AppBorderRaduis.dart';
import 'package:real_state_mangament/core/Constrant/AppColors.dart';
import 'package:real_state_mangament/data/Models/OnBardingModel.dart';
import 'package:real_state_mangament/data/Source/Static/on_board_list.dart';
import 'package:real_state_mangament/views/OnBoarding/Widgets/Text_page_view.dart';
import 'package:real_state_mangament/views/OnBoarding/Widgets/dot_sections.dart';
import 'package:real_state_mangament/views/OnBoarding/Widgets/page_view_bulider.dart';
import 'package:flutter/foundation.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(onBoardingController());
    return Scaffold(
        body: SafeArea(
      child: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 2 - 15,
                color: AppColor.primaryColor,
                child: ClipRRect(
                  borderRadius: SmoothBorderRadius.only(
                    bottomLeft: SmoothRadius(
                      cornerRadius: AppBorderRaduis.size,
                      cornerSmoothing: 1.4,
                    ),
                  ),
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Container(
                      height: 200,

                      // width: 100,
                      child: PageViewSections(),
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 2 - 10,
                child: ClipRRect(
                  child: Container(
                    decoration: const ShapeDecoration(
                      // color: Colors.red.withOpacity(0.75),
                      color: AppColor.primaryColor,
                      shape: SmoothRectangleBorder(
                        borderRadius: SmoothBorderRadius.only(
                          topRight: SmoothRadius(
                            cornerRadius: AppBorderRaduis.size,
                            cornerSmoothing: 1.4,
                          ),
                        ),
                      ),
                    ),
                    // height: ,
                    width: double.infinity,
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 100,
                          child: TextPageViewSections(),
                        ),
                        DotSections(),
                      ],
                    ),
                  ),
                ),
              )
            ],
          )),
    ));
  }
}
