
import 'package:fitflex_homeworkout/constants/constants.dart';
import 'package:fitflex_homeworkout/constants/user_workout_list_page.dart';
import 'package:flutter/material.dart';

class LegIntermediate extends StatefulWidget {
  const LegIntermediate({super.key});

  @override
  State<LegIntermediate> createState() => _LegIntermediateState();
}

class _LegIntermediateState extends State<LegIntermediate> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SilverAppBarWithChangingTextColor(
        text: 'LEG INTERMEDIATE',
        assetImage: Images.legIntermediate,
        collection: 'Leg_Intermediate',
      ),
    );
  }
}