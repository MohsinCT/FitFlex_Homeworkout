
import 'package:fitflex_homeworkout/constants/constants.dart';
import 'package:fitflex_homeworkout/constants/user_workout_list_page.dart';
import 'package:flutter/material.dart';

class ShoulderBeginner extends StatefulWidget {
  const ShoulderBeginner({super.key});

  @override
  State<ShoulderBeginner> createState() => _ShoulderBeginnerState();
}

class _ShoulderBeginnerState extends State<ShoulderBeginner> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SilverAppBarWithChangingTextColor(
          text: 'SHOULDER & BACK\nBEGINNER',
          assetImage: Images.shoulderBeginner,
          collection: 'Shoulder_Beginner',
          ),
    );
  }
}
