import 'package:flutter/material.dart';
import 'package:flutter_svg/avd.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:real_state_mangament/controllers/details_controller.dart';
import 'package:real_state_mangament/core/Constrant/AppColors.dart';
import 'package:real_state_mangament/core/Constrant/AppSvgImg.dart';
import 'package:real_state_mangament/data/Models/RealState.dart';
import 'package:real_state_mangament/views/details/widget/ImagePreview.dart';
import 'package:real_state_mangament/views/details/widget/OfferDetailsDescription.dart';

class OfferDetials extends StatelessWidget {
  static String routeName = '/offer_details';
  DetailsController controllerdetails = Get.put(DetailsController());
  OfferDetials({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // print(offer.toJson());
    return Scaffold(
      // floatingActionButtonLocation: FloatingActionButtonLocation(Center),
      floatingActionButton: GestureDetector(
        onTap: () => controllerdetails.launchWhatsapp(),
        child: Container(
          width: 70,
          height: 70,
          child: Center(child: AppSvgImg.WhatsappIcon),
        ),
      ),
      backgroundColor: Color(0xFFF4f6f9),
      body: Container(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Container(
                child: Column(children: [
                  ImagePreview(
                    offer: controllerdetails.offer,
                  ),
                  OfferDetailsDescription(
                    DetialasRowList: controllerdetails.DetialasRow,
                    offer: controllerdetails.offer,
                  ),
                ]),
              ),
            ),
            Positioned(
                child: CustomAppBarProductDetails(
                    context, controllerdetails.offer.price))
          ],
        ),
      ),
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
            padding:
                const EdgeInsets.only(left: 15, right: 10, top: 10, bottom: 10),
            decoration: const BoxDecoration(
              // borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: GestureDetector(
              onTap: () => Navigator.of(context).pop(),
              child: const Icon(
                Icons.arrow_back_ios,
                size: 23,
              ),
            )),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.white),
          child: Row(
            children: [
              Text(rating.toString()),
              SizedBox(width: 5),
              AppSvgImg.heart2,
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
