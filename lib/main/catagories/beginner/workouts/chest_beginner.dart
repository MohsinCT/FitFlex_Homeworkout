
import 'package:fitflex_homeworkout/constants/constants.dart';
import 'package:fitflex_homeworkout/constants/user_workout_list_page.dart';
import 'package:flutter/material.dart';

class ChestBeginner extends StatefulWidget {
  const ChestBeginner({super.key});

  @override
  State<ChestBeginner> createState() => _ChestBeginnerState();
}

class _ChestBeginnerState extends State<ChestBeginner> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SilverAppBarWithChangingTextColor(
        text: 'CHEST BEGINNER',
        assetImage: Images.chestBeginner,
        collection: 'Chest_Beginner'
        
      ),
    );
  }
}
