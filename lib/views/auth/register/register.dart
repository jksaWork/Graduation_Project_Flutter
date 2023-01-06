import 'package:figma_squircle/figma_squircle.dart';
import 'package:real_state_mangament/controllers/auth/register_controller.dart';
import 'package:real_state_mangament/core/Constrant/AppColors.dart';
import 'package:real_state_mangament/core/Constrant/AppSvgImg.dart';
import 'package:real_state_mangament/core/Functions/vaidate_input.dart';
import 'package:real_state_mangament/core/Shared/app_bars.dart';
import 'package:real_state_mangament/views/auth/register/SocialLinksRegister.dart';
import 'package:real_state_mangament/views/auth/register/completed_profile.dart';
import 'package:real_state_mangament/views/auth/widgets/Social_links.dart';
import 'package:real_state_mangament/views/auth/widgets/auth_page_heading.dart';
import 'package:real_state_mangament/views/auth/widgets/contiue_button.dart';
import 'package:real_state_mangament/views/auth/widgets/custom_form_filed.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../register/SocialLinksRegister.dart';

class Register extends StatelessWidget {
  static String routeName = '/register';

  const Register({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    registerController controller = Get.put(registerController());
    return Scaffold(
      appBar: BarWithArrow(context, 'عقاري'),
      body: Container(
        // color: Colors.white,
        // padding: EdgeInsets.all(20),
        child: ListView(children: [
          Container(
            decoration: const ShapeDecoration(
              color: AppColor.primaryColor,
              shape: SmoothRectangleBorder(
                borderRadius: SmoothBorderRadius.only(
                  bottomLeft: SmoothRadius(
                    cornerRadius: 50,
                    cornerSmoothing: .1,
                  ),
                  bottomRight: SmoothRadius(
                    cornerRadius: 50,
                    cornerSmoothing: 1.4,
                  ),
                ),
              ),
            ),
            child: AuthPageHeading(
                head: 'انشاء حساب',
                description:
                    'is important to document a parent’s attendance using a sign-in sheet as it provides proof of'),
          ),
          SizedBox(height: 20),
          Container(
            child: Form(
              key: controller.loginKey,
              child: Column(
                children: [
                  CustomTextFiled(
                      validator: (val) => validInput(val!, 8, 30, ''),
                      controller: controller.name,
                      title: 'الاسم',
                      prefiexIcon: AppSvgImg.mail),
                  CustomTextFiled(
                      validator: (val) => validInput(val!, 8, 30, ''),
                      controller: controller.email,
                      title: 'الايميل',
                      prefiexIcon: AppSvgImg.mail),
                  CustomTextFiled(
                      validator: (val) => validInput(val!, 8, 30, ''),
                      controller: controller.password,
                      title: 'كلمة المرور',
                      prefiexIcon: AppSvgImg.Lock),
                  CustomTextFiled(
                      validator: (val) => validInput(val!, 8, 30, ''),
                      controller: controller.phone,
                      title: 'رقم الهاتف',
                      prefiexIcon: AppSvgImg.Lock),
                  // SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: ContinueButton(press: () {
                      controller.registreClient();
                    }),
                  ),
                  SocialLinksRegister(),
                ],
              ),
            ),
          ),
        ]),
        //
      ),
    );
  }
}
