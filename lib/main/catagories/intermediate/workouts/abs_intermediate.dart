
import 'package:fitflex_homeworkout/constants/constants.dart';
import 'package:fitflex_homeworkout/constants/user_workout_list_page.dart';
import 'package:flutter/material.dart';

class AbsIntermediate extends StatefulWidget {
  const AbsIntermediate({super.key});

  @override
  State<AbsIntermediate> createState() => _UserAbsBeginnerState();
}

class _UserAbsBeginnerState extends State<AbsIntermediate> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SilverAppBarWithChangingTextColor(
        text: 'ABS INTERMEDIATE',
        assetImage: Images.absIntermediate,
        collection: 'Abs_Intermediate',
      ),
    );
  }
}
