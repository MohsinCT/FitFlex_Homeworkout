
import 'package:fitflex_homeworkout/constants/constants.dart';
import 'package:fitflex_homeworkout/constants/user_workout_list_page.dart';
import 'package:flutter/material.dart';

class ArmIntermediate extends StatefulWidget {
  const ArmIntermediate({super.key});

  @override
  State<ArmIntermediate> createState() => _ArmIntermediateState();
}

class _ArmIntermediateState extends State<ArmIntermediate> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SilverAppBarWithChangingTextColor(
        text: 'ARM INTERMEDIATE',
        assetImage: Images.armIntermediate,
        collection: 'Arm_Intermediate',
      ),
    );
  }
}