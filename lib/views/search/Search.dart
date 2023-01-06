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
                          print(val);
                        },
                        validator: (val) => validInput(val!, 1, 30, 'Email'),
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
                    (gen) => Chip(
                        label: Text(
                      gen.name,
                      style: TextStyle(fontSize: 10),
                    )),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: true
                    ? Container(
                        child: (controller.searchOffers.length > 0)
                            ? Container(
                                height:
                                    MediaQuery.of(context).size.height * .70,
                                child: ListView.separated(
                                  physics: BouncingScrollPhysics(),
                                  itemCount: controller.searchOffers.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    RealState offer =
                                        controller.searchOffers[index];
                                    return SearchOffersItem(offer: offer);
                                  },
                                  separatorBuilder:
                                      (BuildContext context, int index) =>
                                          const SizedBox(height: 7),
                                ),
                              )
                            : Container(
                                height: MediaQuery.of(context).size.height * .5,
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 100),
                                    child: AppSvgImg.notFound,
                                  ),
                                ),
                              ),
                      )
                    : Text('text'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
