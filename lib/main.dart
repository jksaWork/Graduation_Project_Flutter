import 'package:real_state_mangament/core/Services/my_services.dart';
import 'package:real_state_mangament/core/Translations/localizationController.dart';
import 'package:real_state_mangament/core/Translations/translation.dart';
import 'package:real_state_mangament/routes.dart';
import 'package:real_state_mangament/views/OnBoarding/OnBoarding.dart';
import 'package:real_state_mangament/views/auth/login/login.dart';
import 'package:real_state_mangament/views/language/lang.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initMyService();
  // await Ap
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    localelizationController controller = Get.put(localelizationController());
    MyServices service = Get.find();
    // print(controller.language);
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'Cairo',
          primarySwatch: Colors.blue,
          textTheme: TextTheme(
              // titleMedium: TextStyle(color: Colors.black),
              headline4:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black))),
      translations: MyTransaltion(),
      locale: controller.language,
      // home: service.sharedPreferences.getBool('first_time') == null
      //     ? const OnBoarding()
      //     : const Login(),
      // home: ChoseLanguage(),
      getPages: routes,
    );
  }
}
