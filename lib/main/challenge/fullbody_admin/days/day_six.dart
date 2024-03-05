
import 'package:fitflex_homeworkout/main/challenge/listout_exercise_admin.dart';
import 'package:flutter/material.dart';

class DaySixA extends StatefulWidget {
  const DaySixA({super.key});

  @override
  State<DaySixA> createState() => _DaySixAState();
}

class _DaySixAState extends State<DaySixA> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
    body:  ListExerciseAdmin(title: 'Day 6', collection: 'FullBody_DaySix',)
    );
  }
}