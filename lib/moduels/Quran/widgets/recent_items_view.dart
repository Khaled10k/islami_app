// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:islami_app/core/app_assets.dart';
import 'package:islami_app/core/app_color.dart';
import 'package:islami_app/models/sura_details.dart';

class RecentItemWidget extends StatelessWidget {
  final SuraDataModel suraDataModel;
  const RecentItemWidget({super.key, required this.suraDataModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 280,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.primaryDark,
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  suraDataModel.suraNameEN,
                  style: TextStyle(
                    fontFamily: "Janna",
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColors.blackColor,
                  ),
                ),
                SizedBox(height: 8), // مسافة بين النصوص
                Text(
                  suraDataModel.suraNameAR,
                  style: TextStyle(
                    fontFamily: "Janna",
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: AppColors.blackColor,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  suraDataModel.versesNumber,
                  style: TextStyle(
                    fontFamily: "Janna",
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: AppColors.blackColor,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(
              AppAssets.itemsPhoto,
              width: 100,
              height: 140,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
