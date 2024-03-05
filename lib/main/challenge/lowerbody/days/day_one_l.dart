import 'package:fitflex_homeworkout/main/challenge/listout_exercise_user.dart';
import 'package:flutter/material.dart';

class DayOneL extends StatefulWidget {
  const DayOneL({super.key});

  @override
  State<DayOneL> createState() => _DayOneLState();
}

class _DayOneLState extends State<DayOneL> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ListExercise(title: 'Day 1', collection: 'LowerBody_DayOne'),
    );
  }
}
