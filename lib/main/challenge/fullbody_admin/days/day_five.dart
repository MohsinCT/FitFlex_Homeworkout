
import 'package:fitflex_homeworkout/main/challenge/listout_exercise_admin.dart';
import 'package:flutter/material.dart';

class DayFiveA extends StatefulWidget {
  const DayFiveA({super.key});

  @override
  State<DayFiveA> createState() => _DayFiveAState();
}

class _DayFiveAState extends State<DayFiveA> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ListExerciseAdmin(title: 'Day 5', collection: 'FullBody_DayFive'),
    );
  }
}