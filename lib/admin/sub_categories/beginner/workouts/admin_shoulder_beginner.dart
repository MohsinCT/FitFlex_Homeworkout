
import 'package:fitflex_homeworkout/constants/admin_workout_list_page.dart';
import 'package:fitflex_homeworkout/constants/constants.dart';
import 'package:flutter/material.dart';

class AdminShoulderBeginner extends StatefulWidget {
  const AdminShoulderBeginner({super.key});

  @override
  State<AdminShoulderBeginner> createState() => _AdminShoulderBeginnerState();
}

class _AdminShoulderBeginnerState extends State<AdminShoulderBeginner> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: AdminSilverAppBarWithChangingTextColor(
            text: 'SHOULDER & BACK\nBEGINNER',
            assetImage: Images.shoulderBeginner,
            collection: 'Shoulder_Beginner',));
  }
}
