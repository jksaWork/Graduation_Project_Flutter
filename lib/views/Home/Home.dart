import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:real_state_mangament/controllers/home_controller.dart';
import 'package:real_state_mangament/core/Constrant/AppBorderRaduis.dart';
import 'package:real_state_mangament/core/Constrant/AppColors.dart';
import 'package:real_state_mangament/core/Shared/app_bars.dart';
import 'package:flutter/material.dart';
import 'package:real_state_mangament/views/Home/widgets/AppBarWithOffer.dart';
import 'package:real_state_mangament/views/Home/widgets/offer_sections.dart';
import 'package:real_state_mangament/views/OnBoarding/Widgets/Text_page_view.dart';
import 'package:real_state_mangament/views/OnBoarding/Widgets/dot_sections.dart';
import 'package:real_state_mangament/views/OnBoarding/Widgets/page_view_bulider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  static String routeName = '/home';
  @override
  Widget build(BuildContext context) {
    HomeControler homeControler = Get.put(HomeControler());
    return Scaffold(
      body: SafeArea(
        child: Container(
            height: MediaQuery.of(context).size.height,
            color: Colors.white,
            width: double.infinity,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height * .20,
                  child: ClipRRect(
                    borderRadius: SmoothBorderRadius.only(
                      bottomLeft: SmoothRadius(
                        cornerRadius: AppBorderRaduis.smallsize,
                        cornerSmoothing: 1.4,
                      ),
                    ),
                    child: Container(
                      color: AppColor.primaryColor,
                      width: double.infinity,
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        height: 200,
                        // width: 100,
                        child: Text("hello"),
                      ),
                    ),
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      color: AppColor.primaryColor,
                      height: MediaQuery.of(context).size.height * .80 - 24,
                      child: ClipRRect(
                        child: Container(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * .80 - 20,
                          decoration: const ShapeDecoration(
                            // color: Colors.red.withOpacity(0.75),
                            color: Colors.white,
                            shape: SmoothRectangleBorder(
                              borderRadius: SmoothBorderRadius.only(
                                topRight: SmoothRadius(
                                  cornerRadius: AppBorderRaduis.smallsize,
                                  cornerSmoothing: .4,
                                ),
                              ),
                            ),
                          ),
                          // height: ,
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                // height: 120,
                                child: Text('Hello'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            )),
      ),
    );
  }
}
