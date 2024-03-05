
import 'package:fitflex_homeworkout/constants/constants.dart';
import 'package:fitflex_homeworkout/constants/user_workout_list_page.dart';
import 'package:flutter/material.dart';

class ShoulderIntermediate extends StatefulWidget {
  const ShoulderIntermediate({super.key});

  @override
  State<ShoulderIntermediate> createState() => _ShoulderIntermediateState();
}

class _ShoulderIntermediateState extends State<ShoulderIntermediate> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SilverAppBarWithChangingTextColor(
        text: 'SHOULDER INTERMEDIATE',
        assetImage: Images.shoulderIntermediate,
        collection: 'Shoulder_Intermediate',
      ),
    );
  }
}