// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:islami_app/core/app_assets.dart';
import 'package:islami_app/core/app_color.dart';
import 'package:islami_app/models/sura_details.dart';
import 'package:islami_app/moduels/Quran/quran_details_view.dart';
import 'package:islami_app/moduels/Quran/widgets/recent_items_view.dart';
import 'package:islami_app/moduels/Quran/widgets/sura_item_wedget.dart';

class QuranScreen extends StatefulWidget {
  const QuranScreen({super.key});

  @override
  State<QuranScreen> createState() => _QuranScreenState();
}

class _QuranScreenState extends State<QuranScreen> {
  final List<SuraDataModel> recentDataList = [
    SuraDataModel(
        id: "1",
        suraNameEN: "Al-Fatiha",
        suraNameAR: "الفاتحه",
        versesNumber: "7 Verses"),
    SuraDataModel(
        id: "3",
        suraNameEN: "Aal-E-Imran",
        suraNameAR: "آل عمران",
        versesNumber: "200 Verses"),
  ];
  final List<SuraDataModel> suraList = [
  SuraDataModel(id: "1", suraNameEN: "Al-Fatiha", suraNameAR: "الفاتحه", versesNumber: "7 Verses"),
  SuraDataModel(id: "2", suraNameEN: "Al-Baqara", suraNameAR: "البقرة", versesNumber: "286 Verses"),
  SuraDataModel(id: "3", suraNameEN: "Aal-E-Imran", suraNameAR: "آل عمران", versesNumber: "200 Verses"),
  SuraDataModel(id: "4", suraNameEN: "An-Nisa", suraNameAR: "النساء", versesNumber: "176 Verses"),
  SuraDataModel(id: "5", suraNameEN: "Al-Ma'idah", suraNameAR: "المائدة", versesNumber: "120 Verses"),
  SuraDataModel(id: "6", suraNameEN: "Al-An'am", suraNameAR: "الأنعام", versesNumber: "165 Verses"),
  SuraDataModel(id: "7", suraNameEN: "Al-A'raf", suraNameAR: "الأعراف", versesNumber: "206 Verses"),
  SuraDataModel(id: "8", suraNameEN: "Al-Anfal", suraNameAR: "الأنفال", versesNumber: "75 Verses"),
  SuraDataModel(id: "9", suraNameEN: "At-Tawbah", suraNameAR: "التوبة", versesNumber: "129 Verses"),
  SuraDataModel(id: "10", suraNameEN: "Yunus", suraNameAR: "يونس", versesNumber: "109 Verses"),
  SuraDataModel(id: "11", suraNameEN: "Hud", suraNameAR: "هود", versesNumber: "123 Verses"),
  SuraDataModel(id: "12", suraNameEN: "Yusuf", suraNameAR: "يوسف", versesNumber: "111 Verses"),
  SuraDataModel(id: "13", suraNameEN: "Ar-Ra'd", suraNameAR: "الرعد", versesNumber: "43 Verses"),
  SuraDataModel(id: "14", suraNameEN: "Ibrahim", suraNameAR: "إبراهيم", versesNumber: "52 Verses"),
  SuraDataModel(id: "15", suraNameEN: "Al-Hijr", suraNameAR: "الحجر", versesNumber: "99 Verses"),
  SuraDataModel(id: "16", suraNameEN: "An-Nahl", suraNameAR: "النحل", versesNumber: "128 Verses"),
  SuraDataModel(id: "17", suraNameEN: "Al-Isra", suraNameAR: "الإسراء", versesNumber: "111 Verses"),
  SuraDataModel(id: "18", suraNameEN: "Al-Kahf", suraNameAR: "الكهف", versesNumber: "110 Verses"),
  SuraDataModel(id: "19", suraNameEN: "Maryam", suraNameAR: "مريم", versesNumber: "59 Verses"),
  SuraDataModel(id: "20", suraNameEN: "Ta-Ha", suraNameAR: "طه", versesNumber: "135 Verses"),
  SuraDataModel(id: "21", suraNameEN: "Al-Anbiya", suraNameAR: "الأنبياء", versesNumber: "112 Verses"),
  SuraDataModel(id: "22", suraNameEN: "Al-Hajj", suraNameAR: "الحج", versesNumber: "78 Verses"),
  SuraDataModel(id: "23", suraNameEN: "Al-Mu'minun", suraNameAR: "المؤمنون", versesNumber: "118 Verses"),
  SuraDataModel(id: "24", suraNameEN: "An-Nur", suraNameAR: "النور", versesNumber: "64 Verses"),
  SuraDataModel(id: "25", suraNameEN: "Al-Furqan", suraNameAR: "الفرقان", versesNumber: "77 Verses"),
  SuraDataModel(id: "26", suraNameEN: "Ash-Shu'ara", suraNameAR: "الشعراء", versesNumber: "227 Verses"),
  SuraDataModel(id: "27", suraNameEN: "An-Naml", suraNameAR: "النمل", versesNumber: "55 Verses"),
  SuraDataModel(id: "28", suraNameEN: "Al-Qasas", suraNameAR: "القصص", versesNumber: "88 Verses"),
  SuraDataModel(id: "29", suraNameEN: "Al-Ankabut", suraNameAR: "العنكبوت", versesNumber: "69 Verses"),
  SuraDataModel(id: "30", suraNameEN: "Ar-Rum", suraNameAR: "الروم", versesNumber: "60 Verses"),
  SuraDataModel(id: "31", suraNameEN: "Luqman", suraNameAR: "لقمان", versesNumber: "34 Verses"),
  SuraDataModel(id: "32", suraNameEN: "As-Sajda", suraNameAR: "السجدة", versesNumber: "30 Verses"),
  SuraDataModel(id: "33", suraNameEN: "Al-Ahzab", suraNameAR: "الأحزاب", versesNumber: "73 Verses"),
  SuraDataModel(id: "34", suraNameEN: "Saba", suraNameAR: "سبأ", versesNumber: "54 Verses"),
  SuraDataModel(id: "35", suraNameEN: "Fatir", suraNameAR: "فاطر", versesNumber: "45 Verses"),
  SuraDataModel(id: "36", suraNameEN: "Ya-Sin", suraNameAR: "يس", versesNumber: "83 Verses"),
  SuraDataModel(id: "37", suraNameEN: "As-Saffat", suraNameAR: "الصافات", versesNumber: "182 Verses"),
  SuraDataModel(id: "38", suraNameEN: "Sad", suraNameAR: "ص", versesNumber: "88 Verses"),
  SuraDataModel(id: "39", suraNameEN: "Az-Zumar", suraNameAR: "الزمر", versesNumber: "75 Verses"),
  SuraDataModel(id: "40", suraNameEN: "Ghafir", suraNameAR: "غافر", versesNumber: "85 Verses"),
  SuraDataModel(id: "41", suraNameEN: "Fussilat", suraNameAR: "فصلت", versesNumber: "54 Verses"),
  SuraDataModel(id: "42", suraNameEN: "Ash-Shura", suraNameAR: "الشورى", versesNumber: "53 Verses"),
  SuraDataModel(id: "43", suraNameEN: "Az-Zukhruf", suraNameAR: "الزخرف", versesNumber: "89 Verses"),
  SuraDataModel(id: "44", suraNameEN: "Ad-Dukhan", suraNameAR: "الدخان", versesNumber: "59 Verses"),
  SuraDataModel(id: "45", suraNameEN: "Al-Jathiya", suraNameAR: "الجاثية", versesNumber: "37 Verses"),
  SuraDataModel(id: "46", suraNameEN: "Al-Ahqaf", suraNameAR: "الأحقاف", versesNumber: "35 Verses"),
  SuraDataModel(id: "47", suraNameEN: "Muhammad", suraNameAR: "محمد", versesNumber: "38 Verses"),
  SuraDataModel(id: "48", suraNameEN: "Al-Fath", suraNameAR: "الفتح", versesNumber: "29 Verses"),
  SuraDataModel(id: "49", suraNameEN: "Al-Hujurat", suraNameAR: "الحجرات", versesNumber: "18 Verses"),
  SuraDataModel(id: "50", suraNameEN: "Qaf", suraNameAR: "ق", versesNumber: "45 Verses"),
  SuraDataModel(id: "51", suraNameEN: "Adh-Dhariyat", suraNameAR: "الذاريات", versesNumber: "60 Verses"),
  SuraDataModel(id: "52", suraNameEN: "At-Tur", suraNameAR: "الطور", versesNumber: "49 Verses"),
  SuraDataModel(id: "53", suraNameEN: "An-Najm", suraNameAR: "النجم", versesNumber: "62 Verses"),
  SuraDataModel(id: "54", suraNameEN: "Al-Qamar", suraNameAR: "القمر", versesNumber: "55 Verses"),
  SuraDataModel(id: "55", suraNameEN: "Ar-Rahman", suraNameAR: "الرحمن", versesNumber: "78 Verses"),
  SuraDataModel(id: "56", suraNameEN: "Al-Waqi'a", suraNameAR: "الواقعة", versesNumber: "96 Verses"),
  SuraDataModel(id: "57", suraNameEN: "Al-Hadid", suraNameAR: "الحديد", versesNumber: "29 Verses"),
  SuraDataModel(id: "58", suraNameEN: "Al-Mujadila", suraNameAR: "المجادلة", versesNumber: "22 Verses"),
  SuraDataModel(id: "59", suraNameEN: "Al-Hashr", suraNameAR: "الحشر", versesNumber: "24 Verses"),
  SuraDataModel(id: "60", suraNameEN: "Al-Mumtahina", suraNameAR: "الممتحنة", versesNumber: "13 Verses"),
  SuraDataModel(id: "61", suraNameEN: "As-Saff", suraNameAR: "الصف", versesNumber: "14 Verses"),
  SuraDataModel(id: "62", suraNameEN: "Al-Jumu'a", suraNameAR: "الجمعة", versesNumber: "11 Verses"),
  SuraDataModel(id: "63", suraNameEN: "Al-Munafiqun", suraNameAR: "المنافقون", versesNumber: "11 Verses"),
  SuraDataModel(id: "64", suraNameEN: "At-Taghabun", suraNameAR: "التغابن", versesNumber: "18 Verses"),
  SuraDataModel(id: "65", suraNameEN: "At-Talaq", suraNameAR: "الطلاق", versesNumber: "12 Verses"),
  SuraDataModel(id: "66", suraNameEN: "At-Tahrim", suraNameAR: "التحريم", versesNumber: "12 Verses"),
  SuraDataModel(id: "67", suraNameEN: "Al-Mulk", suraNameAR: "الملك", versesNumber: "30 Verses"),
  SuraDataModel(id: "68", suraNameEN: "Al-Qalam", suraNameAR: "القلم", versesNumber: "52 Verses"),
  SuraDataModel(id: "69", suraNameEN: "Al-Haqqah", suraNameAR: "الحاقة", versesNumber: "52 Verses"),
  SuraDataModel(id: "70", suraNameEN: "Al-Ma'arij", suraNameAR: "المعارج", versesNumber: "44 Verses"),
  SuraDataModel(id: "71", suraNameEN: "Nuh", suraNameAR: "نوح", versesNumber: "28 Verses"),
  SuraDataModel(id: "72", suraNameEN: "Al-Jinn", suraNameAR: "الجن", versesNumber: "28 Verses"),
  SuraDataModel(id: "73", suraNameEN: "Al-Muzzammil", suraNameAR: "المزمل", versesNumber: "20 Verses"),
  SuraDataModel(id: "74", suraNameEN: "Al-Muddathir", suraNameAR: "المدثر", versesNumber: "56 Verses"),
  SuraDataModel(id: "75", suraNameEN: "Al-Qiyama", suraNameAR: "القيامة", versesNumber: "40 Verses"),
  SuraDataModel(id: "76", suraNameEN: "Al-Insan", suraNameAR: "الإنسان", versesNumber: "31 Verses"),
  SuraDataModel(id: "77", suraNameEN: "Al-Mursalat", suraNameAR: "المرسلات", versesNumber: "50 Verses"),
  SuraDataModel(id: "78", suraNameEN: "An-Naba", suraNameAR: "النبأ", versesNumber: "40 Verses"),
  SuraDataModel(id: "79", suraNameEN: "An-Nazi'at", suraNameAR: "النازعات", versesNumber: "46 Verses"),
  SuraDataModel(id: "80", suraNameEN: "Abasa", suraNameAR: "عبس", versesNumber: "42 Verses"),
  SuraDataModel(id: "81", suraNameEN: "At-Takwir", suraNameAR: "التكوير", versesNumber: "29 Verses"),
  SuraDataModel(id: "82", suraNameEN: "Al-Infitar", suraNameAR: "الإنفطار", versesNumber: "19 Verses"),
  SuraDataModel(id: "83", suraNameEN: "Al-Mutaffifin", suraNameAR: "المطففين", versesNumber: "36 Verses"),
  SuraDataModel(id: "84", suraNameEN: "Al-Inshiqaq", suraNameAR: "الإنشقاق", versesNumber: "25 Verses"),
  SuraDataModel(id: "85", suraNameEN: "Al-Buruj", suraNameAR: "البروج", versesNumber: "22 Verses"),
  SuraDataModel(id: "86", suraNameEN: "At-Tariq", suraNameAR: "الطارق", versesNumber: "17 Verses"),
  SuraDataModel(id: "87", suraNameEN: "Al-A'la", suraNameAR: "الأعلى", versesNumber: "19 Verses"),
  SuraDataModel(id: "88", suraNameEN: "Al-Ghashiyah", suraNameAR: "الغاشية", versesNumber: "26 Verses"),
  SuraDataModel(id: "89", suraNameEN: "Al-Fajr", suraNameAR: "الفجر", versesNumber: "30 Verses"),
  SuraDataModel(id: "90", suraNameEN: "Al-Balad", suraNameAR: "البلد", versesNumber: "20 Verses"),
  SuraDataModel(id: "91", suraNameEN: "Ash-Shams", suraNameAR: "الشمس", versesNumber: "15 Verses"),
  SuraDataModel(id: "92", suraNameEN: "Al-Lail", suraNameAR: "الليل", versesNumber: "21 Verses"),
  SuraDataModel(id: "93", suraNameEN: "Ad-Duha", suraNameAR: "الضحى", versesNumber: "11 Verses"),
  SuraDataModel(id: "94", suraNameEN: "Ash-Sharh", suraNameAR: "الشرح", versesNumber: "8 Verses"),
  SuraDataModel(id: "95", suraNameEN: "At-Tin", suraNameAR: "التين", versesNumber: "8 Verses"),
  SuraDataModel(id: "96", suraNameEN: "Al-Alaq", suraNameAR: "العلق", versesNumber: "19 Verses"),
  SuraDataModel(id: "97", suraNameEN: "Al-Qadr", suraNameAR: "القدر", versesNumber: "5 Verses"),
  SuraDataModel(id: "98", suraNameEN: "Al-Bayyina", suraNameAR: "البينة", versesNumber: "8 Verses"),
  SuraDataModel(id: "99", suraNameEN: "Az-Zalzalah", suraNameAR: "الزلزلة", versesNumber: "8 Verses"),
  SuraDataModel(id: "100", suraNameEN: "Al-Adiyat", suraNameAR: "العاديات", versesNumber: "11 Verses"),
  SuraDataModel(id: "101", suraNameEN: "Al-Qari'ah", suraNameAR: "القارعة", versesNumber: "11 Verses"),
  SuraDataModel(id: "102", suraNameEN: "At-Takathur", suraNameAR: "التكاثر", versesNumber: "8 Verses"),
  SuraDataModel(id: "103", suraNameEN: "Al-Asr", suraNameAR: "العصر", versesNumber: "3 Verses"),
  SuraDataModel(id: "104", suraNameEN: "Al-Humazah", suraNameAR: "الهمزة", versesNumber: "9 Verses"),
  SuraDataModel(id: "105", suraNameEN: "Al-Fil", suraNameAR: "الفيل", versesNumber: "5 Verses"),
  SuraDataModel(id: "106", suraNameEN: "Quraish", suraNameAR: "قريش", versesNumber: "4 Verses"),
  

  ];
  
  late List<SuraDataModel> filteredSuraList;
  final TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    filteredSuraList = List.from(suraList);
    searchController.addListener(_searchSura);
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  void _searchSura() {
    final query = searchController.text.toLowerCase();
    setState(() {
      filteredSuraList = suraList.where((sura) {
        return sura.suraNameEN.toLowerCase().contains(query) ||
            sura.suraNameAR.contains(query);
      }).toList();
    });
  }

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
            fit: BoxFit.cover,
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: screenHeight * 0.3,
                  child: Image.asset(
                    AppAssets.logoheader,
                    width: screenWidth * 0.8,
                    fit: BoxFit.contain,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: TextFormField(
                    controller: searchController,
                    cursorColor: AppColors.primaryDark,
                    style: TextStyle(
                        fontFamily: "Janna",
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppColors.titleTextColor),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 16.0, horizontal: 20.0),
                      filled: true,
                      fillColor: AppColors.blackColor.withOpacity(.7),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            BorderSide(color: AppColors.primaryDark, width: 1.5),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            BorderSide(color: AppColors.primaryDark, width: 1.5),
                      ),
                      prefixIcon: ImageIcon(
                        AssetImage(Appicons.Quran),
                        color: AppColors.primaryDark,
                      ),
                      hintText: 'Search Sura',
                      hintStyle: TextStyle(
                          fontFamily: "Janna",
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: AppColors.titleTextColor),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 20.0, right: 20, left: 20, bottom: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Most Recently",
                        style: TextStyle(
                            fontFamily: "Janna",
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: AppColors.titleTextColor),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 155,
                  child: ListView.separated(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => RecentItemWidget(
                      suraDataModel: recentDataList[index],
                    ),
                    separatorBuilder: (context, index) => SizedBox(
                      width: 10,
                    ),
                    itemCount: recentDataList.length,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 20.0, right: 20, left: 20, bottom: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sura List",
                        style: TextStyle(
                            fontFamily: "Janna",
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: AppColors.titleTextColor),
                      ),
                    ],
                  ),
                ),
                ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () => _onSuraTap(index),
                    child: SuraItemWedget(suraDataModel: filteredSuraList[index]),
                  ),
                  separatorBuilder: (context, index) => Divider(
                    color: AppColors.white,
                    thickness: 1.5,
                    endIndent: 50,
                    indent: 50,
                  ),
                  itemCount: filteredSuraList.length,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  _onSuraTap(int index) {
    final selectedSura = filteredSuraList[index];
    setState(() {
      recentDataList.removeWhere((sura) => sura.id == selectedSura.id);
      recentDataList.insert(0, selectedSura);
    });
    Navigator.pushNamed(
      context,
      QuranDetailsView.routeName,
      arguments: selectedSura,
    );
  }}
