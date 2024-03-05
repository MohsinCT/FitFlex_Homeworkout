
import 'package:fitflex_homeworkout/constants/admin_workout_list_page.dart';
import 'package:fitflex_homeworkout/constants/constants.dart';
import 'package:flutter/material.dart';

class AdminShoulderIntermediate extends StatefulWidget {
  const AdminShoulderIntermediate({super.key});

  @override
  State<AdminShoulderIntermediate> createState() => _AdminShoulderIntermediateState();
}

class _AdminShoulderIntermediateState extends State<AdminShoulderIntermediate> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: AdminSilverAppBarWithChangingTextColor(
            text: 'SHOULDER & BACK\nINTERMEDIATE',
            assetImage: Images.shoulderIntermediate,
            collection: 'Shoulder_Intermediate',));
  }
}
