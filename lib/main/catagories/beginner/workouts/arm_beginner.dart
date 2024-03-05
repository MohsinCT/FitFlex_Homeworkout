
import 'package:fitflex_homeworkout/constants/constants.dart';
import 'package:fitflex_homeworkout/constants/user_workout_list_page.dart';
import 'package:flutter/material.dart';

class ArmBeginner extends StatefulWidget {
  const ArmBeginner({super.key});

  @override
  State<ArmBeginner> createState() => _ArmBeginnerState();
}

class _ArmBeginnerState extends State<ArmBeginner> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SilverAppBarWithChangingTextColor(
          text: 'ARM BEGINNER',
          assetImage: Images.armBeginner,
           collection: 'Arm_Beginner',
          
          ),
    );
  }
}
