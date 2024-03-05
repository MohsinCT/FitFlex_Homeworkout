
import 'package:fitflex_homeworkout/constants/admin_workout_list_page.dart';
import 'package:fitflex_homeworkout/constants/constants.dart';
import 'package:flutter/material.dart';

class AdminArmIntermediate extends StatefulWidget {
  const AdminArmIntermediate({super.key});

  @override
  State<AdminArmIntermediate> createState() => _AdminArmIntermediateState();
}
class _AdminArmIntermediateState extends State<AdminArmIntermediate> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: AdminSilverAppBarWithChangingTextColor(
            text: 'ARM INTERMEDIATE',
            assetImage: Images.armIntermediate,
            collection: 'Arm_Intermediate',));
  }
}
