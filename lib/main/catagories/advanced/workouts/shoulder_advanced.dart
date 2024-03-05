

import 'package:fitflex_homeworkout/constants/constants.dart';
import 'package:fitflex_homeworkout/constants/user_workout_list_page.dart';
import 'package:flutter/material.dart';

class ShoulderAdvanced extends StatefulWidget {
  const ShoulderAdvanced({super.key});

  @override
  State<ShoulderAdvanced> createState() => _ShoulderAdvancedState();
}

class _ShoulderAdvancedState extends State<ShoulderAdvanced> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SilverAppBarWithChangingTextColor(
            text: 'SHOULDER & BACK ADVANCED',
            assetImage: Images.shoulderAdvanced,
            collection: 'Shoulder_Advanced',
            ));
  }
}
