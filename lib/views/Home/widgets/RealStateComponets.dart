import 'package:flutter/material.dart';
import 'package:real_state_mangament/core/Constrant/AppSvgImg.dart';
import 'package:real_state_mangament/data/Models/RealState.dart';
import 'package:transparent_image/transparent_image.dart';

class RealStateComponent extends StatelessWidget {
  final RealState state;
  const RealStateComponent({Key? key, required this.state});

  @override
  Widget build(BuildContext context) {
    var componentsize = (MediaQuery.of(context).size.height * 1.00) / 3;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      clipBehavior: Clip.antiAlias,
      child: Container(
        // padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          // color: Colors.red,
        ),
        height: componentsize,
        child: Column(children: [
          Container(
            height: componentsize * .72,
            width: double.infinity,
            padding: EdgeInsets.all(0),
            child: Container(
              child: Stack(children: [
                Container(child: Center(child: CircularProgressIndicator())),
                Container(
                  // clipBehavior: Clip.antiAlias,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: FadeInImage.memoryNetwork(
                    placeholder: kTransparentImage,
                    image: state.image != null
                        ? state.image!
                        : 'https://cdn.pixabay.com/photo/2016/11/18/17/46/house-1836070__340.jpg',
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                )
              ]),
            ),
            // color: Colors.red,
          ),
          // SizedBox(height: 10),
          Container(
            height: componentsize * .28,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.all(0),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        state.name!,
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
                              Text(state.location!),
                            ]),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 50,
                  child: Center(
                    child:
                        state.isFavorate! ? AppSvgImg.heart2 : AppSvgImg.heart,
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
