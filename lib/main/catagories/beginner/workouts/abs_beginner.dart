
import 'package:fitflex_homeworkout/constants/constants.dart';
import 'package:fitflex_homeworkout/constants/user_workout_list_page.dart';
import 'package:flutter/material.dart';

class AbsBeginner extends StatefulWidget {
  const AbsBeginner({super.key});

  @override
  State<AbsBeginner> createState() => _UserAbsBeginnerState();
}

class _UserAbsBeginnerState extends State<AbsBeginner> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SilverAppBarWithChangingTextColor(
        text: 'ABS BEGINNER',
        assetImage: Images.absBeginner,
        collection:'Abs_Beginner',
      
      ),
    );
  }
}
