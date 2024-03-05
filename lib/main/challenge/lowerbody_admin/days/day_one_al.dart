import 'package:fitflex_homeworkout/main/challenge/listout_exercise_admin.dart';
import 'package:flutter/material.dart';

class DayOneAL extends StatefulWidget {
  const DayOneAL({super.key});

  @override
  State<DayOneAL> createState() => _DayOneALState();
}

class _DayOneALState extends State<DayOneAL> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ListExerciseAdmin(title: 'Day 1', collection: 'LowerBody_DayOne'),
    );
  }
}
