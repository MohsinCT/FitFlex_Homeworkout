import 'package:fitflex_homeworkout/main/challenge/listout_exercise_user.dart';
import 'package:flutter/material.dart';

class DayFourL extends StatefulWidget {
  const DayFourL({super.key});

  @override
  State<DayFourL> createState() => _DayFourLState();
}

class _DayFourLState extends State<DayFourL> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ListExercise(title: 'Day 4', collection: 'LowerBody_DayFour'),
    );
  }
}