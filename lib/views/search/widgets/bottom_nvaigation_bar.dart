import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:real_state_mangament/core/Constrant/AppColors.dart';

class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
          label: 'الرايسية',
        ),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              size: 30,
              color: Colors.white,
            ),
            label: 'الاعدادات'),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
            size: 30,
            color: Colors.white,
          ),
          label: 'بروفايل',
        )
      ],
      backgroundColor: AppColor.primaryColor,
    );
  }
}
