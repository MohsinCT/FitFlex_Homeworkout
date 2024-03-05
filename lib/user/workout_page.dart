// ignore_for_file: prefer_const_constructors

import 'package:fitflex_homeworkout/main/challenge/fullbody/challange_user.dart';
import 'package:fitflex_homeworkout/main/catagories/advanced/workouts/advanced_catagory.dart';
import 'package:fitflex_homeworkout/main/catagories/intermediate/workouts/intermedate_catagory.dart';
import 'package:fitflex_homeworkout/main/catagories/beginner/beginner_catagory.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WorkoutPage extends StatefulWidget {
  const WorkoutPage({super.key});

  @override
  State<WorkoutPage> createState() => _WorkoutPageState();
}

class _WorkoutPageState extends State<WorkoutPage> {
  String? _userName;

  @override
  void initState() {
    super.initState();
    _getUser();
  }

  Future<void> _getUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _userName = prefs.getString('user');
    });
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
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
                colors: [Colors.black, Colors.white],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter)),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(children: [
                Container(
                  width: 40,
                  height: 50,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  child: Icon(
                    Icons.person,
                    size: 30,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                _userName != null
                    ? Text(
                        '$_userName',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      )
                    : CircularProgressIndicator()
              ]),
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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    fullBody(context),
                    SizedBox(
                      width: 20,
                    ),
                    lowerBody(context),
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
                    color: Colors.white.withOpacity(0.9)),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
                child: Column(
                  children: [
                    BeginnerCatagory(),
                    Padding(
                      padding: EdgeInsets.all(14.0),
                      child: Row(
                        children: const [
                          Text(
                            'INTERMEDIATE',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    IntermediateCatagory(),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Row(
                        children: const [
                          Text(
                            'ADVANCED',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    AdvancedCategory()
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
