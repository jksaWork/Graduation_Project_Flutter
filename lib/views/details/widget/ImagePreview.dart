import 'dart:ui';

// import 'package:e_commerce/models/Produxt.dart';
// import 'package:e_commerce/screens/constant.dart';
import 'package:flutter/material.dart';
import 'package:real_state_mangament/core/Constrant/AppColors.dart';
import 'package:real_state_mangament/data/Models/RealState.dart';

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
    // String image = widget.product.images[0];
    return Container(
      child: Column(
        children: [
          SizedBox(
            width: 170,
            child: AspectRatio(
              aspectRatio: 1,
              child: Image.asset(widget.offer.mainImage),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * .7,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ...List.generate(
                    widget.offer.images.length,
                    (index) => GetSmallPreveiwImage(
                        widget.offer.images[index].url, index))
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  GestureDetector GetSmallPreveiwImage(String image, index) {
    return GestureDetector(
      onTap: () {
        print('index ================= $index');
        print('selcetIndex ================= $selcetIndex');
        setState(() {
          selcetIndex = index;
        });
      },
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
                color:
                    selcetIndex == index ? AppColor.primaryColor : Colors.white,
                width: .3),
            color: Colors.white),
        width: 50,
        child: AspectRatio(
          aspectRatio: 1,
          child: Image.asset(image),
        ),
      ),
    );
  }
}
