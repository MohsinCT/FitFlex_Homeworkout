

import 'package:fitflex_homeworkout/main/challenge/listout_exercise_user.dart';
import 'package:flutter/material.dart';

class DayTwo extends StatefulWidget {
  const DayTwo({super.key});

  @override
  State<DayTwo> createState() => _DayTwoState();
}

class _DayTwoState extends State<DayTwo> {
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
        body: ListExercise(title: 'Day 2', collection: 'FullBody_DayTwo',),
    );
  }
}