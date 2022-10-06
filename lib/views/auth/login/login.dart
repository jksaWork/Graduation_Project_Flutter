// import 'mate'
import 'package:figma_squircle/figma_squircle.dart';
import 'package:real_state_mangament/controllers/auth/login_controller.dart';
import 'package:real_state_mangament/core/Constrant/AppColors.dart';
import 'package:real_state_mangament/core/Constrant/AppSvgImg.dart';
import 'package:real_state_mangament/core/Functions/close_alert.dart';
import 'package:real_state_mangament/core/Shared/app_bars.dart';
import 'package:real_state_mangament/views/auth/login/widgets/login_form.dart';
import 'package:real_state_mangament/views/auth/register/register.dart';
import 'package:real_state_mangament/views/auth/widgets/Social_links.dart';
import 'package:real_state_mangament/views/auth/widgets/auth_page_heading.dart';
import 'package:real_state_mangament/views/auth/widgets/contiue_button.dart';
import 'package:real_state_mangament/views/auth/widgets/custom_form_filed.dart';
import 'package:real_state_mangament/views/auth/widgets/forget_password_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  static String routeName = '/login';
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginController controller = Get.put(LoginController());
    return Scaffold(
      appBar: BarWithNowBackArrow(context, 'Sign In'),
      body: WillPopScope(
        onWillPop: appColseAlert,
        child: Container(
          // color: Colors.white,
          color: AppColor.primaryColor,
          child: Container(
            color: Colors.white,
            // padding: EdgeInsets.all(10),
            child: ListView(
              children: [
                // Page Headding
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
                      head: 'Wellcome Back',
                      description:
                          'is important to document a parent’s attendance using a sign-in sheet as it provides proof of'),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  // height: MediaQuery.of(context).size.height * .60,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      LoginFrom(),
                      // Socilal Links
                      SocialLinks(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
