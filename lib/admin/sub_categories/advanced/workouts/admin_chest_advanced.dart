
import 'package:fitflex_homeworkout/constants/admin_workout_list_page.dart';
import 'package:fitflex_homeworkout/constants/constants.dart';
import 'package:flutter/material.dart';

class AdminChestAdvanced extends StatefulWidget {
  const AdminChestAdvanced({super.key});

  @override
  State<AdminChestAdvanced> createState() => _AdminChestAdvancedState();
}

class _AdminChestAdvancedState extends State<AdminChestAdvanced> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: AdminSilverAppBarWithChangingTextColor(
            text: 'CHEST ADVANCED',
            assetImage: Images.chestAdvanced,
            collection: 'Chest_Advanced',));
  }
}
