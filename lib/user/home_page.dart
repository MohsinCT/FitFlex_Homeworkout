// ignore_for_file: prefer_const_constructors

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:fitflex_homeworkout/main/reports/report_page.dart';
import 'package:fitflex_homeworkout/main/settings_page.dart';
import 'package:fitflex_homeworkout/user/workout_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  final screens = [
   WorkoutPage(),
    Reports(), 
    Settings(),
    ];
  @override
  Widget build(BuildContext context) {
    final items = [
      Icon(Icons.timer),
      Icon(Icons.bar_chart),
      Icon(Icons.settings)
    ];
    return Scaffold(
      
        bottomNavigationBar: CurvedNavigationBar(
          buttonBackgroundColor: Colors.orange,
          items: items,
          color: Colors.white,
          backgroundColor: Colors.transparent,
          height: 60,
          index: selectedIndex,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
        ),
        extendBodyBehindAppBar: true,
        extendBody: true,      
        body: screens[selectedIndex]);
  }
}
