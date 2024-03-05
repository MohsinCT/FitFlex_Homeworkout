
import 'package:fitflex_homeworkout/constants/admin_workout_list_page.dart';
import 'package:fitflex_homeworkout/constants/constants.dart';
import 'package:flutter/material.dart';

class AdminArmAdvanced extends StatefulWidget {
  const AdminArmAdvanced({super.key});

  @override
  State<AdminArmAdvanced> createState() => _ArmAdvancedState();
}

class _ArmAdvancedState extends State<AdminArmAdvanced> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: AdminSilverAppBarWithChangingTextColor(
            text: 'ARM ADVANCED',
            assetImage: Images.armAdvanced,
            collection: 'Arm_Advanced',));
  }
}
