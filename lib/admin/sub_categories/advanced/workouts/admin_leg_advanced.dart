
import 'package:fitflex_homeworkout/constants/admin_workout_list_page.dart';
import 'package:fitflex_homeworkout/constants/constants.dart';
import 'package:flutter/material.dart';

class AdminLegAdvanced extends StatefulWidget {
  const AdminLegAdvanced({super.key});

  @override
  State<AdminLegAdvanced> createState() => _LegAdvancedState();
}

class _LegAdvancedState extends State<AdminLegAdvanced> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: AdminSilverAppBarWithChangingTextColor(
            text: 'LEG ADVANCED',
            assetImage: Images.legAdvanced,
            collection: 'Leg_Advanced',));
  }
}
