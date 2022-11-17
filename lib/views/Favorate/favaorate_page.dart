import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_state_mangament/controllers/favorate_controller.dart';
import 'package:real_state_mangament/views/Custom/custom_floting_bar.dart';
import 'package:real_state_mangament/views/Favorate/widget/FavorateSection.dart';
import 'package:real_state_mangament/views/Home/widgets/offer_sections.dart';
import 'package:real_state_mangament/views/search/widgets/app_bar.dart';

class FavoratePage extends StatelessWidget {
  static String routeName = '/favorate_page';
  const FavoratePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FavorateController controller = Get.put(FavorateController());
    return Scaffold(
      appBar: SearchAppBarONe(title: 'المفضله'),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
                padding: EdgeInsets.all(10),
                // height: MediaQuery.of(context).size.height - 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      child: FavorateSection(
                          favorate: controller.realStates.value),
                    ),
                  ],
                )),
            const Positioned(
              bottom: 10,
              child: CustomFloatingNav(pageid: 3),
            ),
          ],
        ),
      ),
    );
  }
}
