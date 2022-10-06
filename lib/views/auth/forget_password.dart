// import ''
import 'package:real_state_mangament/controllers/auth/forget_password.dart';
import 'package:real_state_mangament/core/Constrant/AppSvgImg.dart';
import 'package:real_state_mangament/core/Functions/vaidate_input.dart';
import 'package:real_state_mangament/core/Shared/app_bars.dart';
import 'package:real_state_mangament/views/auth/widgets/auth_page_heading.dart';
import 'package:real_state_mangament/views/auth/widgets/contiue_button.dart';
import 'package:real_state_mangament/views/auth/widgets/custom_form_filed.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPassword extends StatelessWidget {
  static String routeName = '/forgetPassword';
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ForgetPasswordController controller = Get.put(ForgetPasswordController());
    return Scaffold(
      appBar: BarWithArrow(context, 'forget Password'),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(children: [
          AuthPageHeading(
              head: 'Forget Password',
              description:
                  'If You Are forgget Password Type Your Phone NUmber We Will Send Verify  Code To You '),
          SizedBox(
            height: 50,
          ),
          Container(
            child: CustomTextFiled(
              validator: (val) => validInput(val!, 8, 30, ''),
              controller: controller.phone,
              title: 'Phone Number',
              prefiexIcon: AppSvgImg.phone,
            ),
          ),
          SizedBox(height: 50),
          ContinueButton(press: () {
            controller.GoToOtp();
          })
        ]),
      ),
    );
  }
}
