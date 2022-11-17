import 'package:flutter/material.dart';
import 'package:real_state_mangament/data/Models/RealState.dart';
import 'package:real_state_mangament/views/Home/widgets/RealStateComponets.dart';

class FavorateSection extends StatelessWidget {
  List favorate;
  FavorateSection({Key? key, required this.favorate});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 100,
      child: ListView.builder(
        itemCount: favorate.length,
        itemBuilder: (BuildContext context, int index) {
          RealState state = favorate[index];
          return RealStateComponent(state: state);
        },
      ),
    );
  }
}
