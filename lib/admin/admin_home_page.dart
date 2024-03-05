// ignore_for_file: prefer_const_constructors

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:fitflex_homeworkout/admin/exercises/adding_exercise.dart';
import 'package:fitflex_homeworkout/admin/workout_admin_page.dart';
import 'package:fitflex_homeworkout/constants/constants.dart';
import 'package:fitflex_homeworkout/main/reports/report_page.dart';
import 'package:fitflex_homeworkout/main/settings_page.dart';
import 'package:flutter/material.dart';

class AdminHomePage extends StatefulWidget {
  const AdminHomePage({super.key});

  @override
  State<AdminHomePage> createState() => _AdminHomePageState();
}

class _AdminHomePageState extends State<AdminHomePage> {
  int selectedIndex = 0;
  final screens = [
    AdminWorkoutPage(),
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
          buttonBackgroundColor: AppColors.orange,
          items: items,
          color: AppColors.white,
          backgroundColor: AppColors.transparant,
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
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (ctx) => AddExercise()));
          },
          child: Icon(Icons.add),
        ),
      
        body: screens[selectedIndex]);
  }
}
