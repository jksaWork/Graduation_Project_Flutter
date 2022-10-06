import 'package:real_state_mangament/controllers/auth/login_controller.dart';
import 'package:real_state_mangament/core/Constrant/AppSvgImg.dart';
import 'package:real_state_mangament/core/Functions/vaidate_input.dart';
import 'package:real_state_mangament/views/auth/login_success.dart';
import 'package:real_state_mangament/views/auth/widgets/contiue_button.dart';
import 'package:real_state_mangament/views/auth/widgets/custom_form_filed.dart';
import 'package:real_state_mangament/views/auth/widgets/forget_password_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginFrom extends StatelessWidget {
  const LoginFrom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoginFormFiled();
  }

  Container LoginFormFiled() {
    LoginController controller = Get.find();
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Form(
        key: controller.loginKey,
        child: Column(children: [
          CustomTextFiled(
            validator: (val) => validInput(val!, 8, 30, 'Email'),
            title: 'Emial',
            prefiexIcon: AppSvgImg.mail,
            controller: controller.email,
          ),
          CustomTextFiled(
              validator: (val) => validInput(val!, 8, 30, 'Password'),
              title: 'Password',
              prefiexIcon: AppSvgImg.Lock,
              controller: controller.password),
          ForgetPasswordWidget(),
          ContinueButton(
            press: () {
              controller.login();
            },
          ),
        ]),
      ),
    );
  }
}
