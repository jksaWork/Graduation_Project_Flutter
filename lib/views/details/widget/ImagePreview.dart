import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_state_mangament/controllers/details_controller.dart';
import 'package:real_state_mangament/core/Constrant/AppColors.dart';
import 'package:real_state_mangament/data/Models/RealState.dart';
import 'package:transparent_image/transparent_image.dart';

class ImagePreview extends StatefulWidget {
  RealState offer;
  ImagePreview({Key? key, required this.offer}) : super(key: key);

  @override
  State<ImagePreview> createState() => _ImagePreviewState();
}

class _ImagePreviewState extends State<ImagePreview> {
  int selcetIndex = 0;

  @override
  Widget build(BuildContext context) {
    DetailsController controller = Get.find<DetailsController>();
    // String image = widget.product.images[0];
    return Container(
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            // margin: EdgeInsets.symmetric(horizontal: 20),

            child: Stack(children: [
              Container(
                  height: MediaQuery.of(context).size.height * .33,
                  child: Center(child: CircularProgressIndicator())),
              Container(
                clipBehavior: Clip.antiAlias,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: FadeInImage.memoryNetwork(
                  placeholder: kTransparentImage,
                  image: controller.offerImages[controller.selectedindex],
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * .33,
                ),
              )
            ]),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            width: MediaQuery.of(context).size.width,
            height: 70,
            child: ListView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              children: [
                ...List.generate(
                    controller.offerImages.length,
                    (index) => GetSmallPreveiwImage(
                        controller.offerImages[index], index)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  GetBuilder GetSmallPreveiwImage(String image, index) {
    return GetBuilder<DetailsController>(builder: (controler) {
      return GestureDetector(
        onTap: () {
          controler.updateIndex(index);
        },
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 3),
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                  color: controler.selectedindex == index
                      ? AppColor.primaryColor
                      : Colors.white,
                  width: .3),
              color: Colors.white),
          width: 70,
          child: AspectRatio(
            aspectRatio: 1,
            child: Stack(children: [
              Container(child: Center(child: CircularProgressIndicator())),
              Container(
                clipBehavior: Clip.antiAlias,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: FadeInImage.memoryNetwork(
                  placeholder: kTransparentImage,
                  image: image,
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width,
                  height: 70,
                ),
              )
            ]),
          ),
        ),
      );
    });
  }
}
