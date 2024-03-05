

import 'package:fitflex_homeworkout/constants/admin_workout_list_page.dart';
import 'package:fitflex_homeworkout/constants/constants.dart';
import 'package:flutter/material.dart';

class AdminChestBeginner extends StatefulWidget {
  const AdminChestBeginner({super.key});

  @override
  State<AdminChestBeginner> createState() => _AdminChestBeginnerState();
}

class _AdminChestBeginnerState extends State<AdminChestBeginner> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: AdminSilverAppBarWithChangingTextColor(
      text: 'CHEST BEGINNER',
      assetImage: Images.chestBeginner,
      collection: 'Chest_Beginner',
    ));
  }
}
