// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:islami_app/core/app_assets.dart';
import 'package:islami_app/models/hadith_data.dart';

class HadithItem extends StatelessWidget {

final HadithData hadithData;


  const HadithItem({super.key, required this.hadithData});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(
        top: 10,
        bottom: 20,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.HadithCart),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 50),
          Text(
            hadithData.hadithTitle,
            style: const TextStyle(
              fontFamily: "Janna",
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(child: ListView(children: [Text(
            
            hadithData.hadithContent,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontFamily: "Janna",
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),],))
        ],
      ),
    );
  }
}
