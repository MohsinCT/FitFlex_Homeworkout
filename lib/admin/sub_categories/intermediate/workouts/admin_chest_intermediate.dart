
import 'package:fitflex_homeworkout/constants/admin_workout_list_page.dart';
import 'package:fitflex_homeworkout/constants/constants.dart';
import 'package:flutter/material.dart';

class AdminChestIntermediate extends StatefulWidget {
  const AdminChestIntermediate({super.key});

  @override
  State<AdminChestIntermediate> createState() => _AdminChestIntermediateState();
}

class _AdminChestIntermediateState extends State<AdminChestIntermediate> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: AdminSilverAppBarWithChangingTextColor(
            text: 'CHEST INTERMEDIATE',
            assetImage: Images.chestIntermediate,
            collection: 'Chest_Intermediate',));
  }
}
