import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/default_transitions.dart';
import 'package:real_state_mangament/controllers/Search/search_contrller.dart';
// import 'package:real_state_mangament/controllers/auth/Search/search_contrller.dart';
import 'package:real_state_mangament/core/Constrant/AppColors.dart';
import 'package:real_state_mangament/core/Constrant/AppSvgImg.dart';
import 'package:real_state_mangament/core/Functions/vaidate_input.dart';
import 'package:real_state_mangament/data/Models/RealState.dart';
import 'package:real_state_mangament/views/Home/Home.dart';
import 'package:real_state_mangament/views/auth/login/login.dart';
import 'package:real_state_mangament/views/auth/widgets/custom_form_filed.dart';
import 'package:real_state_mangament/views/search/Op-search.dart';
import 'package:real_state_mangament/views/search/widgets/app_bar.dart';
import 'package:real_state_mangament/views/search/widgets/bottom_nvaigation_bar.dart';
import 'package:real_state_mangament/views/search/widgets/search_offers_item.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Search extends StatelessWidget {
  static String routeName = '/search_screen';

  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size;
    var controller = Get.put(SearchController());

    // areas = controller.areas;
    // TextEditingController controller = TextEditingController();
    return Scaffold(
      appBar: SearchAppBarONe(),
      // bottomNavigationBar: AppBottomNavigationBar(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(5),
          child: GetBuilder<SearchController>(builder: (controller) {
            return Container(
              child: Column(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          CustomTextFiled(
                            valueChanged: (val) {
                              controller.getoffer(value: val!);
                            },
                            validator: (val) =>
                                validInput(val!, 1, 30, 'Email'),
                            title: 'عن ماذا تبحث',
                            prefiexIcon: AppSvgImg.search2,
                            controller: controller.searchcontroller,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                      child: Text(
                    'المناطق',
                    // style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.right,
                  )),
                  Wrap(
                    spacing: 2,
                    runSpacing: -4,
                    children: [
                      ...controller.staticAres.map(
                        (gen) => GestureDetector(
                          onTap: () => controller.updateIndex(gen),
                          child: Chip(
                              backgroundColor: gen == controller.currentIndex
                                  ? AppColor.primaryColor.withOpacity(.6)
                                  : null,
                              labelStyle: TextStyle(
                                color: gen != controller.currentIndex
                                    ? AppColor.primaryColor.withOpacity(.6)
                                    : Colors.white,
                              ),
                              label: Text(
                                gen.name,
                                style: TextStyle(fontSize: 10),
                              )),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: controller.isloding.value
                        ? Container(
                            child: (controller.searchOffers.value.length > 0)
                                ? Container(
                                    height: MediaQuery.of(context).size.height *
                                        .70,
                                    child: ListView.separated(
                                      physics: BouncingScrollPhysics(),
                                      itemCount: controller.searchOffers.length,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        RealState offer = controller
                                            .searchOffers.value[index];
                                        return SearchOffersItem(offer: offer);
                                      },
                                      separatorBuilder:
                                          (BuildContext context, int index) =>
                                              const SizedBox(height: 7),
                                    ),
                                  )
                                : Container(
                                    height:
                                        MediaQuery.of(context).size.height * .5,
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 100),
                                        child: AppSvgImg.notFound,
                                      ),
                                    ),
                                  ),
                          )
                        : Container(
                            height: MediaQuery.of(context).size.height * .70,
                            child: SpinKitSpinningLines(
                                color: AppColor.secondColor)),
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
