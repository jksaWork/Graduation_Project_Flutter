import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:real_state_mangament/controllers/home_controller.dart';
import 'package:real_state_mangament/core/Constrant/AppBorderRaduis.dart';
import 'package:real_state_mangament/core/Constrant/AppColors.dart';
import 'package:real_state_mangament/core/Shared/app_bars.dart';
import 'package:flutter/material.dart';
import 'package:real_state_mangament/views/Home/widgets/AppBarWithOffer.dart';
import 'package:real_state_mangament/views/Home/widgets/RealStateComponets.dart';
import 'package:real_state_mangament/views/Home/widgets/offer_sections.dart';
import 'package:real_state_mangament/views/OnBoarding/Widgets/Text_page_view.dart';
import 'package:real_state_mangament/views/OnBoarding/Widgets/dot_sections.dart';
import 'package:real_state_mangament/views/OnBoarding/Widgets/page_view_bulider.dart';
import 'package:real_state_mangament/views/search/Search.dart';

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
            // color: AppColor.primaryColor,
            width: double.infinity,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppBarWithOfferService(),
                Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      // color: AppColor.primaryColor,
                      height: MediaQuery.of(context).size.height * .80 - 64,
                      child: OffersSection(),
                    )
                  ],
                )
              ],
            )),
      ),
    );
  }
}
