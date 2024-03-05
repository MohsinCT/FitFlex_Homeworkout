

import 'package:fitflex_homeworkout/constants/constants.dart';
import 'package:fitflex_homeworkout/constants/user_workout_list_page.dart';
import 'package:flutter/material.dart';

class ChestAdvanced extends StatefulWidget {
  const ChestAdvanced({super.key});

  @override
  State<ChestAdvanced> createState() => _ChestAdvancedState();
}

class _ChestAdvancedState extends State<ChestAdvanced> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SilverAppBarWithChangingTextColor(
            text: 'CHEST ADVANCED',
            assetImage: Images.chestAdvanced,
            collection: 'Chest_Advanced',
            ));
  }
}
