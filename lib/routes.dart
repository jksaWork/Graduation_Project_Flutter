import 'package:real_state_mangament/Middlewares/authunticated_middleware.dart';
import 'package:real_state_mangament/Middlewares/onbarding_middleware.dart';
import 'package:real_state_mangament/views/Favorate/favaorate_page.dart';
import 'package:real_state_mangament/views/Home/Account.dart/Account.dart';
import 'package:real_state_mangament/views/Home/Home.dart';
import 'package:real_state_mangament/views/OnBoarding/OnBoarding.dart';
import 'package:real_state_mangament/views/auth/Opt.dart';
import 'package:real_state_mangament/views/auth/forget_password.dart';
import 'package:real_state_mangament/views/auth/login/login.dart';
import 'package:real_state_mangament/views/auth/login_success.dart';
import 'package:real_state_mangament/views/auth/register/completed_profile.dart';
import 'package:real_state_mangament/views/auth/register/register.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_state_mangament/views/details/offer_details.dart';
import 'package:real_state_mangament/views/search/Op-search.dart';
import 'package:real_state_mangament/views/search/Search.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(name: '/', page: () => const OnBoarding(), middlewares: [
    OnBoardingMiddleWare(),
  ]),
  //GetPage(name: Setting_page.routeName, page: () => const Setting_page()),
  GetPage(name: Login.routeName, page: () => const Login(), middlewares: [
    AuthUntecatedMiddleware(),
  ]),
  GetPage(name: Register.routeName, page: () => const Register()),
  GetPage(
      name: CompletedProfile.routeName, page: () => const CompletedProfile()),
  GetPage(name: LogginSuccess.routeName, page: () => const LogginSuccess()),
  GetPage(name: ForgetPassword.routeName, page: () => const ForgetPassword()),
  GetPage(name: Home.routeName, page: () => const Home()),
  GetPage(name: OfferDetials.routeName, page: () => OfferDetials()),

  GetPage(name: Search.routeName, page: () => const Search()),
  GetPage(name: FavoratePage.routeName, page: () => const FavoratePage())
];
