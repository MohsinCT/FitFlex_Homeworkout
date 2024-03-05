

import 'package:fitflex_homeworkout/main/challenge/listout_exercise_user.dart';
import 'package:flutter/material.dart';

class DaySeven extends StatefulWidget {
  const DaySeven({super.key});

  @override
  State<DaySeven> createState() => _DaySevenState();
}

class _DaySevenState extends State<DaySeven> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ListExercise(title: 'Day 7', collection: 'FullBody_DaySeven'),
    );
  }
}