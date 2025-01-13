// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:islami_app/core/app_assets.dart';
import 'package:islami_app/core/app_color.dart';
import 'package:islami_app/moduels/Hadith/hadith_screen.dart';
import 'package:islami_app/moduels/Quran/quran_screen.dart';
import 'package:islami_app/moduels/Radio/radio_screen.dart';
import 'package:islami_app/moduels/Sebha/sebha_screen.dart';
import 'package:islami_app/moduels/Times/times_screen.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  final List<Widget> screens = [
    QuranScreen(),
    HadithScreen(),
    SebhaScreen(),
    RadioScreen(),
    TimesScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        backgroundColor: AppColors.primaryDark,
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: IconThemeData(
          color: AppColors.white,
        ),
        unselectedIconTheme: IconThemeData(
          color: AppColors.blackColor,
        ),
        selectedItemColor: AppColors.white,
        unselectedItemColor: AppColors.blackColor,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Container(
              decoration: BoxDecoration(
                color: selectedIndex == 0
                    ? AppColors.blackColor.withOpacity(.6)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(66),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 5),
                child: ImageIcon(
                  AssetImage(Appicons.Quran),
                ),
              ),
            ),
            label: "Quran",
          ),
          BottomNavigationBarItem(
            icon: Container(
              decoration: BoxDecoration(
                color: selectedIndex == 1
                    ? AppColors.blackColor.withOpacity(.6)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(66),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 5),
                child: ImageIcon(
                  AssetImage(Appicons.Hadith),
                ),
              ),
            ),
            label: "Hadith",
          ),
          BottomNavigationBarItem(
            icon: Container(
              decoration: BoxDecoration(
                color: selectedIndex == 2
                    ? AppColors.blackColor.withOpacity(.6)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(66),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 5),
                child: ImageIcon(
                  AssetImage(Appicons.Sphah),
                ),
              ),
            ),
            label: "Sebha",
          ),
          BottomNavigationBarItem(
            icon: Container(
              decoration: BoxDecoration(
                color: selectedIndex == 3
                    ? AppColors.blackColor.withOpacity(.6)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(66),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 5),
                child: ImageIcon(
                  AssetImage(Appicons.Radio),
                ),
              ),
            ),
            label: "Radio",
          ),
          BottomNavigationBarItem(
            icon: Container(
              decoration: BoxDecoration(
                color: selectedIndex == 4
                    ? AppColors.blackColor.withOpacity(.6)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(66),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 5),
                child: ImageIcon(
                  AssetImage(Appicons.Times),
                ),
              ),
            ),
            label: "Times",
          ),
        ],
      ),
      // appBar: AppBar(title: Text('Home Page'),),
    );
  }
}
