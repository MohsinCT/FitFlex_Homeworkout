
import 'package:fitflex_homeworkout/main/challenge/listout_exercise_admin.dart';
import 'package:flutter/material.dart';

class DayTwoA extends StatefulWidget {
  const DayTwoA({super.key});

  @override
  State<DayTwoA> createState() => _DayTwoAState();
}

class _DayTwoAState extends State<DayTwoA> {
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
        body: ListExerciseAdmin(title: 'Day 2', collection: 'FullBody_DayTwo',),
    );
  }
}