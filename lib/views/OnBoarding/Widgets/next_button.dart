import 'package:real_state_mangament/controllers/on_boarding_controller.dart';
import 'package:real_state_mangament/core/Constrant/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class NextButton extends GetView<onBoardingController> {
  const NextButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print(controller.OnBoardingLength > controller.currentIndex + 1);
        controller.next();
      },
      child: Container(
          width: 200,
          margin: EdgeInsets.symmetric(horizontal: 30),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          // height: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColor.secondColor,
          ),
          child: GetBuilder<onBoardingController>(builder: (context) {
            return Center(
              child: controller.OnBoardingLength > controller.currentIndex + 1
                  ? Text(
                      'Contiune',
                      style: TextStyle(color: Colors.white),
                    )
                  : Text(
                      'Start',
                      style: TextStyle(color: Colors.white),
                    ),
            );
          })),
    );
  }
}
