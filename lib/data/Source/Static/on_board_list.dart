import 'package:real_state_mangament/core/Constrant/AppImages.dart';
import 'package:real_state_mangament/core/Constrant/AppSvgImg.dart';
import 'package:real_state_mangament/data/Models/OnBardingModel.dart';

List<OnBoardModel> onBoardingList = [
  OnBoardModel(
      title: "اعثر علي طلبك",
      body: "سرعة في الحصول علي ما تبحث مع فرص  ",
      image: AppImageAsset.onBoardingImageOne),
  OnBoardModel(
      title: "سهولة و انسيابية الدفع",
      body: "تعدد طرق الدفع و تافر خدمات للمستخدم",
      image: AppImageAsset.onBoardingImageTwo),
  OnBoardModel(
      title: "تتبع موقع طلبك",
      body: "دقة و كفاة سرعة الوصول ",
      image: AppImageAsset.onBoardingImageThree),
  OnBoardModel(
      title: "امن ",
      body: "امن و دقة موثوقية المعاملات",
      image: AppImageAsset.onBoardingImageThree)
];

List onBoardingListImage = [
  AppSvgImg.dist,
  AppSvgImg.metting,
  AppSvgImg.location,
  AppSvgImg.securty
];
