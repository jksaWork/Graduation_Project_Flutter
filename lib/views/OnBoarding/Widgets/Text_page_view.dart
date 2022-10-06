import 'package:flutter_svg/flutter_svg.dart';
import 'package:real_state_mangament/controllers/on_boarding_controller.dart';
import 'package:real_state_mangament/data/Models/OnBardingModel.dart';
import 'package:real_state_mangament/data/Source/Static/on_board_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextPageViewSections extends GetView<onBoardingController> {
  const TextPageViewSections({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height * .7,
      child: PageView.builder(
          controller: controller.textPageController,
          onPageChanged: (val) {
            controller.onPageChanched(val);
          },
          itemCount: onBoardingListImage.length,
          itemBuilder: (context, i) {
            OnBoardModel item = onBoardingList[i];
            return Container(
                width: MediaQuery.of(context).size.width / 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      item.title!,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),

                    // Text('Jksa Altigani')
                    Container(
                      child: Center(
                        child: Text(
                          item.body!,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  ],
                ));
          }),
    );
  }
}
