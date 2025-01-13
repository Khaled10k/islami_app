// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, library_private_types_in_public_api, avoid_print

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/core/app_assets.dart';
import 'package:islami_app/models/hadith_data.dart';
import 'package:islami_app/moduels/Hadith/widgets/hadith_item.dart';

class HadithScreen extends StatefulWidget {
  HadithScreen({super.key});

  @override
  _HadithScreenState createState() => _HadithScreenState();
}

class _HadithScreenState extends State<HadithScreen> {
  final List<HadithData> hadithDataList = [];

  @override
  void initState() {
    super.initState();
    loadHadithData();
  }

  @override
  Widget build(BuildContext context) {
    if (hadithDataList.isEmpty)loadHadithData();
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Appmodules.HadithBackground),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            AppAssets.logoheader,
            height: 170,
          ),
          Expanded(
            child: hadithDataList.isEmpty
                ? Center(child: CircularProgressIndicator())
                : CarouselSlider(
                    items: hadithDataList.map((text) {
                      return HadithItem(
                        hadithData: text,
                      );
                    }).toList(),
                    options: CarouselOptions(
                      aspectRatio: 0.7,
                      viewportFraction: 0.68,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: false,
                      autoPlayInterval: const Duration(seconds: 3),
                      autoPlayAnimationDuration: const Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      enlargeFactor: 0.3,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
          ),
        ],
      ),
    );
  }

  void loadHadithData() async {
    try {
      String content = await rootBundle.loadString("assets/files/ahadeth.txt");
      List<String> allHadithList = content.split("#");

      for (var element in allHadithList) {
        String singleHadith = element.trim();
        int index = singleHadith.indexOf("\n");

        String hadithTitle = singleHadith.substring(0, index);
        String hadithContent = singleHadith.substring(index + 1);

        var hadithData = HadithData(
          hadithTitle: hadithTitle,
          hadithContent: hadithContent,
        );

        setState(() {
          hadithDataList.add(hadithData);
        });
      }
    } catch (e) {
      print("Error loading hadith data: $e");
    }
  }
}
