
import 'package:fitflex_homeworkout/main/challenge/listout_exercise_admin.dart';
import 'package:flutter/material.dart';

class DayOneA extends StatefulWidget {
  const DayOneA({super.key});

  @override
  State<DayOneA> createState() => _DayOneAState();
}

class _DayOneAState extends State<DayOneA> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ListExerciseAdmin(
         title: 'Day 1', collection: 'FullBody_DayOne',
      ),
    );
  }
}