import 'package:fitflex_homeworkout/main/challenge/listout_exercise_admin.dart';
import 'package:flutter/material.dart';

class DayFiveAL extends StatefulWidget {
  const DayFiveAL({super.key});

  @override
  State<DayFiveAL> createState() => _DayFiveALState();
}

class _DayFiveALState extends State<DayFiveAL> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ListExerciseAdmin(title: 'Day 5', collection: 'LowerBody_DayFive'),
    );
  }
}