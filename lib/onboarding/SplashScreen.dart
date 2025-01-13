// ignore_for_file: prefer_const_constructors, use_build_context_synchronously, file_names, use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:islami_app/core/app_color.dart';
import 'package:islami_app/home/homepage.dart';
import 'package:islami_app/onboarding/onboarding.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = '/splash';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateToNextScreen();
  }

  Future<void> navigateToNextScreen() async {
    await Future.delayed(Duration(seconds: 3));
    final prefs = await SharedPreferences.getInstance();
    final bool? showOnBoarding = prefs.getBool("OnBoardingCompleted");

    if (showOnBoarding == true) {Navigator.pushReplacementNamed(context, OnBoarding.routeName);
      
    } else {
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    }
  }

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.blackColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top:50.0),
              child: Center(
                child: Image.asset(
                  'assets/images/logo.png',
                  height: size.height * 0.4,
                ),
              ),
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/images/routegold.png',
                  height: size.height * 0.1,
                ),
                SizedBox(height: 8),
                Text(
                  'Supervised by Mohamed Nabil',
                  style: TextStyle(
                    color: AppColors.primaryDark,
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
