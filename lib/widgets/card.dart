import 'package:covx/constants/AppStyle.dart';
import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // height: 40,
      child: Text("See Old Reports"),
      // color: AppStyle.accentColor,
      margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppStyle.accentColor,
      ),
    );
  }
}
