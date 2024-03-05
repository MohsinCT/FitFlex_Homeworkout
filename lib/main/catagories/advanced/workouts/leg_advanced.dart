

import 'package:fitflex_homeworkout/constants/constants.dart';
import 'package:fitflex_homeworkout/constants/user_workout_list_page.dart';
import 'package:flutter/material.dart';

class LegAdvanced extends StatefulWidget {
  const LegAdvanced({super.key});

  @override
  State<LegAdvanced> createState() => _LegAdvancedState();
}

class _LegAdvancedState extends State<LegAdvanced> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SilverAppBarWithChangingTextColor(
            text: 'LEG ADVANCED',
            assetImage: Images.legAdvanced,
            collection: 'Leg_Advanced',
            ));
  }
}
