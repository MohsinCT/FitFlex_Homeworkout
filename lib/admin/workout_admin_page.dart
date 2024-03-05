// ignore_for_file: prefer_const_constructors

import 'package:fitflex_homeworkout/constants/constants.dart';
import 'package:fitflex_homeworkout/main/challenge/fullbody_admin/challange_admin.dart';
import 'package:fitflex_homeworkout/admin/sub_categories/advanced/admin_advanced_category.dart';
import 'package:fitflex_homeworkout/admin/sub_categories/beginner/admin_beginner_category.dart';
import 'package:fitflex_homeworkout/admin/sub_categories/intermediate/admin_intermediate_category.dart';
import 'package:fitflex_homeworkout/main/challenge/lowerbody_admin/challangelow_admin.dart';
import 'package:flutter/material.dart';

class AdminWorkoutPage extends StatefulWidget {
  const AdminWorkoutPage({super.key});

  @override
  State<AdminWorkoutPage> createState() => _AdminWorkoutPageState();
}

class _AdminWorkoutPageState extends State<AdminWorkoutPage> {
  @override 
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.transparant,
        elevation: 0,
        title: const Text(
          'HOMEWORKOUT',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        width: mediaQuery.size.width,
        height: mediaQuery.size.height,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [AppColors.black, AppColors.white],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter)),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Container(
                    width: 40,
                    height: 50,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: AppColors.white),
                    child: Icon(
                      Icons.admin_panel_settings,
                      size: 30,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'Admin',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Column(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 20),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '7x4CHALLENGE',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    fullBodyAdmin(context),
                    SizedBox(
                      width: 20,
                    ),
                    lowerBodyAdmin(context),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 15),
              child: Text(
                'BEGINNER',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.white.withOpacity(0.9)),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
                child: Column(
                  children: [
                    AdminBeginnerCatagory(),
                    Padding(
                      padding: EdgeInsets.all(14.0),
                      child: Row(
                        children: const [
                          Text(
                            'INTERMEDIATE',
                            style: TextStyle(
                                color: AppColors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    AdminIntermediateCategory(),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Row(
                        children: const [
                          Text(
                            'ADVANCED',
                            style: TextStyle(
                                color: AppColors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    AdminAdvancedCategory()
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
