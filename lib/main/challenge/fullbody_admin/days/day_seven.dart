
import 'package:fitflex_homeworkout/main/challenge/listout_exercise_admin.dart';
import 'package:flutter/material.dart';

class DaySevenA extends StatefulWidget {
  const DaySevenA({super.key});

  @override
  State<DaySevenA> createState() => _DaySevenAState();
}

class _DaySevenAState extends State<DaySevenA> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ListExerciseAdmin(title: 'Day 7', collection: 'FullBody_DaySeven'),
    );
  }
}