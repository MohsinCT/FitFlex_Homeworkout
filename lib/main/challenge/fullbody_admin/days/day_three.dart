
import 'package:fitflex_homeworkout/main/challenge/listout_exercise_admin.dart';
import 'package:flutter/material.dart';

class DayThreeA extends StatefulWidget {
  const DayThreeA({super.key});

  @override
  State<DayThreeA> createState() => _DayThreeState();
}

class _DayThreeState extends State<DayThreeA> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ListExerciseAdmin(title: 'Day 3', collection: 'FullBody_DayThree'),
    );
  }
}