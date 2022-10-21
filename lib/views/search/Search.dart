import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/default_transitions.dart';
import 'package:real_state_mangament/controllers/auth/Search/search_contrller.dart';
import 'package:real_state_mangament/core/Constrant/AppColors.dart';
import 'package:real_state_mangament/core/Constrant/AppSvgImg.dart';
import 'package:real_state_mangament/core/Functions/vaidate_input.dart';
import 'package:real_state_mangament/views/Home/Home.dart';
import 'package:real_state_mangament/views/auth/login/login.dart';
import 'package:real_state_mangament/views/auth/widgets/custom_form_filed.dart';
import 'package:real_state_mangament/views/search/Op-search.dart';
import 'package:real_state_mangament/views/search/widgets/app_bar.dart';
import 'package:real_state_mangament/views/search/widgets/bottom_nvaigation_bar.dart';

class Search extends StatelessWidget {
  static var routeName;

  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size;
    SearchController controller = Get.put(SearchController());
    // TextEditingController controller = TextEditingController();
    return Scaffold(
      appBar: SearchAppBarONe(),
      bottomNavigationBar: AppBottomNavigationBar(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  //ايقونة رجوع
                  // Container(
                  //   decoration: BoxDecoration(
                  //       color: Colors.blue,
                  //       borderRadius: BorderRadius.circular(20)),
                  //   child: IconButton(
                  //     iconSize: 20,
                  //     color: Colors.black,
                  //     onPressed: () {},
                  //     icon: Icon(
                  //       Icons.exit_to_app,
                  //     ),
                  //   ),
                  // ),
                ],
              ),
              //search array
              SizedBox(height: 10),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Container(
                      //   decoration: BoxDecoration(
                      //     color: Color.fromARGB(255, 243, 245, 247),
                      //     borderRadius: BorderRadius.circular(33),
                      //   ),
                      //   child: Text(
                      //     "find your Home ",
                      //     style: TextStyle(
                      //         color: Colors.black,
                      //         fontSize: 15,
                      //         fontWeight: FontWeight.bold),
                      //   ),
                      // ),
                      SizedBox(
                        height: 20,
                      ),
                      CustomTextFiled(
                        validator: (val) => validInput(val!, 1, 30, 'Email'),
                        title: 'عن ماذا تبحث',
                        prefiexIcon: AppSvgImg.search2,
                        controller: controller.searchcontroller,
                      ),
                    ],
                  ),
                ),
              ),
              // عنوان الخيارات
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "عن ماذا تبحث",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w100),
                  ),
                  Icon(
                    Icons.more_horiz,
                    color: Colors.blue,
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: IconButton(
                      iconSize: 20,
                      color: Colors.white,
                      onPressed: () {
                        Navigator.of(context).push(Setting_page.routeName);
                      },
                      icon: Icon(
                        Icons.location_city,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: IconButton(
                      iconSize: 20,
                      color: Colors.black,
                      onPressed: () {
                        Navigator.of(context).pushNamed(Setting_page.routeName);
                      },
                      icon: Icon(
                        Icons.home,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: IconButton(
                      iconSize: 20,
                      color: Colors.black,
                      onPressed: () {
                        Navigator.of(context).pushNamed(Home.routeName);
                      },
                      icon: Icon(Icons.location_searching),
                    ),
                  ),
                ],
              ),
              //  SizedBox(height: 20,) ,
              //  Row(children: [OpSearch(opSearch: "بحري ")],)
            ],
          ),
        ),
      ),
    );
  }
}
