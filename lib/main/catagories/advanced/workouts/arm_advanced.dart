

import 'package:fitflex_homeworkout/constants/constants.dart';
import 'package:fitflex_homeworkout/constants/user_workout_list_page.dart';
import 'package:flutter/material.dart';

class ArmAdvanced extends StatefulWidget {
  const ArmAdvanced({super.key});

  @override
  State<ArmAdvanced> createState() => _ArmAdvancedState();
}

class _ArmAdvancedState extends State<ArmAdvanced> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SilverAppBarWithChangingTextColor(
            text: 'ARM ADVANCED',
            assetImage: Images.armAdvanced,
            collection: 'Arm_Advanced',
            ));
  }
}
