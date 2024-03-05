import 'package:fitflex_homeworkout/main/challenge/listout_exercise_admin.dart';
import 'package:flutter/material.dart';

class DayFourAL extends StatelessWidget {
  const DayFourAL({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ListExerciseAdmin(title: 'Day 4', collection: 'LowerBody_DayFour'),
    );
  }
}