

import 'package:fitflex_homeworkout/main/challenge/listout_exercise_user.dart';
import 'package:flutter/material.dart';

class DayOne extends StatefulWidget {
  const DayOne({super.key});

  @override
  State<DayOne> createState() => _DayOneState();
}

class _DayOneState extends State<DayOne> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ListExercise(
         title: 'Day 1', collection: 'FullBody_DayOne',
      ),
    );
  }
}