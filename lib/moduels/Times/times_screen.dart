
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:islami_app/core/app_assets.dart';
import 'package:islami_app/core/app_color.dart';

class TimesScreen extends StatelessWidget {
  const TimesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            Appmodules.QuranBackground,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding:
                  EdgeInsets.only(top: screenHeight * 0.05),
              child: SizedBox(
                height: screenHeight * 0.2,
                child: Image.asset(
                  AppAssets.logoheader,
                  width: screenWidth * 0.8,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.25),
              child: SizedBox(
                height: screenHeight * 0.4,
                child: Image.asset(
                  AppAssets.PrayTime,
                  width: screenWidth * 0.9,
                  fit: BoxFit.contain,
                ),
                
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(
                top: screenHeight * 0.65,
                left: 20,
              ),
              child: Text(
                "Azkar",
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
