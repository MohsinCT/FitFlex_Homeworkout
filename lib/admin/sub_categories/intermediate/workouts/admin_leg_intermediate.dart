
import 'package:fitflex_homeworkout/constants/admin_workout_list_page.dart';
import 'package:fitflex_homeworkout/constants/constants.dart';
import 'package:flutter/material.dart';

class AdminLegIntermediate extends StatefulWidget {
  const AdminLegIntermediate({super.key});

  @override
  State<AdminLegIntermediate> createState() => _AdminLegIntermediateState();
}

class _AdminLegIntermediateState extends State<AdminLegIntermediate> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: AdminSilverAppBarWithChangingTextColor(
            text: 'LEG INTERMEDIATE',
            assetImage: Images.legIntermediate,
            collection: 'Leg_Intermediate',));
  }
}
