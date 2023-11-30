import 'dart:io';

import 'package:covx/constants/AppStyle.dart';
import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  final File image;
  final double output;
  const HomeCard({super.key, required this.image, required this.output});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 50, 20, 50),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.file(image),
            ),
            Text(
              "Chances of Covid : ${("${(1.0 - output)}0000").substring(0, 5)}",
              style: AppStyle.subText,
            ),
            Text(
              "Result : ${(output <= 0.5) ? "Covid +ve" : "Covid -ve"}",
              style: AppStyle.mainText,
            ),
          ],
        ),
      ),
    );
  }
}
