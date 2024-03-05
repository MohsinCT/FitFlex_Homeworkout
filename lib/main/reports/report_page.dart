// ignore_for_file: curly_braces_in_flow_control_structures

import 'dart:math';
import 'package:fitflex_homeworkout/constants/constants.dart';
import 'package:fitflex_homeworkout/constants/services/local_db_functions.dart';
import 'package:fitflex_homeworkout/constants/services/local_workout_model.dart';
import 'package:fitflex_homeworkout/main/reports/bmi_/bmi_calculation.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class Reports extends StatefulWidget {
  const Reports({Key? key}) : super(key: key);

  @override
  State<Reports> createState() => _ReportsState();
}

class _ReportsState extends State<Reports> {
  double _bmi = 0;
  int _height = 0;
  int _weight = 30;

  @override
  void initState() {
    super.initState();
    measurement();
  }

  void measurement() async {
    Box box = await Hive.openBox('measurementBox');
    int savedHeight = box.get('height') ?? 0;
    int savedWeight = box.get('weight') ?? 30;
    double savedBMI = box.get('bmi') ?? 0;
    setState(() {
      _height = savedHeight;
      _weight = savedWeight;
      _bmi = savedBMI;
    });
  }

  void saveMeasurement() async {
    Box box = await Hive.openBox('measurementBox');
    await box.put('height', _height);
    await box.put('weight', _weight);
    await box.put('bmi', _bmi);
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Reports'),
        elevation: 0,
      ),
      body: Container(
        width: mediaQuery.size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black, Colors.white],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        child: Column(
          children: [
            const Text(
              'BMI',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                  mediaQuery.size.width * 0.05,
                  mediaQuery.size.height * 0.01,
                  mediaQuery.size.width * 0.05,
                  0),
              child: Material(
                elevation: 4.0,
                borderRadius: BorderRadius.circular(15),
                child: Column(
                  children: [
                    HeightMeasure(
                        name: 'Height',
                        min: 0,
                        max: 250,
                        divisions: 300,
                        onChanged: (value) {
                          setState(() {
                            _height = value.toInt();
                          });
                          saveMeasurement();
                        },
                        value: _height.toDouble(),
                        nametwo: "$_height CM"),
                    WeightMeasure(
                        name: 'Weight',
                        min: 30,
                        max: 120,
                        divisions: 300,
                        value: _weight.toDouble(),
                        onChanged: (value) {
                          setState(() {
                            _weight = value.toInt();
                          });
                          saveMeasurement();
                        },
                        nametwo: "$_weight KG"),
                    Padding(
                      padding: EdgeInsets.fromLTRB(
                          mediaQuery.size.width * 0.05,
                          mediaQuery.size.height * 0.01,
                          mediaQuery.size.width * 0.05,
                          30),
                      child: bmi(_bmi),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _bmi = _weight / pow(_height / 100, 2);
                          });
                          saveMeasurement();
                        },
                        child: const Text(
                          'calculate',
                          style: TextStyle(color: Colors.black),
                        ))
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Recent Exercise's",
              style: TextStyle(
                  color: AppColors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            Expanded(
              child: ValueListenableBuilder(
                valueListenable: recentWorkout,
                builder: (BuildContext context, List<WorkoutModel> newList,
                    Widget? _) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: ListView.builder(
                      itemCount: newList.length,
                      itemBuilder: (context, index) {
                        final data = newList[index];
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Material(
                            elevation: 4.0,
                            borderRadius: BorderRadius.circular(15),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListTile(
                                title: Text(
                                  data.text,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                                leading: SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: Image.network(
                                    data.image,
                                    loadingBuilder: (BuildContext context,
                                        Widget child,
                                        ImageChunkEvent? loadingProgress) {
                                      if (loadingProgress == null)
                                        return child;
                                      else
                                        return Container(
                                          color: AppColors.grey,
                                          width: 50,
                                          height: 50,
                                        );
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
