import 'package:flutter/material.dart';
import 'package:real_state_mangament/core/Constrant/AppColors.dart';
import 'package:real_state_mangament/data/Models/RealState.dart';
import 'package:transparent_image/transparent_image.dart';

class SearchOffersItem extends StatelessWidget {
  final RealState offer;
  const SearchOffersItem({Key? key, required this.offer});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      // clipBehavior: Clip,
      clipBehavior: Clip.antiAlias,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 7),
        child: Row(
          children: [
            SmallRealStateImage(image: offer.mainImage),
            SizedBox(width: 10),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    offer.title,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Container(
                    margin: EdgeInsets.all(0),
                    padding: EdgeInsets.all(0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.room_outlined,
                            size: 20,
                          ),
                          SizedBox(width: 10),
                          Text(offer.location),
                          SizedBox(width: 10),
                        ]),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .52,
                    child: Text(
                      'تقع الخرطوم في منتصف المساحة المأهولة وسط السودان تقريبا -أقرب إلى الشرق- بين خطي العرض',
                      style: TextStyle(color: AppColor.grey, fontSize: 13),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SmallRealStateImage extends StatelessWidget {
  final String image;
  const SmallRealStateImage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      height: 120,
      width: MediaQuery.of(context).size.width * .36,
      child: Stack(children: [
        Container(child: Center(child: CircularProgressIndicator())),
        Container(
          // clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          child: FadeInImage.memoryNetwork(
            placeholder: kTransparentImage,
            image: image != null
                ? image
                : 'https://cdn.pixabay.com/photo/2016/11/18/17/46/house-1836070__340.jpg',
            fit: BoxFit.cover,
            width: 150,
            height: 150,
          ),
        )
      ]),
    );
  }
}
