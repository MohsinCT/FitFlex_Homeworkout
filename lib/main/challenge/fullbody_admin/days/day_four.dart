
import 'package:fitflex_homeworkout/main/challenge/listout_exercise_admin.dart';
import 'package:flutter/material.dart';

class DayFourA extends StatefulWidget {
  const DayFourA({super.key});

  @override
  State<DayFourA> createState() => _DayFourAState();
}

class _DayFourAState extends State<DayFourA> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ListExerciseAdmin(title: 'Day 4', collection: 'FullBody_DayFour'),
    );
  }
}