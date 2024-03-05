
import 'package:fitflex_homeworkout/constants/admin_workout_list_page.dart';
import 'package:fitflex_homeworkout/constants/constants.dart';
import 'package:flutter/material.dart';

class AdminArmBeginner extends StatefulWidget {
  const AdminArmBeginner({super.key});

  @override
  State<AdminArmBeginner> createState() => _AdminArmBeginnerState();
}

class _AdminArmBeginnerState extends State<AdminArmBeginner> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: AdminSilverAppBarWithChangingTextColor(
            text: 'ARM BEGINNER',
            assetImage: Images.armBeginner,
            collection: 'Arm_Beginner',));
  }
}
