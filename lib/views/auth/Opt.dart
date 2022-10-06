import 'package:real_state_mangament/core/Shared/app_bars.dart';
import 'package:real_state_mangament/views/auth/widgets/auth_page_heading.dart';
import 'package:real_state_mangament/views/auth/widgets/contiue_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class Otp extends StatelessWidget {
  static String routeName = 'otp';
  const Otp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BarWithArrow(context, 'Veriy Code'),
      body: ListView(
        children: [
          SizedBox(
            height: 30,
          ),
          AuthPageHeading(
            head: 'Opt Verfication',
            description: 'We Have Send Otp Verfication To You Please Enter It',
          ),
          SizedBox(height: 70),
          OptSection(context),
          SizedBox(height: 70),
          ContinueButton(press: () {})
        ],
      ),
    );
  }

  Container OptSection(BuildContext context) {
    return Container(
      child: OtpTextField(
        fieldWidth: 60,
        filled: true,
        numberOfFields: 4,
        borderColor: Color(0xFF512DA8),
        //set to true to show as box or false to show as dash
        showFieldAsBox: false,
        //runs when a code is typed in
        onCodeChanged: (String code) {
          //handle validation or checks here
        },
        //runs when every textfield is filled
        onSubmit: (String verificationCode) {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("Verification Code"),
                  content: Text('Code entered is $verificationCode'),
                );
              });
        }, // end onSubmit
      ),
    );
  }
}
