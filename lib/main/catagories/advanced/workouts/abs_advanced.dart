

import 'package:fitflex_homeworkout/constants/constants.dart';
import 'package:fitflex_homeworkout/constants/user_workout_list_page.dart';
import 'package:flutter/material.dart';

class AbsAdvanced extends StatefulWidget {
  const AbsAdvanced({super.key});

  @override
  State<AbsAdvanced> createState() => _AbsAdvancedState();
}

class _AbsAdvancedState extends State<AbsAdvanced> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  SilverAppBarWithChangingTextColor(
        text: 'ABS ADVANCED',
        assetImage: Images.absAdvanced,
        collection: 'Abs_Advanced',
      ),
    );
  }
}
