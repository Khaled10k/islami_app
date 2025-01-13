// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:islami_app/core/app_assets.dart';
import 'package:islami_app/core/app_color.dart';
import 'package:islami_app/models/sura_details.dart';

class SuraItemWedget extends StatelessWidget {
  final SuraDataModel suraDataModel;
  const SuraItemWedget({super.key, required this.suraDataModel});


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              AppAssets.SuraNumber,
              height: 50,
              width: 50,
            ),
            Text(
              suraDataModel.id,
              style: TextStyle(
                fontFamily: "Janna",
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: AppColors.white,
              ),
            ),
          ],
        ),
        SizedBox(width: 24),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              suraDataModel.suraNameEN,
              style: TextStyle(
                  fontFamily: "Janna",
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.titleTextColor),
            ),
            Text(
              suraDataModel.versesNumber,
              style: TextStyle(
                  fontFamily: "Janna",
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: AppColors.titleTextColor),
            ),

          ],
        ),
        Spacer(),
        Text(suraDataModel.suraNameAR,
              style: TextStyle(
                  fontFamily: "Janna",
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.titleTextColor),
            )
      ],
    );
  }
}
