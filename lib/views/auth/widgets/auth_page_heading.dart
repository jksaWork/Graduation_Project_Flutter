import 'package:real_state_mangament/core/Constrant/AppColors.dart';
import 'package:flutter/material.dart';

class AuthPageHeading extends StatelessWidget {
  final String? head;
  final String? description;
  const AuthPageHeading(
      {Key? key, required this.head, required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            Text(head!, style: Theme.of(context).textTheme.headline4),
            Center(
              child: Text(
                description!,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: AppColor.grey),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ));
  }
}
