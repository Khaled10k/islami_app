// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:islami_app/home/homepage.dart';
import 'package:islami_app/moduels/Quran/quran_details_view.dart';
import 'package:islami_app/onboarding/SplashScreen.dart';
import 'package:islami_app/onboarding/onboarding.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (BuildContext context) => SplashScreen(),
        OnBoarding.routeName: (BuildContext context) => OnBoarding(),
        HomeScreen.routeName: (BuildContext context) => HomeScreen(),
        QuranDetailsView.routeName: (BuildContext context) =>QuranDetailsView(),
      },
      themeMode: ThemeMode.light,
    );
  }
}
