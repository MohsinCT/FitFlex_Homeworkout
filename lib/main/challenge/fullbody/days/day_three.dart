


import 'package:fitflex_homeworkout/main/challenge/listout_exercise_user.dart';
import 'package:flutter/material.dart';

class DayThree extends StatefulWidget {
  const DayThree({super.key});

  @override
  State<DayThree> createState() => _DayThreeState();
}

class _DayThreeState extends State<DayThree> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ListExercise(title: 'Day 3', collection: 'FullBody_DayThree'),
    );
  }
}