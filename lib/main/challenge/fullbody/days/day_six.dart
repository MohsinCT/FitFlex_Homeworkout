

import 'package:fitflex_homeworkout/main/challenge/listout_exercise_user.dart';
import 'package:flutter/material.dart';

class DaySix extends StatefulWidget {
  const DaySix({super.key});

  @override
  State<DaySix> createState() => _DaySixState();
}

class _DaySixState extends State<DaySix> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
    body:  ListExercise(title: 'Day 6', collection: 'FullBody_DaySix',)
    );
  }
}