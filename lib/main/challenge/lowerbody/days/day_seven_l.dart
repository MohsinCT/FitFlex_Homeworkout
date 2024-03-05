import 'package:fitflex_homeworkout/main/challenge/listout_exercise_user.dart';
import 'package:flutter/material.dart';

class DaySevenL extends StatefulWidget {
  const DaySevenL({super.key});

  @override
  State<DaySevenL> createState() => _DaySevenLState();
}

class _DaySevenLState extends State<DaySevenL> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ListExercise(title: 'Day 7', collection: 'LowerBody_DaySeven'),
    );
  }
}