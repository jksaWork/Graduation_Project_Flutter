import 'package:flutter/material.dart';
import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:get/get.dart';
import 'package:real_state_mangament/controllers/home_controller.dart';
import 'package:real_state_mangament/core/Constrant/AppColors.dart';

class ServiceSection extends StatelessWidget {
  const ServiceSection({Key? key}) : super(key: key);
  // final TabController tabController = TabController();

  @override
  Widget build(BuildContext context) {
    // HomeControler homeControler = Get.find<>
    HomeControler homeControler = Get.find<HomeControler>();

    return Container(
      // child: Defulat
      // child: TabBar(tabs: [Text('Hello')]),
      child: Column(
        children: [
          // SizedBox(height: 20),
          DefaultTabController(
            length: 3,
            child: Container(
              height: 50,
              margin: EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white.withOpacity(.1),
              ),
              child: TabBar(
                  onTap: (e) {
                    homeControler.onTap(e);
                    // print(e);
                  },
                  indicator: BubbleTabIndicator(
                    tabBarIndicatorSize: TabBarIndicatorSize.tab,
                    indicatorHeight: 40,
                    indicatorColor: AppColor.secondColor,
                    indicatorRadius: 10,
                  ),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.white,
                  tabs: [
                    Text('ايجار'),
                    Text('بيع'),
                    Text('شراء'),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}

// Container BuildTabs() {
//   return Container(
//     // child: SliverToBoxAdapter(
//     child: DefaultTabController(
//       length: 3,
//       child: Container(
//         height: 50,
//         margin: EdgeInsets.symmetric(
//           horizontal: 30,
//           vertical: 10,
//         ),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10),
//           color: Colors.white.withOpacity(.1),
//         ),
//         child: TabBar(
//             onTap: (e) {
//               print(e);
//             },
//             indicator: BubbleTabIndicator(
//               tabBarIndicatorSize: TabBarIndicatorSize.tab,
//               indicatorHeight: 40,
//               indicatorColor: AppColor.secondColor,
//               indicatorRadius: 10,
//             ),
//             labelColor: Colors.white,
//             unselectedLabelColor: Colors.white,
//             tabs: [
//               Text('ايجار'),
//               Text('بيع'),
//               Text('شراء'),
//             ]),
//       ),
//     ),
//     // ),
//   );
// }
