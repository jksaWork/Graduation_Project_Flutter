import 'package:real_state_mangament/core/Constrant/AppColors.dart';
import 'package:real_state_mangament/core/Constrant/AppSvgImg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTextFiled extends StatelessWidget {
  final SvgPicture? prefiexIcon;
  final String? title;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  // final String? Function(String?)? onChange;
  final ValueChanged<String?>? valueChanged;

  const CustomTextFiled(
      {Key? key,
      required this.title,
      required this.prefiexIcon,
      required this.controller,
      required this.validator,
      this.valueChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: TextFormField(
        onChanged: valueChanged,
        validator: validator,
        controller: controller,
        decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            alignLabelWithHint: true,
            suffix: Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              child: prefiexIcon,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              // borderSide: BorderSide(color: colo)
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1.0, color: AppColor.primaryColor),
              borderRadius: BorderRadius.circular(50),
            ),
            focusColor: AppColor.primaryColor,
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            label: Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Text(title!),
            )),
      ),
    );
  }
  // Container CustomTextFiled() {
  // return   }

}
