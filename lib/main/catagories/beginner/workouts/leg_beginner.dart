
import 'package:fitflex_homeworkout/constants/constants.dart';
import 'package:fitflex_homeworkout/constants/user_workout_list_page.dart';
import 'package:flutter/material.dart';

class LegBeginner extends StatefulWidget {
  const LegBeginner({super.key});

  @override
  State<LegBeginner> createState() => _LegBeginnerState();
}

class _LegBeginnerState extends State<LegBeginner> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SilverAppBarWithChangingTextColor(
          text: 'LEG BEGINNER',
          assetImage: Images.legBeginner,
          collection: 'Leg_Beginner',
          ),
    );
  }
}
