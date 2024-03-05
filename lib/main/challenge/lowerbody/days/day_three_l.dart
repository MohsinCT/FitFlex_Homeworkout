import 'package:fitflex_homeworkout/main/challenge/listout_exercise_user.dart';
import 'package:flutter/material.dart';

class DayThreeL extends StatefulWidget {
  const DayThreeL({super.key});

  @override
  State<DayThreeL> createState() => _DayThreeLState();
}

class _DayThreeLState extends State<DayThreeL> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ListExercise(title: 'Day 3', collection: 'LowerBody_DayThree'),
    );
  }
}