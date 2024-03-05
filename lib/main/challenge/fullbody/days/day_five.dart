

import 'package:fitflex_homeworkout/main/challenge/listout_exercise_user.dart';
import 'package:flutter/material.dart';

class DayFive extends StatefulWidget {
  const DayFive({super.key});

  @override
  State<DayFive> createState() => _DayFiveState();
}

class _DayFiveState extends State<DayFive> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ListExercise(title: 'Day 5', collection: 'FullBody_DayFive'),
    );
  }
}