import 'package:flutter/material.dart';
import 'package:real_state_mangament/core/Constrant/AppColors.dart';
import 'package:real_state_mangament/core/Functions/GetOfferDetailsRow.dart';
import 'package:real_state_mangament/data/Models/RealState.dart';
import 'package:real_state_mangament/views/details/widget/GoogleMapImageWidget.dart';

class OfferDetailsDescription extends StatelessWidget {
  RealState offer;
  List DetialasRowList;
  OfferDetailsDescription(
      {Key? key, required this.offer, required this.DetialasRowList});

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(10),
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(
        top: 10,
      ),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(offer.title, style: Theme.of(context).textTheme.headline6),
            Container(
              width: 60,
              child: Row(
                children: [
                  Text('${offer.price}',
                      style: Theme.of(context).textTheme.headline6),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColor.secondColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Padding(
                      padding: const EdgeInsets.all(4),
                      child: const Text(
                        ' ج س',
                        style:
                            const TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        // DetailsRow(key: 'توع العقار', value: offer.type.name),
        ...DetialasRowList.asMap()
            .entries
            .map((el) => DetailsRow(
                key: el.value['key'],
                value:
                    GetOfferDetailsRow(offer: offer, type: el.value['value'])))
            .toList(),
        Container(
          padding: const EdgeInsets.only(left: 10, top: 10),
          child: Text(
            offer.shortDesc,
            style: const TextStyle(fontSize: 13),
          ),
        ),
        const SizedBox(height: 10),
        // Container(
        //   padding: EdgeInsets.only(left: 10),
        //   child: Text(
        //     offer.shortDesc,
        //     style: TextStyle(
        //         color: AppColor.primaryColor,
        //         fontSize: 18,
        //         fontWeight: FontWeight.w400),
        //   ),
        // ),
        Container(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            offer.longDesc,
            style: const TextStyle(
                color: AppColor.primaryColor,
                fontSize: 18,
                fontWeight: FontWeight.w400),
          ),
        ),
        GoogleMapImageWidget(offer, context),
      ]),
    );
  }

  Container DetailsRow({required String key, required String value}) {
    return Container(
      child: Row(
        children: [
          Text(key + " : ", style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(width: 10),
          Text(
            value,
            style: const TextStyle(fontSize: 13),
          ),
        ],
      ),
    );
  }
}

// Container   GetCircleShpae() {
//   return   Container(
//     child: Row(
//       children: [
//         Container(
//             width: 30,
//             height: 30,
//             decoration:
//                 BoxDecoration(shape: BoxShape.circle, color: Colors.red)),
//       ],
//     ),
//   );
// }
