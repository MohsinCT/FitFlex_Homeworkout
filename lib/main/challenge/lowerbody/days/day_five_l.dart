import 'package:fitflex_homeworkout/main/challenge/listout_exercise_user.dart';
import 'package:flutter/material.dart';

class DayFiveL extends StatefulWidget {
  const DayFiveL({super.key});

  @override
  State<DayFiveL> createState() => _DayFiveLState();
}

class _DayFiveLState extends State<DayFiveL> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ListExercise(title: 'Day 5', collection: 'LowerBody_DayFive'),
    );
  }
}