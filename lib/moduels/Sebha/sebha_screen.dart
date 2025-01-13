// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:islami_app/core/app_assets.dart';
import 'package:islami_app/core/app_color.dart';

class SebhaScreen extends StatefulWidget {
  const SebhaScreen({super.key});

  @override
  State<SebhaScreen> createState() => _SebhaScreenState();
}

class _SebhaScreenState extends State<SebhaScreen> {
  List<String> tasbehWords = ["سبحان الله", "الحمد لله", "الله أكبر"];
  int currentTasbehIndex = 0;
  int tasbehCount = 0;

  void onSebhaPressed() {
    setState(() {
      tasbehCount++;
      if (tasbehCount % 33 == 0) {
        currentTasbehIndex = (currentTasbehIndex + 1) % tasbehWords.length;
        tasbehCount = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Appmodules.SphahBackground),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              AppAssets.logoheader,
              height: 170,
              width: screenWidth * 0.5,
            ),
            const SizedBox(height: 30),
            Text(
              "سَبِّحِ اسْمَ رَبِّكَ الأعلى",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Janna",
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: AppColors.white,
              ),
            ),
            const SizedBox(height: 20), // مسافة بين العناصر
            Expanded(
              child: GestureDetector(
                onTap: onSebhaPressed,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      AppAssets.Sebha,
                      fit: BoxFit.contain,
                      width: screenWidth * 0.9,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          tasbehWords[currentTasbehIndex],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: "Janna",
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: AppColors.white,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "$tasbehCount",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: "Janna",
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: AppColors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
