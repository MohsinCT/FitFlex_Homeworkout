import 'package:fitflex_homeworkout/main/challenge/listout_exercise_user.dart';
import 'package:flutter/material.dart';

class DaySixL extends StatefulWidget {
  const DaySixL({super.key});

  @override
  State<DaySixL> createState() => _DaySixLState();
}

class _DaySixLState extends State<DaySixL> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ListExercise(title: 'Day 6', collection: 'LowerBody_DaySix'),
    );
  }
}