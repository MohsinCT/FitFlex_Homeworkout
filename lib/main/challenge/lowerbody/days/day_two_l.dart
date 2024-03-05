import 'package:fitflex_homeworkout/main/challenge/listout_exercise_user.dart';
import 'package:flutter/material.dart';

class DayTwoL extends StatefulWidget {
  const DayTwoL({super.key});

  @override
  State<DayTwoL> createState() => _DayTwoLState();
}

class _DayTwoLState extends State<DayTwoL> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ListExercise(title: 'Day 2', collection: 'LowerBody_DayTwo'),
    );
  }
}