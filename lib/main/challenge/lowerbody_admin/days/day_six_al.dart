import 'package:fitflex_homeworkout/main/challenge/listout_exercise_admin.dart';
import 'package:flutter/material.dart';

class DaySixAL extends StatefulWidget {
  const DaySixAL({super.key});

  @override
  State<DaySixAL> createState() => _DaySixALState();
}

class _DaySixALState extends State<DaySixAL> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ListExerciseAdmin(title: 'Day 6', collection: 'LowerBody_DaySix'),
    );
  }
}