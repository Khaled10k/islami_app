// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:islami_app/core/app_assets.dart';
import 'package:islami_app/core/app_color.dart';

class RadioScreen extends StatelessWidget {
  const RadioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final radioItems = [
      'Ibrahim Al-Akdar',
      'Al-Qaria Yassen',
      'Ahmed Al-trablusi',
      'Addokali Mohammad Alalim',
      'Akram Alalaqmi',
    ];

    final recitersItems = [
      'Ibrahim Al-Akdar',
      'Akram Alalaqmi',
      'Majed Al-Enezi',
      'Malik shaibat Alhamed',
      'Ahmed Al-trablusi',
    ];

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              Appmodules.RadioBackground,
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(top: screenHeight * 0.05),
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
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(
                  top: screenHeight * 0.25,
                ),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: AppColors.blackColor.withOpacity(.70)),
                      child: TabBar(
                        padding: EdgeInsets.all(8),
                        tabs: const [
                          Tab(
                            text: 'Radio',
                          ),
                          Tab(text: 'Reciters'),
                        ],
                        labelColor: AppColors.blackColor,
                        unselectedLabelColor: AppColors.titleTextColor,
                        indicatorColor: Colors.black,
                        indicator: BoxDecoration(
                            color: AppColors.primaryDark,
                            borderRadius: BorderRadius.circular(12)),
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          ListView.builder(
                            itemCount: radioItems.length,
                            itemBuilder: (context, index) {
                              final item = radioItems[index];
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Image.asset(
                                          AppAssets.RadioItem,
                                          fit: BoxFit.fitWidth,
                                        ),
                                        Positioned(
                                          top: 16,
                                          child: Text(
                                            item,
                                            style: TextStyle(
                                              color: AppColors.blackColor,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          bottom: 16,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              IconButton(
                                                icon: Icon(
                                                  Icons.play_arrow,
                                                  color: Colors.black,
                                                  size: 30,
                                                ),
                                                onPressed: () {},
                                              ),
                                              IconButton(
                                                icon: Icon(
                                                  Icons.pause,
                                                  color: Colors.black,
                                                  size: 30,
                                                ),
                                                onPressed: () {},
                                              ),
                                              IconButton(
                                                icon: Icon(
                                                  Icons.volume_up,
                                                  color: Colors.black,
                                                  size: 30,
                                                ),
                                                onPressed: () {},
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                          ListView.builder(
                            itemCount: recitersItems.length,
                            itemBuilder: (context, index) {
                              final item = recitersItems[index];
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Image.asset(
                                          AppAssets.RadioItem,
                                          fit: BoxFit.fitWidth,
                                        ),
                                        Positioned(
                                          top: 16,
                                          child: Text(
                                            item,
                                            style: TextStyle(
                                              color: AppColors.blackColor,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          bottom: 16,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              IconButton(
                                                icon: Icon(
                                                  Icons.play_arrow,
                                                  color: Colors.black,
                                                  size: 30,
                                                ),
                                                onPressed: () {},
                                              ),
                                              IconButton(
                                                icon: Icon(
                                                  Icons.pause,
                                                  color: Colors.black,
                                                  size: 30,
                                                ),
                                                onPressed: () {},
                                              ),
                                              IconButton(
                                                icon: Icon(
                                                  Icons.volume_up,
                                                  color: Colors.black,
                                                  size: 30,
                                                ),
                                                onPressed: () {},
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ],
                      ),
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
