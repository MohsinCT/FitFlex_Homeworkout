import 'package:fitflex_homeworkout/main/challenge/listout_exercise_admin.dart';
import 'package:flutter/material.dart';

class DayTwoAL extends StatefulWidget {
  const DayTwoAL({super.key});

  @override
  State<DayTwoAL> createState() => _DayTwoALState();
}

class _DayTwoALState extends State<DayTwoAL> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ListExerciseAdmin(title: 'Day 2', collection: 'LowerBody_DayTwo'),
    );
  }
}