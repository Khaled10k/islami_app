// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islami_app/core/app_assets.dart';
import 'package:islami_app/core/app_color.dart';
import 'package:islami_app/home/homepage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBoarding extends StatefulWidget {
  static const String routeName = '/onboarding';

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  bool isFirstPage = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return IntroductionScreen(
      pages: [
        buildPageViewModel(
          titleImage: AppAssets.logoscreens,
          bodyImage: AppAssets.introScreen,
          text: "Welcome To Islami App",
          size: size,
        ),
        buildPageViewModel(
          titleImage: AppAssets.logoscreens,
          bodyImage: AppAssets.introScreen1,
          text:
              "Welcome To Islami App \n\nWe Are Very Excited To Have You In Our Community.",
          size: size,
        ),
        buildPageViewModel(
          titleImage: AppAssets.logoscreens,
          bodyImage: AppAssets.introScreenQuran,
          text:
              "Reading the Quran\n\nRead, and your Lord is the Most Generous.",
          size: size,
        ),
        buildPageViewModel(
          titleImage: AppAssets.logoscreens,
          bodyImage: AppAssets.introScreenBearish,
          text: "Bearish \n\nPraise the name of your Lord, the Most High.",
          size: size,
        ),
        buildPageViewModel(
          titleImage: AppAssets.logoscreens,
          bodyImage: AppAssets.introScreenRadio,
          text:
              "Holy Quran Radio \n\nYou can listen to the Holy Quran Radio through the application for free and easily.",
          size: size,
        ),
      ],
      onDone: () {
        goToHome(context);
        saveOnBoarding();
      },
      onChange: (index) {
        setState(() {
          isFirstPage = (index == 0);
        });
      },
      onSkip: () {
        goToHome(context);
        saveOnBoarding();
      },
      skip: Text(
        "Skip",
        style: TextStyle(color: AppColors.primaryDark),
      ),
      next: Text(
        "Next",
        style: TextStyle(color: AppColors.primaryDark),
      ),
      back: Text(
        "Back",
        style: TextStyle(color: AppColors.primaryDark),
      ),
      done: Text(
        "Finish",
        style: TextStyle(color: AppColors.primaryDark),
      ),
      globalBackgroundColor: AppColors.blackColor,
      dotsFlex: 3,
      showBackButton: !isFirstPage,
      showSkipButton: isFirstPage,
      dotsDecorator: DotsDecorator(
        color: Colors.grey,
        activeColor: AppColors.primaryDark,
        activeSize: Size(20, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      ),
    );
  }

  PageViewModel buildPageViewModel({
    required String titleImage,
    required String bodyImage,
    required String text,
    required Size size,
  }) {
    return PageViewModel(
      titleWidget: Image.asset(
        titleImage,
        height: size.height * .15,
      ),
      bodyWidget: Column(
        children: [
          Image.asset(
            bodyImage,
            height: size.height * .40,
          ),
          SizedBox(height: 20),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: size.height * 0.02,
              color: AppColors.primaryDark,
            ),
          ),
        ],
      ),
    );
  }

  void goToHome(BuildContext context) {
    Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
  }

  Future<void> saveOnBoarding() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool("OnBoardingCompleted", true);
  }
}
