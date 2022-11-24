import 'package:real_state_mangament/data/Models/RealState.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

GoogleMapImageWidget(RealState offer, BuildContext context) {
  String url =
      "https://maps.googleapis.com/maps/api/staticmap?center=15.599766380508013,32.52571397310215&zoom=12&size=3000x300&maptype=roadmap&markers=color:red|label:L|15.599766380508013,32.52571397310215&key=AIzaSyClrFqfOqOGTSGWpiZby6POa-AEFjGmJoM";
  return Container(
    padding: EdgeInsets.all(10),
    child: Stack(children: [
      Container(height: 100, child: Center(child: CircularProgressIndicator())),
      Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: FadeInImage.memoryNetwork(
          placeholder: kTransparentImage,
          image: url,
          fit: BoxFit.cover,
          width: MediaQuery.of(context).size.width,
        ),
      )
    ]),
  );
}
