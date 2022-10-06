import 'package:real_state_mangament/controllers/auth/login_controller.dart';
import 'package:real_state_mangament/core/Constrant/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordWidget extends StatelessWidget {
  const ForgetPasswordWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginController controller = Get.find();
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Checkbox(
                    value: false,
                    onChanged: (val) {
                      print('changed');
                    }),
                Text('Remeber Me'),
              ],
            ),
          ),
          TextButton(
              onPressed: () {
                controller.goToFogetPassword();
              },
              child: Text(
                "Forget Password ?",
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: AppColor.primaryColor),
              ))
        ],
      ),
    );
  }
}
