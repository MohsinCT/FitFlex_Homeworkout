import 'package:fitflex_homeworkout/main/challenge/listout_exercise_admin.dart';
import 'package:flutter/material.dart';

class DaySevenAL extends StatefulWidget {
  const DaySevenAL({super.key});

  @override
  State<DaySevenAL> createState() => _DaySevenALState();
}

class _DaySevenALState extends State<DaySevenAL> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ListExerciseAdmin(title: 'Day 7', collection: 'LowerBody_DaySeven'),
    );
  }
}