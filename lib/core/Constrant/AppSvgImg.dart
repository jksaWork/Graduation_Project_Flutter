import 'package:real_state_mangament/core/Constrant/AppColors.dart';
import 'package:real_state_mangament/core/Constrant/AppImages.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/avd.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppSvgImg {
  // static var mail = Sc
  static SvgPicture mail = SvgPicture.asset('assets/icons/Mail.svg');
  static SvgPicture Lock = SvgPicture.asset(
    'assets/icons/Lock.svg',
    color: Colors.red,
  );

  static SvgPicture facebook = SvgPicture.asset(
    'assets/icons/facebook-2.svg',
    width: 20,
  );

  static SvgPicture google = SvgPicture.asset(
    'assets/icons/google-icon.svg',
    width: 20,
  );
  static SvgPicture tweiter = SvgPicture.asset(
    'assets/icons/twitter.svg',
    width: 20,
  );
  static SvgPicture phone = SvgPicture.asset(
    'assets/icons/Phone.svg',
  );

  static SvgPicture configImage = SvgPicture.asset(
    'assets/images/conf.svg',
    // height: 100,
    // height: 5, width: 5,
    width: 18.0,
    height: 18.0,
  );

  static SvgPicture contact = SvgPicture.asset(
    'assets/images/contact.svg',
    // height: 100,
    // height: 5, width: 5,
    width: 18.0,
    height: 18.0,
  );

  static SvgPicture metting = SvgPicture.asset(
    'assets/images/meet.svg',
  );

  static SvgPicture dist = SvgPicture.asset(
    'assets/images/dist.svg',
  );

  static SvgPicture location = SvgPicture.asset(
    'assets/images/location.svg',
  );

  static SvgPicture map = SvgPicture.asset(
    'assets/images/map.svg',
  );

  static SvgPicture securty = SvgPicture.asset(
    'assets/images/scurity.svg',
  );

  static SvgPicture search = SvgPicture.asset(
    'assets/icons/Search Icon.svg',
    color: Colors.white,
    // width: 15,
    // height: 300,
  );
  static SvgPicture search2 = SvgPicture.asset(
    'assets/icons/Search Icon.svg',
    width: 20,
    // color: AppColor.primaryColor,
  );

  static SvgPicture heart = SvgPicture.asset(
    'assets/icons/Heart Icon.svg',
  );

  static SvgPicture heart2 = SvgPicture.asset(
    'assets/icons/Heart Icon_2.svg',
    color: AppColor.secondColor,
  );

  static SvgPicture notFound = SvgPicture.asset(
    'assets/images/not_found2.svg',
  );

  static SvgPicture WhatsappIcon = SvgPicture.asset(
    'assets/icons/whatsapp-svgrepo-com.svg',
  );
}
