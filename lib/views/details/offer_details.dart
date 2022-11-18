import 'package:flutter/material.dart';
import 'package:flutter_svg/avd.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:real_state_mangament/data/Models/RealState.dart';
import 'package:real_state_mangament/views/details/widget/ImagePreview.dart';
import 'package:real_state_mangament/views/details/widget/OfferDetailsDescription.dart';

class OfferDetials extends StatelessWidget {
  static String routeName = '/offer_details';
  const OfferDetials({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = Get.parameters['offer'];
    RealState offer = realStateFromJson(args!);
    // print(offer.toJson());
    return Scaffold(
      backgroundColor: Color(0xFFF4f6f9),
      body: Container(
          child: SingleChildScrollView(
        child: Column(children: [
          CustomAppBarProductDetails(context, 3.5),
          ImagePreview(
            offer: offer,
          ),
          OfferDetailsDescription(
            offer: offer,
          ),
        ]),
      )),
    );
  }
}

CustomAppBarProductDetails(context, rating) {
  return SafeArea(
      child: Container(
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
            padding: EdgeInsets.only(left: 15, right: 10, top: 10, bottom: 10),
            decoration: BoxDecoration(
              // borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: GestureDetector(
              onTap: () => Navigator.of(context).pop(),
              child: Icon(
                Icons.arrow_back_ios,
                size: 23,
              ),
            )),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.white),
          child: Row(
            children: [
              Text(rating.toString()),
              SizedBox(width: 5),
              // .asset(),
              SvgPicture.asset('assets/icons/Star Icon.svg'),
            ],
          ),
        )
      ],
    ),
  ));
}

class OffrDetailsArgemnt {
  RealState offer;
  OffrDetailsArgemnt({required this.offer});
}
