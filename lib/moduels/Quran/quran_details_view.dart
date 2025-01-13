// ignore_for_file: prefer_const_constructors, avoid_print, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/core/app_assets.dart';
import 'package:islami_app/core/app_color.dart';
import 'package:islami_app/models/sura_details.dart';

class QuranDetailsView extends StatefulWidget {
  static const String routeName = "/quran_details_view";

  const QuranDetailsView({super.key});

  @override
  State<QuranDetailsView> createState() => _QuranDetailsViewState();
}

class _QuranDetailsViewState extends State<QuranDetailsView> {
  List<String> VersesList = [];

  @override
  void initState() {
    super.initState();
    
  }

  @override
  Widget build(BuildContext context) {
    var data = ModalRoute.of(context)?.settings.arguments as SuraDataModel;
    if (VersesList.isEmpty) loadSuraData(data.id);

    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppAssets.SuraDetailsScreen),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            centerTitle: true,
            elevation: 0,
            title: Text(
              data.suraNameEN,
              style: TextStyle(
                color: AppColors.primaryDark,
                fontFamily: "Janna",
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            iconTheme: IconThemeData(
              color: AppColors.primaryDark,
            ),
          ),
          body: Column(
            children: [
              Expanded(
                flex: 1,
                child: Center(
                  child: Text(
                    data.suraNameAR,
                    style: TextStyle(
                      color: AppColors.primaryDark,
                      fontFamily: "Janna",
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: VersesList.isEmpty
                    ? Center(
                        child: CircularProgressIndicator(
                          color: AppColors.primaryDark,
                        ),
                      )
                    : ListView.builder(
                        itemCount: VersesList.length,
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 20.0),
                          child: Text(
                            "[${index+1}]${VersesList[index]}",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: AppColors.primaryDark,
                              fontFamily: "Janna",
                              fontSize: 20,
                              height: 1.8,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  void loadSuraData(String suraID ) async {
    
      String content = await rootBundle.loadString("assets/files/$suraID.txt");
      setState(() {
        VersesList = content.split("\n");
      });
    
      print(content);
    
  }
}
