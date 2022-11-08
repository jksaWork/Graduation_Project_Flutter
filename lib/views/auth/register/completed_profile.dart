import 'package:real_state_mangament/controllers/auth/register_controller.dart';
import 'package:real_state_mangament/core/Constrant/AppSvgImg.dart';
import 'package:real_state_mangament/core/Functions/vaidate_input.dart';
import 'package:real_state_mangament/core/Shared/app_bars.dart';
import 'package:real_state_mangament/views/auth/widgets/Social_links.dart';
import 'package:real_state_mangament/views/auth/widgets/auth_page_heading.dart';
import 'package:real_state_mangament/views/auth/widgets/contiue_button.dart';
import 'package:real_state_mangament/views/auth/widgets/custom_form_filed.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CompletedProfile extends StatelessWidget {
  static String routeName = '/completed_profile';

  const CompletedProfile({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    registerController controller = Get.put(registerController());
    return Scaffold(
      appBar: BarWithArrow(context, 'Sign Up'),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(20),
        child: ListView(children: [
          AuthPageHeading(
              head: 'Complete Profile',
              description:
                  'Type Your Account Inforamtion And Join To  to Thiget" in commerce.s He'),
          Container(
            child: Column(
              children: [
                CustomTextFiled(
                    validator: (val) => validInput(val!, 8, 30, ''),
                    controller: controller.name,
                    title: 'First Name',
                    prefiexIcon: AppSvgImg.mail),
                CustomTextFiled(
                    validator: (val) => validInput(val!, 8, 30, ''),
                    controller: controller.name,
                    title: 'Last Name',
                    prefiexIcon: AppSvgImg.Lock),
                CustomTextFiled(
                    validator: (val) => validInput(val!, 8, 30, ''),
                    controller: controller.phone,
                    title: 'Phone Number',
                    prefiexIcon: AppSvgImg.Lock),
                CustomTextFiled(
                    validator: (val) => validInput(val!, 8, 30, ''),
                    controller: controller.name,
                    title: 'Address',
                    prefiexIcon: AppSvgImg.Lock),
                // SizedBox(height: 10),
                ContinueButton(press: () {
                  // print('tabed 5 imes ');
                  Get.toNamed(CompletedProfile.routeName);
                }),
                // SocialLinks(),
              ],
            ),
          ),
        ]),
        //
      ),
    );
  }
}
