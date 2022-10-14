import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:real_state_mangament/controllers/home_controller.dart';
import 'package:real_state_mangament/core/Constrant/AppBorderRaduis.dart';
import 'package:real_state_mangament/core/Constrant/AppColors.dart';
import 'package:real_state_mangament/data/Models/RealState.dart';
import 'package:real_state_mangament/views/Home/widgets/RealStateComponets.dart';

class OffersSection extends StatelessWidget {
  const OffersSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // HomeControler homeControler = Get.find();
    return GetBuilder<HomeControler>(builder: (controller) {
      return Container(
        // color: AppColor.primaryColor,
        child: Container(
          height: MediaQuery.of(context).size.height * .80,
          // clipBehavior: Clip.antiAlias,
          padding: EdgeInsets.symmetric(horizontal: 10),
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
              ? SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        // height: MediaQuery.of(context).size.height * .05,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'كل العروض',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            Icon(Icons.filter_list),
                          ],
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * .85,
                        child: ListView.builder(
                          itemCount: controller.realStates.value.length,
                          itemBuilder: (BuildContext context, int index) {
                            RealState state =
                                controller.realStates.value[index];
                            return RealStateComponent(state: state);
                          },
                        ),
                      ),
                    ],
                  ),
                )
              : SpinKitSpinningLines(color: AppColor.secondColor),
        ),
      );
    });
  }
}
