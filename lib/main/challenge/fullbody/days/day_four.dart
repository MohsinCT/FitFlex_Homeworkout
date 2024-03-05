
import 'package:fitflex_homeworkout/main/challenge/listout_exercise_user.dart';
import 'package:flutter/material.dart';

class DayFour extends StatefulWidget {
  const DayFour({super.key});

  @override
  State<DayFour> createState() => _DayFourState();
}

class _DayFourState extends State<DayFour> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ListExercise(title: 'Day 4', collection: 'FullBody_DayFour'),
    );
  }
}