
import 'package:fitflex_homeworkout/constants/admin_workout_list_page.dart';
import 'package:fitflex_homeworkout/constants/constants.dart';
import 'package:flutter/material.dart';

class AdminLegBeginner extends StatefulWidget {
  const AdminLegBeginner({super.key});

  @override
  State<AdminLegBeginner> createState() => _AdminLegBeginnerState();
}

class _AdminLegBeginnerState extends State<AdminLegBeginner> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: AdminSilverAppBarWithChangingTextColor(
            text: 'LEG BEGINNER',
            assetImage: Images.legBeginner,
            collection: 'Leg_Beginner',));
  }
}
