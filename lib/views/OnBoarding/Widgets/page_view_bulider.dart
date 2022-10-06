import 'package:flutter_svg/flutter_svg.dart';
import 'package:real_state_mangament/controllers/on_boarding_controller.dart';
import 'package:real_state_mangament/data/Models/OnBardingModel.dart';
import 'package:real_state_mangament/data/Source/Static/on_board_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageViewSections extends GetView<onBoardingController> {
  const PageViewSections({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height * .7,
      child: PageView.builder(
          controller: controller.pageController,
          onPageChanged: (val) {
            controller.onPageChanched(val);
          },
          itemCount: onBoardingListImage.length,
          itemBuilder: (context, i) {
            SvgPicture item = onBoardingListImage[i];
            return Container(
              width: MediaQuery.of(context).size.width / 2,
              child: Container(
                decoration: BoxDecoration(
                    // clipBehavior: Clip.hardEdge,
                    ),
                // width: 200,
                // height: 100,
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
                child: item,
              ),
            );
          }),
    );
  }
}
