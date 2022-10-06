import 'package:real_state_mangament/core/Translations/localizationController.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:get/state_manager.dart';

class ChoseLanguage extends GetView<localelizationController> {
  const ChoseLanguage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chose Langauage'),
      ),
      body: Container(
        child: Column(
          children: [
            // Text(''),
            ListTile(
              title: Text('arabic'.tr),
              trailing: Icon(Icons.language),
              onTap: () {
                controller.changeLocale('ar');
              },
            ),
            ListTile(
              title: Text('English'.tr),
              trailing: Icon(Icons.language),
              onTap: () {
                controller.changeLocale('en');
              },
            ),
          ],
        ),
      ),
    );
  }
}
