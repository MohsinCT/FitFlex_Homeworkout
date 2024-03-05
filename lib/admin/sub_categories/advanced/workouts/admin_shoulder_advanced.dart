
import 'package:fitflex_homeworkout/constants/admin_workout_list_page.dart';
import 'package:fitflex_homeworkout/constants/constants.dart';
import 'package:flutter/material.dart';

class AdminShoulderAdvanced extends StatefulWidget {
  const AdminShoulderAdvanced({super.key});

  @override
  State<AdminShoulderAdvanced> createState() => _AdminShoulderAdvancedState();
}

class _AdminShoulderAdvancedState extends State<AdminShoulderAdvanced> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: AdminSilverAppBarWithChangingTextColor(
            text: 'SHOULDER & BACK ADVANCED',
            assetImage: Images.shoulderAdvanced,
            collection: 'Shoulder_Advanced',));
  }
}
