import 'package:fitflex_homeworkout/main/challenge/listout_exercise_admin.dart';
import 'package:flutter/material.dart';

class DayThreeAL extends StatefulWidget {
  const DayThreeAL({super.key});

  @override
  State<DayThreeAL> createState() => _DayThreeALState();
}

class _DayThreeALState extends State<DayThreeAL> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ListExerciseAdmin(title: 'Day 3', collection: 'LowerBody_DayThree'),
    );
  }
}