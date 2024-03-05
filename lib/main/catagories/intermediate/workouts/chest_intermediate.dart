
import 'package:fitflex_homeworkout/constants/constants.dart';
import 'package:fitflex_homeworkout/constants/user_workout_list_page.dart';
import 'package:flutter/material.dart';

class ChestIntermediate extends StatefulWidget {
  const ChestIntermediate({super.key});

  @override
  State<ChestIntermediate> createState() => _ChestIntermediateState();
}

class _ChestIntermediateState extends State<ChestIntermediate> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SilverAppBarWithChangingTextColor(
        text: 'CHEST INTERMEDIATE',
        assetImage: Images.chestIntermediate,
        collection: 'Chest_Intermediate',
      ),
    );
  }
}
