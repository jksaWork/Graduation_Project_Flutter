import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_state_mangament/core/Constrant/AppColors.dart';
import 'package:real_state_mangament/data/Source/Static/floating_navigation_bar.dart';

class CustomFloatingNav extends StatelessWidget {
  final int pageid;
  const CustomFloatingNav({Key? key, required this.pageid});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.black,
      width: MediaQuery.of(context).size.width,
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(.1),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: Offset(1, 1), // changes position of shadow
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: const SmoothBorderRadius.all(
                SmoothRadius(
                  cornerRadius: 40,
                  cornerSmoothing: 1,
                ),
              ),
              child: Container(
                width: 250,
                decoration: BoxDecoration(
                  color: AppColor.primaryColor,
                ),
                // height: 60,
                padding: EdgeInsets.all(15),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ...flotingButtonNav.asMap().entries.map(
                        (el) {
                          var value = el.value;
                          // var icon = el.value.icon;
                          print(el.value['icon']);
                          // print();
                          return GetNavItem(el);
                        },
                      )
                    ]),
              ),
            ))
      ]),
    );
  }

  Container GetNavItem(MapEntry<int, dynamic> el) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomNavItem(
            el: el.value['icon'],
            isactive: el.key == pageid,
            action: el.value['route'],
          ),
        ],
      ),
    );
  }
}

class CustomNavItem extends StatelessWidget {
  final el;
  final bool isactive;
  final String? action;
  const CustomNavItem({
    required this.el,
    required this.isactive,
    required this.action,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(action!);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: Icon(
          el,
          size: 25,
          color: !isactive ? Colors.white : AppColor.secondColor,
        ),
      ),
    );
  }
}
